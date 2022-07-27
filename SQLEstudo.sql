CREATE TABLE Categoria(
	AnimeID INT PRIMARY KEY IDENTITY (1,1),
	NomeAnime VARCHAR(30) NOT NULL,
	Vizualizacoes INT DEFAULT 0,
	Favoritos INT DEFAULT 0,
	Descricao VARCHAR(250),
	NumEpi INT DEFAULT 1
);
CREATE TABLE Destaque(
	DestaqueID INT PRIMARY KEY IDENTITY(1,1),
	NomeAnime VARCHAR(200) NOT NULL,
	QtEpisodios VARCHAR(10) NOT NULL,
	Posicao INT,
	AnimeID INT,
	CONSTRAINT FK_AnimeID FOREIGN KEY (AnimeID) REFERENCES Categoria(AnimeID)
);

ALTER TABLE Categoria ALTER COLUMN Descricao VARCHAR(2000)
ALTER TABLE Categoria ALTER COLUMN NomeAnime VARCHAR(200)
ALTER TABLE Destaque DROP COLUMN NomeAnime 

INSERT INTO Categoria(NomeAnime, Descricao)
VALUES ('One Piece', 'Há muito tempo, o infame Gol D. Roger era o pirata mais forte e poderoso dos mares. Quando estava prestes a ser executado, ele revelou que escondeu toda a sua riqueza, incluindo o lendário tesouro conhecido como One Piece, em uma ilha no final da Grand Line, um mar traiçoeiro e verdadeiramente imprevisível. Monkey D. Luffy é um jovem espirituoso, enérgico e um tanto estúpido com um grande sonho: encontrar One Piece e se tornar o Rei dos Piratas!'),
       ('Kinsou no Vermeil', 'Conheça Alto, um estudante infeliz da Royal Ortigia Magic Academy cujo desempenho acadêmico deixa muito a desejar. Em vez de adotar uma abordagem mais sensata para recuperar suas notas a tempo da formatura, Alto decide convocar um pouco de assistência sobrenatural. Só depois ele descobre que vinculou a lendária diaba Vermeil ao serviço como seu familiar! Mas enquanto Vermeil é um poderoso aliado que certamente mudará suas notas, sua magia só pode ser reabastecida com um beijo, e isso faz tudo virar um inferno com a ciumenta amiga de infância de Alto, Lilia.'),
	   ('Summertime Render', 'Depois que seus pais morreram, Shinpei Ajiro viveu com as irmãs Kofune, Mio e Ushio, mas desde então ele se mudou para morar sozinho em Tóquio. Mas depois que Ushio se afoga enquanto tenta salvar a jovem Shiori Kobayakawa, ele volta para casa para lamentar sua partida. No entanto, hematomas no pescoço de Ushio questionam a causa de sua morte. Dando um passo para trás, Shinpei se convence de que deve haver outra explicação. Entidades perigosas vagam entre os ilhéus, e uma visão do falecido Ushio pede a ele para "salvar Mio" como seu pedido final. Ele tem certeza de que algo está acontecendo – e a morte de Ushio é apenas uma peça do quebra-cabeça. Com a ajuda de Mio e vários outros, Shinpei luta para forjar um futuro no qual ele, seus amigos e familiares possam permanecer vivos. Mas quanto mais ele investiga, mais impossível esse futuro parece. Essa escuridão se infiltra em sua ilha natal. Quanto mais sofrimento ele passará antes de encontrar o caminho certo para salvar tudo?'),
	   ('Tensei Kenja no Isekai Life: Daini no Shokugyo wo Ete, Sekai Saikyou ni Narimashita','Parar em um mundo mágico e desenvolver poderes incríveis é o sonho mais louco de todo otaku, mas para o assalariado Yuuji Sano, é o pesadelo absoluto! Ele está no meio de uma montanha de trabalho quando é involuntariamente puxado para um reino de fantasia, onde realiza a façanha invejável de desenvolver uma segunda classe de personagem, aproveitando ao máximo suas habilidades de Domador de Monstros. Agora ele trocou o escritório por aventuras para ganhar a vida, mas ele continua sendo envolvido em grandes eventos porque seus poderes são incomparáveis, inigualáveis ​​- e ele nem percebe isso'),
	   ('Spy x Family','Em Spy x Family, conhecemos o agente secreto mais conhecido como Twilight. Para ele, nenhuma missão é complicada demais se o objetivo for manter a paz. Por conta disso, Twilight trabalha arduamente para manter a civilidade com o país vizinho, a fictícia nação Ostania. Sua mais nova tarefa é investigar a vida de Donovan Desmond, um influente político de Ostania. No entanto, para conseguir concluí-la com sucesso, Twilight precisará se infiltrar na escola do filho de Donovan, a Academia Eden. Mas mais do que isso, para manter um bom disfarce, Twilight deve se casar, ter uma filha e manter as aparências de uma família comum. Sob a identidade de Loid Forger, Twilight adota a órfã Anya, uma garotinha de 6 anos que possui poderes telepáticos. Para fazer o papel de mãe e esposa temos Yor Briar, uma assassina misteriosa que guarda mais segredos do que Twilight e Anya poderiam imaginar.'),
	   ('Kaguya-sama wa Kokurasetai', 'Considerado um gênio devido a ter as notas mais altas do país, Miyuki Shirogane lidera o prestigioso conselho estudantil da Academia Shuchiin como seu presidente, trabalhando ao lado do belo e rico vice-presidente Kaguya Shinomiya. Os dois são frequentemente considerados como o casal perfeito pelos alunos, apesar de não terem qualquer tipo de relacionamento romântico. No entanto, a verdade é que depois de passar tanto tempo juntos, os dois desenvolveram sentimentos um pelo outro; infelizmente, nenhum deles está disposto a confessar, pois isso seria um sinal de fraqueza. Com seu orgulho como estudantes de elite na linha, Miyuki e Kaguya embarcam em uma missão para fazer o que for necessário para obter uma confissão do outro. Através de suas travessuras diárias, a batalha do amor começa!'),
	   ('Komi-san wa, Comyushou desu', 'É o primeiro dia de Shouko Komi na prestigiosa Itan Private High School, e ela já alcançou o status de Madonna da escola. Com longos cabelos negros e uma aparência alta e graciosa, ela chama a atenção de qualquer pessoa que a encontre. Porém, há apenas um problema, apesar de sua popularidade, Shouko é péssima em se comunicar com os outros. Hitohito Tadano é um garoto normal do ensino médio. Com o lema de sua vida de "leia a situação e certifique-se de ficar longe de problemas", ele rapidamente descobre que sentar ao lado de Shouko o tornou o inimigo de todos em sua classe! Um dia, nocauteado por acidente, Hitohito mais tarde acorda ao som do "miau" de Shouko. Ele mente que não ouviu nada, fazendo Shouko fugir. Mas antes que ela pudesse escapar, Hitohito supõe que Shouko não é capaz de falar com os outros facilmente; na verdade, ela nunca foi capaz de fazer um único amigo. Hitohito resolve ajudar Shouko com seu objetivo de fazer cem amigos para que ela possa superar seu distúrbio de comunicação.'),
	   ('Hunter X Hunter', 'Hunter x Hunter is set in a world where Hunters exist to perform all manner of dangerous tasks like capturing criminals and bravely searching for lost treasures in uncharted territories. Twelve-year-old Gon Freecss is determined to become the best Hunter possible in hopes of finding his father, who was a Hunter himself and had long ago abandoned his young son. However, Gon soon realizes the path to achieving his goals is far more challenging than he could have ever imagined. Along the way to becoming an official Hunter, Gon befriends the lively doctor-in-training Leorio, vengeful Kurapika, and rebellious ex-assassin Killua. To attain their own goals and desires, together the four of them take the Hunter Exam, notorious for its low success rate and high probability of death. Throughout their journey, Gon and his friends embark on an adventure that puts them through many hardships and struggles. ');

INSERT INTO Destaque(AnimeID,QtEpisodios)
VALUES (1,1043),
		(2,4),
		(3,15),
		(4,5),
		(5,12),
		(null ,23);

SELECT *
FROM Categoria c
INNER JOIN Destaque d ON c.AnimeID = d.AnimeID 

SELECT *
FROM Categoria c
LEFT JOIN Destaque d ON c.AnimeID = d.AnimeID 

SELECT * FROM Categoria
SELECT * FROM Destaque

sp_help Categoria
sp_help Destaque

TRUNCATE TABLE Categoria
TRUNCATE TABLE Destaque

DROP TABLE Destaque
DROP TABLE Categoria