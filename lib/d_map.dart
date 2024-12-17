class Coordinates {
  final List<List<int>> numberFormatCoordinates = [
    [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
    // Upper vertical line
    [3, 2], [4, 2], [5, 2],
    [3, 6], [4, 6], [5, 6],
    // Middle horizontal bar
    [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
    // Lower vertical line
    [7, 2], [8, 2], [9, 2],
    [7, 6], [8, 6], [9, 6],
    // Bottom horizontal bar
    [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
  ];

  // Number coordinates for all digits
  final Map<int, List<List<int>>> numbersCoordinates = {
    0: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 2], [4, 2], [5, 2],
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 2], [6, 6],
      // Lower vertical line
      [7, 2], [8, 2], [9, 2],
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
    1: [
      [2, 6],
      // Upper vertical line
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 6],
      // Lower vertical line
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 6]
    ],
    2: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 2], [8, 2], [9, 2],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
    3: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
    4: [
      [2, 2], [2, 6],
      // Upper vertical line
      [3, 2], [4, 2], [5, 2],
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 6]
    ],
    5: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 2], [4, 2], [5, 2],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
    6: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 2], [4, 2], [5, 2],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 2], [8, 2], [9, 2],
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
    7: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 6],
      // Lower vertical line
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 6]
    ],
    8: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 2], [4, 2], [5, 2],
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 2], [8, 2], [9, 2],
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
    9: [
      [2, 2], [2, 3], [2, 4], [2, 5], [2, 6],
      // Upper vertical line
      [3, 2], [4, 2], [5, 2],
      [3, 6], [4, 6], [5, 6],
      // Middle horizontal bar
      [6, 2], [6, 3], [6, 4], [6, 5], [6, 6],
      // Lower vertical line
      [7, 6], [8, 6], [9, 6],
      // Bottom horizontal bar
      [10, 2], [10, 3], [10, 4], [10, 5], [10, 6]
    ],
  };
}
