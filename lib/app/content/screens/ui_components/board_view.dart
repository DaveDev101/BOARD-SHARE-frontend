import 'package:flutter/material.dart';

import '../../../../mock_data/mock_audio.dart';
import '../../../../packages/core/colors.dart';
import '../../../../packages/core/sizes.dart';
import '../../../../packages/ui_components/loading_image.dart';
import '../../../../packages/utils/web_audio.dart';
import '../../models/aac_post.dart';

class BoardView extends StatelessWidget {
  const BoardView({super.key, required this.data});

  final AACPost? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: kESpace),
        // Text(
        //   data?.postTitle ?? '',
        //   style: Theme.of(context).textTheme.headlineLarge,
        // ),
        // const SizedBox(height: kDSpace),
        // Text(
        //   '${data?.postAuthor ?? ''} | ${formatRelativeTime(data?.updatedAt)}',
        //   style: Theme.of(
        //     context,
        //   ).textTheme.labelLarge?.copyWith(color: Colors.grey[700]),
        // ),
        // const SizedBox(height: kSpace * 2),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: hexToColor(data?.bgColor ?? '#ffffff'),
          ),
          padding: EdgeInsets.only(top: kPadding, left: kPadding * 2),
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                final player = WebAudioQueuePlayer();

                // await playBase64Audio(base64AudioStr);
                // await playBase64Audio(base64AudioStr2);
                // await playBase64Audio(base64AudioStr3);

                player.playSequentially([
                  base64AudioStr,
                  base64AudioStr2,
                  base64AudioStr3,
                ]);
              },
              icon: Icon(
                Icons.campaign_outlined,
                color:
                    ThemeData.estimateBrightnessForColor(
                          hexToColor(data?.bgColor ?? '#ffffff'),
                        ) ==
                        Brightness.dark
                    ? Colors.white
                    : Colors.black87,
                size: 36.0,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: hexToColor(data?.bgColor ?? '#ffffff'),
          ),
          padding: EdgeInsets.only(
            top: 0.0,
            left: kPadding * 2,
            right: kPadding * 2,
            bottom: kPadding * 2,
          ),
          child: GridView.count(
            crossAxisCount: int.parse(
              data?.gridSize?.split('by').first.trim() ?? '1',
            ),
            shrinkWrap: true,
            crossAxisSpacing: kSpace,
            mainAxisSpacing: kSpace,
            // controller: PrimaryScrollController.of(context),
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              data?.postMedia?.length ?? 0,
              (index) => InkWell(
                onTap: () async {
                  final player = WebAudioQueuePlayer();

                  // await playBase64Audio(base64AudioStr);
                  // await playBase64Audio(base64AudioStr2);
                  // await playBase64Audio(base64AudioStr3);

                  player.playSequentially([
                    base64AudioStr,
                    base64AudioStr2,
                    base64AudioStr3,
                  ]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: hexToColor(data?.mBgColor ?? '#FFFFFF'),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: [
                          // Image.network(
                          //   b
                          //       .postMedia![index]
                          //       .medium!
                          //       .mediumUrl!,
                          //   width: con.maxWidth,
                          //   height: con.maxHeight,
                          // ),
                          LoadingImage(
                            url:
                                data?.postMedia?[index].medium?.mediumUrl ?? '',
                            width: constraints.maxWidth,
                            height: constraints.maxHeight,
                          ),
                          Positioned(
                            top: kDSpace,
                            width: constraints.maxWidth,
                            child: Text(
                              data?.postMedia?[index].customTitle ?? '',
                              style: TextStyle(
                                fontSize: double.parse(
                                  data?.mFontSize ?? '17.0',
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Future<void> playBase64Audio(String src) async {
//   final audioElement = html.AudioElement()
//     ..src =
//         src // 예: 'data:audio/mp3;base64,...'
//     ..autoplay = true
//     ..controls = true;
//
//   // (선택) 페이지에 오디오 UI 붙이기
//   // html.document.body?.append(audioElement);
//
//   // (선택) 재생
//   await audioElement.play();
// }
