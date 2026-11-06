
import 'package:flutter/material.dart';

class QuizItem extends StatelessWidget {
  final String title;
  final String coverImageUrl;
  final int entryFees;
  final int prizeMoney;
  final int playCount;
  final int level;

  const QuizItem({super.key,required this.coverImageUrl,required this.entryFees,required this.level,required this.playCount,required this.prizeMoney,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            coverImageUrl,
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            // Dark overlay
            Container(
              color: Colors.black.withOpacity(0.35),
            ),

            // Entry Fees
            Positioned(
              top: 12,
              left: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    "Entry Fees",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Rs.$entryFees",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Difficulty badge
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.9),
                ),
                child: Text(
                  level==3?
                  "HARD":level==2?"MEDIUM":level==1?"EASY":"Easy",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Title
            Positioned(
              bottom: 65,
              left: 12,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // Prize
            Positioned(
              bottom: 38,
              left: 12,
              right: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.emoji_events,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text(
                    "Rs.$prizeMoney",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Participants
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.people,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text(
                    "$playCount Participants",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
