
import pandas as pd
from sklearn import datasets
from sklearn import linear_model

b = datasets.load_boston()
# details on the detaset
# print(b.DESCR)

# X is attribute columns,  y is the target prediction median value
X = pd.DataFrame(b.data, columns=b.feature_names)
y = pd.DataFrame(b.target, columns=["MEDV"])

lm = linear_model.LinearRegression()
model = lm.fit(X,y)
predictions = lm.predict(X)

print('model coef and intercept\n')
print(lm.intercept_, lm.coef_)

print('\n just the first 5 predictions')
print(predictions)[0:5]

print('R squared: ')
print(lm.score(X,y) )


