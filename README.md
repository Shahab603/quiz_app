The goal now is to generate

these answer buttons here dynamically

based on the actual amount

of answers that we have for the current question.

And by the way, later we will, of course,

also make sure that the question changes

once it has been answered.

But for the moment we just wanna output

these answer buttons dynamically.

And this can be done by going

to our children list here in this column.

And then in there,

we can access currentQuestion.answers,

which is this list of strings.

And now we must convert these strings to widgets,

so to say, to widgets that then use these strings.

And such a conversion can be done

by using Dart's built-in map method.

Now, for that, it's important to understand

that answers is a list.

It's a list of strings.

And lists, no matter which kind of values they contain,

but lists in general in Dart

have a broad variety of built-in methods,

built-in functions that can be called on them.

And these functions simply interact

with the list in different ways.

For example, add would allow you to add a new item

to that list.

Something we'll also use later in the course.

Map allows you to convert, to transform, you could say,

the values in a list to other values.

For that, map takes a function as a value,

so that's another example for a place

where a function is used as a value.

And this function, which you pass to map,

will be executed automatically by Dart for every list item.

So Dart automatically goes through the entire list,

and executes this function on every list item.

Now, Dart will then also automatically pass the list item

for which it is currently executing this function here

as a argument to this function.

So here you get the list item

for which this function is currently being executed,

and inside of the function body,

you then can return the transformed item.

So the new value you want to have in the list

instead of that old item.

And of course, that new value which you return here,

can and typically will be based on this item

on which the function was called and which you receive

as an argument here, because that then allows you

to basically replace all the items in a list

with new items that are based on the old items.

And here I wanna return my AnswerButton widget,

so that I convert this list of answers,

this list of strings to a list of answer buttons.

And since widgets are in the end just objects,

which are totally normal values in Dart,

it's absolutely fine to convert a list of strings

to a list of widgets,

even though it might sound strange at first.

Now, it's important to understand

that this conversion does not change the original list.

So the list of answers that is stored in these

quiz question objects does not change when calling map here.

Instead, map in the end yields a new list,

a brand new list object in memory,

but both lists coexist in memory.

That's really important to understand.

Map does not change the original list,

instead it returns a new list full of new objects.

In this case, full of new answer buttons.

And on these answer buttons,

we can, of course, then set answerText to item,

because item here will be of type string

since our answers are strings in that list of strings.

So item is our string.

We could also name it answer instead of item,

because that name is up to you to make it clearer

that will get the individual answers here.

Since this function is executed

for all the answers automatically by Dart,

and hence we can set this answer string

as a value for the answer text, which wants a string.

And for onTap, we can for the moment

just pass an empty anonymous function.

But now you see I'm getting an error here,

and in the end I'm getting an error here that this element,

which is of type, iterable, whatever that may be,

can't be assigned to the list type widget.

The problem which we in the end have here is

that I now got a list of answer buttons,

or something like a list.

It's actually an iterable as it turns out.

But you can treat this almost like a list here.

But Flutter isn't happy with getting a list,

or an iterable here.

And that would also be the case

if I manually create a list here,

a list of answer buttons for example.

Here, I also would be getting an error

that this type of data is not wanted here.

And it's not wanted here because children,

this argument which we set on the column here,

wants a list of widget.

Now, here inside of that list that we are creating,

we are creating another list though, a nested list.

So now children is a list of widgets,

like text and size box,

but also a list that contains other lists as values.

And that's simply not what children wants.

It wants just widgets as values inside this list,

not other lists.

So converting our answers to answer buttons is not enough

if they're still in a list thereafter.

Instead, what we have to do here is something

called spreading.

We have to spread this list or this iterable,

which is generated by map,

into a couple of individual values.

And that's done by adding three dots in front of this,

which might look strange but which

is another built-in operator,

a built-in keyword you could say,

which is available in Dart.

And these three dots will simply take all the values

in a list or an iterable and pull them out of the list,

pull them out of the iterable,

and instead place them as comma-separated values

in this place in code here.

So now these answer buttons in this list

of answer buttons here are pulled out,

and added as individual comma-separated answer buttons

to this list here, which is set as a value for children.

That is what's happening here with this code.

And with that we can and should now get rid

of these extra answer buttons here,

and just use these answer buttons here,

which are created based on the answers list,

which is a list of strings,

which is then converted with help of map

from a list of strings to a list of answer buttons.

And then these answer buttons are pulled out,

and added as individual elements to this children list.

So that overall here we get a list of widgets.

And with that, if you save everything,

you see that again here,

we have all these answers like before,

but now they're dynamically generated

instead of being hard-coded.

And this is a super important pattern,

because being able to dynamically

generate an output list content is crucial

since you will see that most apps deal

with some kind of list data in some parts.