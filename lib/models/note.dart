class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}

List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Hi Tuesday',
    content: 'Have a nice day',
    modifiedTime: DateTime(2024, 1, 1, 34, 5),
  ),
  Note(
    id: 1,
    title: 'List homework',
    content: '1. Mobile App\n2.Operating System\n3. Database',
    modifiedTime: DateTime(2024, 1, 1, 34, 5),
  ),
  Note(
    id: 2,
    title: 'Novels to Read',
    content:
        '1.to the space\n2.extraordinary\n3.ฤดูหนาวของเธอ ฤดูร้อนของฉัน\n4.Undo',
    modifiedTime: DateTime(2022, 1, 1, 34, 5),
  ),
  Note(
    id: 3,
    title: 'สูตรกะเพรา',
    content: '1.ไก่สับ\n2.พริกขี้หนู\n3.กระเทียม\n4.ใบกะเพรา',
    modifiedTime: DateTime(2023, 1, 4, 16, 53),
  ),
  Note(
    id: 4,
    title: 'Final exam',
    content:
        '14/03/67:\n- 0000241\n- 0214213\n15/03/67:\n-0214214\n18/03/67:\n-0214215\n19/03/67:\n- 0214224\n20/03/67:\n- 0214225\n21/03/67:\n- 0214231',
    modifiedTime: DateTime(2023, 5, 1, 11, 6),
  ),
  Note(
    id: 5,
    title: 'มีเพลนไปเที่ยว แต่ไม่มีเงินจ้าา',
    content: '1.ภูเก็ต\n2.พังงา\n3.เชียงราย',
    modifiedTime: DateTime(2023, 1, 6, 13, 9),
  ),
];
