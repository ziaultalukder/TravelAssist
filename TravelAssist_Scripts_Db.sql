USE [master]
GO
/****** Object:  Database [TravelAssist]    Script Date: 1/9/2021 9:45:30 PM ******/
CREATE DATABASE [TravelAssist]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelAssist', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TravelAssist.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TravelAssist_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TravelAssist_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TravelAssist] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelAssist].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelAssist] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelAssist] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelAssist] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelAssist] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelAssist] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelAssist] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TravelAssist] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelAssist] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelAssist] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelAssist] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelAssist] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelAssist] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelAssist] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelAssist] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelAssist] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelAssist] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelAssist] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelAssist] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelAssist] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelAssist] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelAssist] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TravelAssist] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelAssist] SET RECOVERY FULL 
GO
ALTER DATABASE [TravelAssist] SET  MULTI_USER 
GO
ALTER DATABASE [TravelAssist] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelAssist] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelAssist] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelAssist] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TravelAssist] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TravelAssist] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TravelAssist', N'ON'
GO
ALTER DATABASE [TravelAssist] SET QUERY_STORE = OFF
GO
USE [TravelAssist]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouristPlaces]    Script Date: 1/9/2021 9:45:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouristPlaces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_TouristPlaces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210107175200_IdentityModelAdded', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210107182356_TouristPlaceModelAdded', N'3.1.0')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'02d8ef14-0486-4f04-b7f5-961b99e873f6', N'rehan', N'REHAN', N'rehan@mail.com', N'REHAN@MAIL.COM', 0, N'AQAAAAEAACcQAAAAELQmB9Cu2PvgvXGjtjf87VzYMhZhH1nEeo1u3EZh5C3M9gQhFI4c6cpKdT/8I3iM0A==', N'2KP26P4A6N2XC76SKSJ7JY2W3IN5KA7A', N'315428f9-914b-4b55-b006-d4272a535c79', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0ca8695f-7eec-43eb-a0d8-752ea8d5e0d6', N'bindas', N'BINDAS', N'bin@mail.com', N'BIN@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEN0PU4RzVmn3a8AvCsr/Qb/NTaB23vkeP34Un7yg8NMx7GxTnCkQyWGmDPYqui/eeg==', N'SZZI7HTLCRQRDLKZVG7SFGWWM5IF24YE', N'ea44446d-0cc5-4790-abd9-d8c9649e89a5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1cdb510c-b505-443c-878d-0a7d5f9ab137', N'shirajul', N'SHIRAJUL', N'shirajul@mail.com', N'SHIRAJUL@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEG2jGWgHmePZ7O+hD4VasoKNcb1W+hzLjjqwPIwJnjwS5IiKfylidmKM2rKysYzBUQ==', N'K5PWCEUF6LXF47P7ZXBVPBXITYJIHJ5S', N'135f2eb6-9e4d-4292-b22e-d55d2981b2d0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2e17262a-25ad-46a0-9541-43cd2ad71656', N'Ashik', N'ASHIK', N'ashik@mail.com', N'ASHIK@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEJP+RzkxRA+RMCJwzQjUn1kHQpDGdaq9t/ioP6EEptshIGL8pfhctBAiaRPkBNNKPw==', N'EQ32XQRMXZXHRVYKAX4EWYLMJIPNOMEG', N'98d7b9b2-cba3-4771-b92f-cd45ba5e5f44', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'315dd23a-a133-4655-86cf-cef455f92c4d', N'maria', N'MARIA', N'm@mail.com', N'M@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEAvrqG2e/OBgSeTZYGgk2kS9n4xZaAk4gqiD+wrSpP5ciBsWsbNzeNXcbSkQgbHXsg==', N'T6EP6DWWGQUOUME2RZCYEJFVOS5UY5SZ', N'deb33a89-be90-46ac-b2de-5b7441feb900', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'733673d9-a1f4-498c-a65f-ab9ad2eae24e', N'Ziaultalukder', N'ZIAULTALUKDER', N'a@mail.com', N'A@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEBfyOpvMdfLFBFCbRzDsFnBiWdRZFcAXSwomf2Zpx3USH0fqnT05VhsLroQDVP0j9w==', N'LXUL2G4WKHQB7QXOICP3RHE5RD5MQZKQ', N'0f42d24e-39dc-45d4-8646-92d80d5842f1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aa4b030c-fb80-415b-94ab-95eb966daf3b', N'moayana', N'MOAYANA', N'moayana@mail.com', N'MOAYANA@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEEla3xfmwo1FlAc9OPLhXN7TF4zTHSQiTzkuD2wJF1zSS/AEf3xe2Uz4NKg/M9tnfQ==', N'MIXMTJCBQURNFNHAKJNHSD2C2BIQL6F7', N'f1d6821b-0833-447b-98c8-787d032294d8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b5285540-abc7-406d-baa6-eba4dff112bd', N'Jillur', N'JILLUR', N'j@mail.com', N'J@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEGLLTVU/viB0eaYAipw4P5Myhg8WAhYYR3AqI6HLYwl36bkozVAvj+hh2aIEp3GMEw==', N'OEW5C4KVNTIAICUCYWSV6BSYX4DVZDKD', N'0053b8d8-954a-4d3e-824e-f0c3bef1ed34', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca2af523-b2b1-4f99-93af-5256ff15ef20', N'Saleh', N'SALEH', N'saleh@mail.com', N'SALEH@MAIL.COM', 0, N'AQAAAAEAACcQAAAAED5a6UCMamzKvaiBlz1eaa54uR/l1+6yUVX1FylECA0Kuoh9zG0zUqs9gYDRUeK6fA==', N'IBBQKHTVMUWGSRDHOMVUX3KSKB37UQA2', N'baef94f2-0a3a-4df4-89d5-98215ee43805', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'dcd010ef-4e67-4038-84e6-b5be034da063', N'rom', N'ROM', N'rom@mail.com', N'ROM@MAIL.COM', 0, N'AQAAAAEAACcQAAAAED6CRu5p4DeCzDnLSqxuPRLwHAMQfN2opXcAjI58hWvxZMjYUgnBmlzByL26bUSF1A==', N'IP5V4IN4UCNJPNDHQ327U2MEQA24MAEX', N'6f2bcb6d-756b-4af8-908e-e2ecc221b1c6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f9e23630-0427-4608-b7c1-bf24058bf48b', N'alamin', N'ALAMIN', N'ala@mail.com', N'ALA@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEDo8LaaKtvxqE/h7/sOHnVeOUYiQx7mv+tBp34g1vpwOEOAkD8VhMNyGi/M6VbIeJA==', N'ISM6446CMWW5SSIVQJPNHZZOGTDQ76OV', N'2db575d9-0882-4ad0-b074-b569e2fb19a5', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[TouristPlaces] ON 

INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (1, N'কেন একজনকে আসামি করল পুলিশ, প্রশ্ন মায়ের', N'থানায় মামলা দিতে গেলে দিহানসহ চারজনকে আসামি করার কথা বলা হয়। কিন্তু পুলিশ কেন একজনকে আসামি করল, সেই প্রশ্ন কিশোরীর মায়ের। আর বাবা বলছেন, ‘আমি বারবার বলেছি মেয়ের জন্ম ২০০৩ সালে। পাসপোর্ট দেখিয়ে বলেছি মেয়ের বয়স ১৭। কেন তাকে ১৯ বানানো হলো?’

 আজ শনিবার মেয়ের লাশ দাফন শেষে প্রথম আলোর কাছে এভাবেই ক্ষোভের কথা জানালেন ধর্ষণের পর হত্যার শিকার ঢাকার ধানমন্ডি মাস্টার মাইন্ড স্কুলের ‘ও’ লেভেলের শিক্ষার্থীর মা-বাবা।', NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (2, N'পশ্চিমাদের কাছ থেকে কপটতাপূর্ণ বক্তব্য চাই না: জয়', N'প্রধানমন্ত্রী শেখ হাসিনার ছেলে ও তাঁর তথ্যপ্রযুক্তিবিষয়ক উপদেষ্টা সজীব ওয়াজেদ জয় বলেছেন, ‘যুক্তরাষ্ট্র ও পশ্চিমা দেশগুলোর কাছ থেকে ভবিষ্যতে বাংলাদেশের বাক্‌স্বাধীনতার বিষয়ে কপটতাপূর্ণ বক্তব্য চাই না।’ তিনি বলেছেন, তিনি চান তাঁর এই বক্তব্য ঢাকায় যুক্তরাষ্ট্রের দূতাবাস ও পশ্চিমা দূতাবাসগুলো নোট করে রাখুক।
 সজীব ওয়াজেদ আজ শনিবার সকালে তাঁর ভেরিফায়েড ফেসবুক পেজে এক পোস্টে এ কথা বলেন। 

প্রধানমন্ত্রীর তথ্যপ্রযুক্তিবিষয়ক উপদেষ্টা জয় বলেন, টুইটার ও অন্যান্য সামাজিক যোগাযোগমাধ্যমে যুক্তরাষ্ট্রের প্রেসিডেন্ট ডোনাল্ড ট্রাম্পকে স্থায়ীভাবে নিষিদ্ধ করেছে। পাশাপাশি আরও কয়েকজন ব্যক্তি ও সংস্থার ক্ষেত্রেও একই সিদ্ধান্ত নেওয়া হয়েছে। কারণ হিসেবে বলা হয়েছে, এঁরা সহিংসতা ছড়িয়ে দিচ্ছেন, এমন সব গুজব সামাজিক যোগাযোগমাধ্যমে করছেন। জয় একে যুক্তরাষ্ট্রের বাক্‌স্বাধীনতার সীমা বলে উল্লেখ করেন।', NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (3, N'জয়ে শুরু জামালের কলকাতা মোহামেডানের', N'কলকাতা মোহামেডানের হয়ে আই লিগে অভিষেক হয়ে গেল জামাল ভূঁইয়ার। আজ সুদেভা এফসির বিপক্ষে ম্যাচ দিয়ে শুরু হয়েছে কলকাতা মোহামেডানের আই লিগ। এ মৌসুমে আই লিগেরও এটা প্রথম ম্যাচ। অভিষেকটা বেশ ভালোই হলো বাংলাদেশ জাতীয় ফুটবল দলের অধিনায়কের। কলকাতার যুব ভারতী স্টেডিয়ামে আজ প্রথম ম্যাচে জয় দিয়ে লিগ শুরু করেছে কলকাতা মোহামেডান।

চার বিদেশি খেলানোর কথা থাকলেও মোহামেডান কোচ হোসে হেভিয়া খেলিয়েছেন তিনজনকে। এর মধ্যে জামালসহ খেলেছেন কিংসলে ও রাফায়েল। প্রথম ম্যাচে জামালকে পুরো ৯০ মিনিট খেলাননি কোচ। ম্যাচের ৮৭ মিনিটে মোহাম্মদ ফাতাউকে নামিয়ে তুলে নেন জামালকে। করোনা থেকে সেরে উঠে খুব বেশি অনুশীলনের সুযোগ পাননি জামাল। তবে কাল বেশ কিছু নিখুঁত পাস দিয়েছেন, বেশ কিছু ক্রস ফেলেছেন বক্সে। করেছেন কয়েকটা ফ্রি কিক। প্রথম ম্যাচ হিসেবে যথেষ্ট ভালোই খেলেছেন বাংলাদেশের মিডফিল্ডার।', NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (4, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (5, N'ট্রাম্পের ভাগ্য এখন কংগ্রেসের হাতে', N'প্রেসিডেন্ট ডোনাল্ড ট্রাম্পের প্রতি একজন পতিত শাসকের মতোই আচরণ করা হচ্ছে। ক্যাপিটল হিলে তাঁর সমর্থকদের তাণ্ডবের পর তাঁকে অভিশংসনের কথা উঠেছে। বুঝিয়ে দেওয়া হচ্ছে, মানে মানে আগেভাগে সরে পড়ো। প্রেসিডেন্ট হিসেবে শপথ নেওয়ার অপেক্ষায় থাকা জো বাইডেন পরিস্থিতিকে আইনপ্রণেতাদের ওপর ছেড়ে দিয়েছেন। পদত্যাগ, অভিশংসন এবং কর্ম অক্ষম ঘোষণার চাপে থাকা ক্ষমতার আর মাত্র বাকি দেড় সপ্তাহ ট্রাম্পের জন্য এখন বেশ দীর্ঘ সময় হয়ে উঠেছে।

যুক্তরাষ্ট্রের প্রেসিডেন্ট হিসেবে ডোনাল্ড ট্রাম্পের কথা কেউ আর শুনছে না। ৮ জানুয়ারি টুইটার ডোনাল্ড ট্রাম্পের অ্যাকাউন্ট স্থায়ীভাবে বন্ধ করে দিয়েছে। তাঁর বক্তব্যে নতুন করে সহিংসতা ছড়াতে পারে বলেই টুইটার এমন ব্যবস্থা গ্রহণ করেছে। ফেসবুকও তাঁর অ্যাকাউন্ট সাময়িকভাবে বন্ধ রাখার কথা জানিয়েছে।', NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (6, N'এক বছরে সাগরে ফেলা হয় প্লাস্টিক বর্জ্য ২২ কোটি পাউন্ড', N'পরিবেশ দূষণের ক্ষেত্রে প্লাস্টিক বর্জ্য এমনিতেই ভয়াবহ। সমুদ্র দূষণের ক্ষেত্রে একক দূষক বস্তু হিসেবে এটি সবার ওপরে। এক হিসাবে দেখা গেছে, ২০১৯ সালে শুধু ই-কমার্স প্রতিষ্ঠানগুলোর বিভিন্ন পণ্য পরিবহন ও এর মোড়কে ব্যবহৃত প্লাস্টিক দ্রব্য থেকেই ব্যাপক হারে সমুদ্র দূষণ হয়েছে। ওই বছর এ ধরনের সমুদ্র দূষণকারী প্লাস্টিক জঞ্জালের পরিমাণ ছিল ২২ কোটি ৪০ লাখ পাউন্ড।

এ সম্পর্কিত গবেষণাটি করেছে ওক ফাউন্ডেশন ও রকফেলার ব্রাদার্স ফান্ডসহ বিশ্বের আরও কয়েকটি শীর্ষ জনহিতকর ফাউন্ডেশনের আর্থিক সহায়তায় পরিচালিত গবেষণা সংস্থা ‘ওশানার’। সংস্থাটি পরিচালিত সমীক্ষায় এ তথ্য উঠে এসেছে। আর এই প্লাস্টিক দূষণে বিশ্বখ্যাত ই-কমার্স কোম্পানি আমাজনের ব্যবহৃত প্লাস্টিক দ্রব্যাদি বড় ভূমিকা রেখেছে।', NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (7, N'', N'', NULL, 0, NULL)
INSERT [dbo].[TouristPlaces] ([Id], [Title], [Description], [Image], [IsDeleted], [UserId]) VALUES (8, N'ক্যাপিটল ভবনে ভয়ংকর একদিন', N'হঠাৎ করেই অধিবেশন কক্ষ থেকে একপ্রকার ছুটে বেরিয়ে গেলেন ভাইস প্রেসিডেন্ট মাইক পেন্স। এক পুলিশ কর্মকর্তাকে চিৎকার করে বলতে শোনা গেল, ‘ভয়ংকর সমস্যা হয়েছে!’ এক কোণে দেখা গেল রিপাবলিকান সিনেটর মিট রমনি নিজ দলের কয়েকজন সিনেটরের উদ্দেশে করে চিৎকার-চেঁচামেচি করছেন, ক্ষোভে হাত ছুড়ছেন। তাঁকে বলতে শোনা গেল, ‘আপনাদের কারণেই এমনটা হয়েছে!’

এভাবেই সাংবাদিকের বয়ানে উঠে এসেছে যুক্তরাষ্ট্রের পার্লামেন্ট ভবন ক্যাপিটল বিল্ডিংয়ে হামলার শ্বাসরুদ্ধকর সময়ের চিত্র। গত বুধবার প্রেসিডেন্ট ডোনাল্ড ট্রাম্পের উগ্র সমর্থকদের এই হামলার সময় নিউইয়র্ক টাইমস-এর কংগ্রেস প্রতিবেদক নিকোলাস ফান্দোস ও এমিলি কচরান এবং চিত্রগ্রাহক এরিন স্কাফ ঘটনাস্থলে দায়িত্ব পালন করছিলেন। তাঁদের প্রত্যক্ষ অভিজ্ঞতা নিয়ে নিউইয়র্ক টাইমস গত বৃহস্পতিবার প্রতিবেদন প্রকাশ করে।', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[TouristPlaces] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/9/2021 9:45:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [TravelAssist] SET  READ_WRITE 
GO
