## UILabel letter touch


Detect letter pressed on UILabel, subclassing UILabel class.


```
- (void)didLetterFound:(char)letter
{
  _LetterFound.text = [NSString stringWithFormat:@"%c", letter];
}
```


Full article here: http://www.albertopasca.it/whiletrue/2013/09/objective-c-recognize-letter-pressed-on-uilabel/


