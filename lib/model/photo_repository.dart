// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'photo.dart';

class PhotosRepository {
  static List<Photo> loadPhotos(Category category) {
    const allPhotos = <Photo>[
      Photo(
        category: Category.friends,
        id: 0,
        isFeatured: true,
        name: 'Linda and Adhiya',
        location: 'Parangtritis',
      ),
      Photo(
        category: Category.friends,
        id: 1,
        isFeatured: true,
        name: 'Linda and friends',
        location: 'Yogya',
      ),
      Photo(
        category: Category.friends,
        id: 2,
        isFeatured: true,
        name: 'Linda with mirror',
        location: 'Yogya',
      ),
      Photo(
        category: Category.beach,
        id: 3,
        isFeatured: true,
        name: 'Pantai 1',
        location: 'Pulo Manuk',
      ),
      Photo(
        category: Category.beach,
        id: 4,
        isFeatured: true,
        name: 'Pantai 2',
        location: 'Parangtritis',
      ),
      Photo(
        category: Category.beach,
        id: 5,
        isFeatured: true,
        name: 'Pantai 3',
        location: 'Karang Taraje',
      ),
      Photo(
        category: Category.about,
        id: 6,
        isFeatured: true,
        name: 'NAMA',
        location: 'Linda Santika',
      ),
      Photo(
        category: Category.about,
        id: 7,
        isFeatured: true,
        name: 'NIM',
        location: '221511052',
      ),
      Photo(
        category: Category.about,
        id: 8,
        isFeatured: true,
        name: 'E-mail',
        location: 'linda.santika.tif22@polban.ac.id',
      ),
    ];
    if (category == Category.all) {
      return allPhotos;
    } else {
      return allPhotos.where((Photo p) {
        return p.category == category;
      }).toList();
    }
  }
}
