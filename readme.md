## UILabel letter touch


Detect letter pressed on UILabel, subclassing UILabel class.


![A Screenshot](https://raw.github.com/elpsk/UILabel-letter-touch/master/ss.png "A")


```
- (void)didLetterFound:(char)letter
{
  _LetterFound.text = [NSString stringWithFormat:@"%c", letter];
}
```


Full article here: http://www.albertopasca.it/whiletrue/2013/09/objective-c-recognize-letter-pressed-on-uilabel/


