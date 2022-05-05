const sumOfNegative = (numbers) => {
  let negelements = 0;
  numbers.forEach((element) => {
    if (element < 0) {
      negelements += element;
    }
  });
  return negelements;
};

module.exports = sumOfNegative; // Do not remove.
