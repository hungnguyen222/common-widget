/**
 * @labelField title
 */
component  {
	property name="title";
	property name="image" relationship="many-to-one" relatedTo="asset";
	property name="teaser";
	property name="link";
}