class HomeRemoteQuery {
  static const String dayAwayPromotedPackageList = r'''
		query DayAwayPromotedPackageList($filter: DayAwayPromotedPackageFilter) {
			response: dayAwayPromotedPackageList(filter: $filter) {
				count
				totalPage
				data {
					... on Package {
						id
						code
						name
						isPromoted
						img {
							url
						}
						lowestPrice
						hotel {
							id
							code
							name
							country {
								id
								code
								name
							}
						}
					}
				}
			}
		}
	''';
}
