# UIStoryboard made safer with Protocol Extensions and Generics
## Because String literals are so yucky.

### Medium post
[UIStoryboard: Safer with Enums, Protocol Extensions and Generics](https://medium.com/p/7aad3883b44d/)

### tl;dr
Turn this:

````
let name = "News"

let storyboard = UIStoryboard(name: name, bundle: nil)

let identifier = "ArticleViewController"

let viewController = storyboard.instantiateViewControllerWithIdentifier(identifier) as! ArticleViewController

viewController.printHeadline()
````

Into this:

````
let storyboard = UIStoryboard.storyboard(.News)

let viewController = storyboard.instantiateViewController(ArticleViewController.self)

viewController.printHeadline()
````


