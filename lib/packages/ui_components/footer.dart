import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';

class DFooter extends StatelessWidget {
  const DFooter({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 14.0, color: Colors.black87);
    const emailStyle = TextStyle(
      fontSize: 14.0,
      color: Colors.blue,
      decoration: TextDecoration.underline,
    );
    final sWidth = MediaQuery.of(context).size.width;
    final hPadding = (sWidth >= kMaxWidth) ? (sWidth - kMaxWidth) / 2.0 : 8.0;

    return Column(
      children: [
        SizedBox(height: kEMargin * 2),
        Container(
          padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: 32),
          width: double.infinity,
          height: kFooterHeight, // Footer의 높이 지정
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: dark ? Colors.black87 : Colors.white,
            // color: dark ? Colors.black87 : Color(0xFFF6F6F6),
            // border: dark
            //     ? null
            //     : Border(top: BorderSide(color: Colors.grey[300]!, width: 2.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 상단 링크 및 저작권
              SizedBox(height: kMargin),
              Text(
                '개인정보보호정책 | 이용약관 | 관리자 연락',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: dark ? Colors.white : Colors.black87,
                ),
              ),
              SizedBox(height: kPadding / 4),
              Text(
                '©2025 Hanspeak, Mint Company Inc. all rights reserved.',
                style: dark
                    ? textStyle.copyWith(color: Colors.white)
                    : textStyle,
              ),
              const SizedBox(height: 24),
              const Divider(thickness: 1.0),
              const SizedBox(height: 24),
              // 하단 정보
              LayoutBuilder(
                builder: (context, constraints) {
                  final isMobile = constraints.maxWidth < 800;
                  return isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _buildFooterContent(
                            // sWidth - hPadding * 2.0,
                            constraints.maxWidth * 2.0,
                            dark
                                ? textStyle.copyWith(color: Colors.white)
                                : textStyle,
                            dark
                                ? emailStyle.copyWith(color: Colors.white)
                                : emailStyle,
                          ),
                        )
                      : Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: _buildFooterContent(
                            // sWidth - hPadding * 2.0,
                            constraints.maxWidth,
                            dark
                                ? textStyle.copyWith(color: Colors.white)
                                : textStyle,
                            dark
                                ? emailStyle.copyWith(color: Colors.white)
                                : emailStyle,
                          ),
                        );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _buildFooterContent(
    double totalWidth,
    TextStyle style,
    TextStyle emailStyle,
  ) {
    return [
      // 왼쪽: 사람과소통
      SizedBox(
        width: totalWidth / 2.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/imgs/logo/logo_hanspeak.png', // 로고 파일 위치 (예: assets/images/saram_logo.png)
              height: 48,
            ),
            Text(
              '상징 제작: 언어치료AAC센터 사람과소통',
              // style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              style: style.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              '대표: 한선경  |  서울 마포구 월드컵로 32길 41-3',
              // style: TextStyle(fontSize: 14),
              style: style,
            ),
            SelectableText('이메일: hanspeak@naver.com', style: emailStyle),
          ],
        ),
      ),
      // 오른쪽: MINT COMPANY
      SizedBox(
        width: totalWidth / 2.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/imgs/logo/logo_mint_transparent.png', // 로고 파일 위치 (예: assets/images/mint_logo.png)
              height: 48,
            ),
            Text(
              '사이트 운영: 민트컴퍼니 주식회사',
              // style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              style: style.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              '경기도 용인시 수지구 광교중앙로 338, B동 108-110호, R108-23',
              // style: TextStyle(fontSize: 14),
              style: style,
            ),
            Text(
              '대표: 박철홍  |  사업자등록번호: 755-81-01146',
              // style: TextStyle(fontSize: 14),
              style: style,
            ),
            Text(
              '통신판매업신고번호: 제2020-용인수지-1852호',
              // style: TextStyle(fontSize: 14),
              style: style,
            ),
            SelectableText('이메일: contact@mintcompany.kr', style: emailStyle),
            Text('전화: 070-7763-7530', style: style),
          ],
        ),
      ),
    ];
  }
}

// class DFooter extends StatelessWidget {
//   const DFooter({
//     super.key,
//     required this.dark,
//   });
//
//   final bool dark;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: kFooterHeight, // Footer의 높이 지정
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: dark ? Colors.black87 : Colors.white,
//         border: dark
//             ? null
//             : Border(top: BorderSide(color: Colors.grey[300]!, width: 2.0)),
//       ),
//       child: Text(
//         'Footer',
//         style: TextStyle(
//             color: dark ? Colors.white : Colors.black87, fontSize: 20),
//       ),
//     );
//   }
// }
