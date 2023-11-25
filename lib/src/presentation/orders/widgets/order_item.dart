import "package:biker/src/utils/context_extension.dart";
import "package:flutter/material.dart";
import "package:order/domain/domain.dart";
import "package:url_launcher/url_launcher.dart";

class CurrentOrderWidget extends StatefulWidget {
  final CheckOutOrderEntity orderItem;

  const CurrentOrderWidget({
    Key? key,
    required this.orderItem,
  }) : super(key: key);

  @override
  State<CurrentOrderWidget> createState() => _CurrentOrderWidgetState();
}

class _CurrentOrderWidgetState extends State<CurrentOrderWidget> {
  bool isExpanded = false;
  bool showdefaultimage = false;

  _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        border: Border.all(
          color: context.theme.shadowColor.withOpacity(0.02),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          isExpanded = !isExpanded;
          setState(() {});
        },
        child: AnimatedSize(
          curve: Curves.easeInOutCubic,
          duration: const Duration(milliseconds: 500),
          reverseDuration: const Duration(milliseconds: 500),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: _makePhoneCall(widget.orderItem.phone!),
                    child: const CircleAvatar(
                      child: Icon(
                        Icons.phone,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.orderItem.cusName!,
                          style: context.theme.textTheme.titleMedium,
                        ),
                        Text(
                          widget.orderItem.phone!,
                          style: context.theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: context.theme.primaryColor,
                        ),
                        child: Text(
                          "Ref : ${widget.orderItem.refNo}",
                          style: context.theme.textTheme.titleMedium?.copyWith(
                            color: context.theme.scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
