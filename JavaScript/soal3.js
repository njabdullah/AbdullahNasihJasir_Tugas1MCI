function dim(arr)
{
  if (arr instanceof Array)
  {
    return [arr.length].concat(dim(arr[0]));
  }
  else
  {
    return [];
  }
}

function argwhere(arr)
{
  let indeks = [];
  let size = dim(arr);
  for (let i = 0; i < size[0]; i++)
  {
    for (let j = 0; j < size[1]; j++)
    {
      for (let k = 0; k < size[2]; k++)
      {
        if (arr[i][j][k] !== 0)
        {
          indeks.push([i, j, k]);
        }
      }
    }
  }
  return indeks;
}
  
const awal =
[
  [
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 0],
  ],
[
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 0],
  ],
[
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
  ],
];
  
const HasilAkhir = argwhere(awal);
console.log(HasilAkhir);
