; ModuleID = '/llk/IR_all_yes/lib/test_siphash.c_pt.bc'
source_filename = "../lib/test_siphash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.siphash_key_t = type { [2 x i64] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hsiphash_key_t = type { [2 x i32] }

@__initcall__kmod_test_siphash__106_219_siphash_test_init6 = internal global ptr @siphash_test_init, section ".initcall6.init", align 4
@__exitcall_siphash_test_exit = internal global ptr @siphash_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author107 = internal constant [57 x i8] c"test_siphash.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [35 x i8] c"test_siphash.file=lib/test_siphash\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [34 x i8] c"test_siphash.license=Dual BSD/GPL\00", section ".modinfo", align 1
@test_key_siphash = internal constant { %struct.siphash_key_t, [16 x i8] } { %struct.siphash_key_t { [2 x i64] [i64 506097522914230528, i64 1084818905618843912] }, [16 x i8] zeroinitializer }, align 32
@test_vectors_siphash = internal constant { [64 x i64], [128 x i8] } { [64 x i64] [i64 8246050544436514353, i64 8428550223375919101, i64 967288799772626778, i64 -8833979346009227731, i64 -3519680893311416393, i64 1762690195596617357, i64 -3762398573937892402, i64 -6124331488671313609, i64 -7785046478206851998, i64 -7061500321231936336, i64 8817410102741809651, i64 -814255129352229465, i64 8439340791604635131, i64 1507111754042457488, i64 -638443999941954834, i64 -6833708440360172059, i64 4551675220716592091, i64 7609651759622801300, i64 5458842069249151900, i64 -4941072086954581571, i64 -4695463366588436840, i64 -3390423611906234425, i64 -7830801433600246136, i64 -6337686672341414200, i64 -5139362784294097004, i64 -4836423040314787606, i64 1718182323771086323, i64 3399761846665465773, i64 -2428096965567985243, i64 -6439496115894786703, i64 -5942601604866117848, i64 3663839902933566274, i64 8153574914611379406, i64 -6344688662296823581, i64 1360280716319199800, i64 1576317954979633070, i64 3552776872709694388, i64 178333021418699137, i64 -3828951500492370867, i64 -7295874868217416868, i64 1026444043506460624, i64 -5977329114303407726, i64 1761759337908409769, i64 -3123797484879926379, i64 -489408989802390030, i64 -6245491010462984313, i64 -2622557471210953456, i64 -3428197208555948565, i64 -1868250800467498671, i64 -4078319331645214826, i64 -1268815138646720910, i64 -6804141381229668774, i64 758724319039419570, i64 -9100676172257911953, i64 9198639672290634986, i64 2618616414355072153, i64 -5220305633730001987, i64 -1577714088829904373, i64 6982299211676602387, i64 7351800817158466451, i64 7828642298779898337, i64 -6961881534150859277, i64 -1937893227286601897, i64 -7671263709330258574], [128 x i8] zeroinitializer }, align 32
@siphash_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016test_siphash: siphash self-test aligned %u: FAIL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"siphash_test_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test_siphash.c\00", [45 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr = internal global ptr @siphash_test_init._entry, section ".printk_index", align 4
@siphash_test_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016test_siphash: siphash self-test unaligned %u: FAIL\0A\00", [42 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.5 = internal global ptr @siphash_test_init._entry.3, section ".printk_index", align 4
@test_key_hsiphash = internal constant { %struct.hsiphash_key_t, [24 x i8] } { %struct.hsiphash_key_t { [2 x i32] [i32 50462976, i32 117835012] }, [24 x i8] zeroinitializer }, align 32
@test_vectors_hsiphash = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 1477757078, i32 -404200246, i32 -1135931856, i32 22255929, i32 2114297510, i32 -1998333797, i32 -1610085531, i32 -1657218602, i32 1467586993, i32 -935736595, i32 -453365041, i32 -1785575698, i32 1797785964, i32 1725799638, i32 375753340, i32 -802850044, i32 -1959668479, i32 723308619, i32 108077881, i32 1378536039, i32 -1860454907, i32 -1868144882, i32 -131666053, i32 1649487339, i32 1460996823, i32 1564947719, i32 516191298, i32 -1419464749, i32 172032208, i32 1831659090, i32 590460579, i32 148404506, i32 -1133651315, i32 -520697548, i32 -1335549901, i32 -1684516404, i32 2085026687, i32 1932241099, i32 -247293574, i32 -53892581, i32 87195314, i32 -519040228, i32 -102373440, i32 -1479079770, i32 293165745, i32 1701254681, i32 -1621098607, i32 -660843929, i32 7832555, i32 -1787403709, i32 -1419537822, i32 -1669459056, i32 -1016537690, i32 954057813, i32 -99363975, i32 -1751210776, i32 1408030590, i32 786957911, i32 870037098, i32 -1371601545, i32 -2001419060, i32 1048528907, i32 1958865912, i32 -2028502268], [64 x i8] zeroinitializer }, align 32
@siphash_test_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016test_siphash: hsiphash self-test aligned %u: FAIL\0A\00", [43 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.8 = internal global ptr @siphash_test_init._entry.6, section ".printk_index", align 4
@siphash_test_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016test_siphash: hsiphash self-test unaligned %u: FAIL\0A\00", [41 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.11 = internal global ptr @siphash_test_init._entry.9, section ".printk_index", align 4
@siphash_test_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 1u64: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.14 = internal global ptr @siphash_test_init._entry.12, section ".printk_index", align 4
@siphash_test_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 2u64: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.17 = internal global ptr @siphash_test_init._entry.15, section ".printk_index", align 4
@siphash_test_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 3u64: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.20 = internal global ptr @siphash_test_init._entry.18, section ".printk_index", align 4
@siphash_test_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 4u64: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.23 = internal global ptr @siphash_test_init._entry.21, section ".printk_index", align 4
@siphash_test_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 1u32: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.26 = internal global ptr @siphash_test_init._entry.24, section ".printk_index", align 4
@siphash_test_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 2u32: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.29 = internal global ptr @siphash_test_init._entry.27, section ".printk_index", align 4
@siphash_test_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 3u32: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.32 = internal global ptr @siphash_test_init._entry.30, section ".printk_index", align 4
@siphash_test_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_siphash: siphash self-test 4u32: FAIL\0A\00", [50 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.35 = internal global ptr @siphash_test_init._entry.33, section ".printk_index", align 4
@siphash_test_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_siphash: hsiphash self-test 1u32: FAIL\0A\00", [49 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.38 = internal global ptr @siphash_test_init._entry.36, section ".printk_index", align 4
@siphash_test_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_siphash: hsiphash self-test 2u32: FAIL\0A\00", [49 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.41 = internal global ptr @siphash_test_init._entry.39, section ".printk_index", align 4
@siphash_test_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_siphash: hsiphash self-test 3u32: FAIL\0A\00", [49 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.44 = internal global ptr @siphash_test_init._entry.42, section ".printk_index", align 4
@siphash_test_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_siphash: hsiphash self-test 4u32: FAIL\0A\00", [49 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.47 = internal global ptr @siphash_test_init._entry.45, section ".printk_index", align 4
@siphash_test_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016test_siphash: self-tests: pass\0A\00", [62 x i8] zeroinitializer }, align 32
@siphash_test_init._entry_ptr.50 = internal global ptr @siphash_test_init._entry.48, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"test_key_siphash\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 27, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"test_vectors_siphash\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 30, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 125, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 130, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"test_key_hsiphash\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 84, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"test_vectors_hsiphash\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 87, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 135, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 140, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 146, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 151, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 157, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 163, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 168, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 173, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 179, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 185, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 190, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 195, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 201, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 207, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [22 x i8] c"../lib/test_siphash.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 211, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__exitcall_siphash_test_exit, ptr @__initcall__kmod_test_siphash__106_219_siphash_test_init6, ptr @siphash_test_exit, ptr @siphash_test_init._entry, ptr @siphash_test_init._entry.12, ptr @siphash_test_init._entry.15, ptr @siphash_test_init._entry.18, ptr @siphash_test_init._entry.21, ptr @siphash_test_init._entry.24, ptr @siphash_test_init._entry.27, ptr @siphash_test_init._entry.3, ptr @siphash_test_init._entry.30, ptr @siphash_test_init._entry.33, ptr @siphash_test_init._entry.36, ptr @siphash_test_init._entry.39, ptr @siphash_test_init._entry.42, ptr @siphash_test_init._entry.45, ptr @siphash_test_init._entry.48, ptr @siphash_test_init._entry.6, ptr @siphash_test_init._entry.9, ptr @siphash_test_init._entry_ptr, ptr @siphash_test_init._entry_ptr.11, ptr @siphash_test_init._entry_ptr.14, ptr @siphash_test_init._entry_ptr.17, ptr @siphash_test_init._entry_ptr.20, ptr @siphash_test_init._entry_ptr.23, ptr @siphash_test_init._entry_ptr.26, ptr @siphash_test_init._entry_ptr.29, ptr @siphash_test_init._entry_ptr.32, ptr @siphash_test_init._entry_ptr.35, ptr @siphash_test_init._entry_ptr.38, ptr @siphash_test_init._entry_ptr.41, ptr @siphash_test_init._entry_ptr.44, ptr @siphash_test_init._entry_ptr.47, ptr @siphash_test_init._entry_ptr.5, ptr @siphash_test_init._entry_ptr.50, ptr @siphash_test_init._entry_ptr.8, ptr @test_key_siphash, ptr @test_vectors_siphash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @test_key_hsiphash, ptr @test_vectors_hsiphash, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_key_siphash to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vectors_siphash to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_key_hsiphash to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_vectors_hsiphash to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siphash_test_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @siphash_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @siphash_test_init() #1 section ".init.text" align 64 {
entry:
  %in = alloca [64 x i8], align 8
  %in_unaligned = alloca [65 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #7
  %0 = call ptr @memset(ptr %in, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %in_unaligned) #7
  %1 = call ptr @memset(ptr %in_unaligned, i32 255, i32 65)
  %add.ptr = getelementptr inbounds i8, ptr %in_unaligned, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %ret.0214 = phi i32 [ 0, %entry ], [ %ret.4, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x i8], ptr %in, i32 0, i32 %indvars.iv
  %2 = trunc i32 %indvars.iv to i8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx, align 1
  %add = add nuw nsw i32 %indvars.iv, 1
  %arrayidx3 = getelementptr [65 x i8], ptr %in_unaligned, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %2, ptr %arrayidx3, align 1
  %call.i = call i64 @__siphash_unaligned(ptr noundef nonnull %in, i32 noundef %indvars.iv, ptr noundef nonnull @test_key_siphash) #7
  %arrayidx6 = getelementptr [64 x i64], ptr @test_vectors_siphash, i32 0, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %6)
  %cmp7.not = icmp eq i64 %call.i, %6
  br i1 %cmp7.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %ret.1 = phi i32 [ -22, %do.end ], [ %ret.0214, %for.body.if.end_crit_edge ]
  %call.i206 = call i64 @__siphash_unaligned(ptr noundef %add.ptr, i32 noundef %indvars.iv, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i206, i64 %6)
  %cmp17.not = icmp eq i64 %call.i206, %6
  br i1 %cmp17.not, label %if.end.if.end27_crit_edge, label %do.end22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %add) #8
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %if.end.if.end27_crit_edge
  %ret.2 = phi i32 [ -22, %do.end22 ], [ %ret.1, %if.end.if.end27_crit_edge ]
  %call.i207 = call i32 @__hsiphash_unaligned(ptr noundef nonnull %in, i32 noundef %indvars.iv, ptr noundef nonnull @test_key_hsiphash) #7
  %arrayidx32 = getelementptr [64 x i32], ptr @test_vectors_hsiphash, i32 0, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i207, i32 %8)
  %cmp33.not = icmp eq i32 %call.i207, %8
  br i1 %cmp33.not, label %if.end27.if.end43_crit_edge, label %do.end38

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %add) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end38, %if.end27.if.end43_crit_edge
  %ret.3 = phi i32 [ -22, %do.end38 ], [ %ret.2, %if.end27.if.end43_crit_edge ]
  %call.i208 = call i32 @__hsiphash_unaligned(ptr noundef %add.ptr, i32 noundef %indvars.iv, ptr noundef nonnull @test_key_hsiphash) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i208, i32 %8)
  %cmp50.not = icmp eq i32 %call.i208, %8
  br i1 %cmp50.not, label %if.end43.for.inc_crit_edge, label %do.end55

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end55:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %add) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end55, %if.end43.for.inc_crit_edge
  %ret.4 = phi i32 [ -22, %do.end55 ], [ %ret.3, %if.end43.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %add, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call61 = call i64 @siphash_1u64(i64 noundef 506097522914230528, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7785046478206851998, i64 %call61)
  %cmp62.not = icmp eq i64 %call61, -7785046478206851998
  br i1 %cmp62.not, label %for.end.if.end70_crit_edge, label %do.end67

for.end.if.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

do.end67:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %for.end.if.end70_crit_edge
  %ret.5 = phi i32 [ -22, %do.end67 ], [ %ret.4, %for.end.if.end70_crit_edge ]
  %call71 = call i64 @siphash_2u64(i64 noundef 506097522914230528, i64 noundef 1084818905618843912, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4551675220716592091, i64 %call71)
  %cmp72.not = icmp eq i64 %call71, 4551675220716592091
  br i1 %cmp72.not, label %if.end70.if.end80_crit_edge, label %do.end77

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end70.if.end80_crit_edge
  %ret.6 = phi i32 [ -22, %do.end77 ], [ %ret.5, %if.end70.if.end80_crit_edge ]
  %call81 = call i64 @siphash_3u64(i64 noundef 506097522914230528, i64 noundef 1084818905618843912, i64 noundef 1663540288323457296, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5139362784294097004, i64 %call81)
  %cmp82.not = icmp eq i64 %call81, -5139362784294097004
  br i1 %cmp82.not, label %if.end80.if.end90_crit_edge, label %do.end87

if.end80.if.end90_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %if.end80.if.end90_crit_edge
  %ret.7 = phi i32 [ -22, %do.end87 ], [ %ret.6, %if.end80.if.end90_crit_edge ]
  %call91 = call i64 @siphash_4u64(i64 noundef 506097522914230528, i64 noundef 1084818905618843912, i64 noundef 1663540288323457296, i64 noundef 2242261671028070680, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 8153574914611379406, i64 %call91)
  %cmp92.not = icmp eq i64 %call91, 8153574914611379406
  br i1 %cmp92.not, label %if.end90.if.end100_crit_edge, label %do.end97

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end100

if.end100:                                        ; preds = %do.end97, %if.end90.if.end100_crit_edge
  %ret.8 = phi i32 [ -22, %do.end97 ], [ %ret.7, %if.end90.if.end100_crit_edge ]
  %call101 = call i64 @siphash_1u32(i32 noundef 50462976, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3519680893311416393, i64 %call101)
  %cmp102.not = icmp eq i64 %call101, -3519680893311416393
  br i1 %cmp102.not, label %if.end100.if.end110_crit_edge, label %do.end107

if.end100.if.end110_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

do.end107:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #8
  br label %if.end110

if.end110:                                        ; preds = %do.end107, %if.end100.if.end110_crit_edge
  %ret.9 = phi i32 [ -22, %do.end107 ], [ %ret.8, %if.end100.if.end110_crit_edge ]
  %call.i209 = call i64 @siphash_1u64(i64 noundef 506097522914230528, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7785046478206851998, i64 %call.i209)
  %cmp112.not = icmp eq i64 %call.i209, -7785046478206851998
  br i1 %cmp112.not, label %if.end110.if.end120_crit_edge, label %do.end117

if.end110.if.end120_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120

do.end117:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #6
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #8
  br label %if.end120

if.end120:                                        ; preds = %do.end117, %if.end110.if.end120_crit_edge
  %ret.10 = phi i32 [ -22, %do.end117 ], [ %ret.9, %if.end110.if.end120_crit_edge ]
  %call121 = call i64 @siphash_3u32(i32 noundef 50462976, i32 noundef 117835012, i32 noundef 185207048, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 8439340791604635131, i64 %call121)
  %cmp122.not = icmp eq i64 %call121, 8439340791604635131
  br i1 %cmp122.not, label %if.end120.if.end130_crit_edge, label %do.end127

if.end120.if.end130_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

do.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end130

if.end130:                                        ; preds = %do.end127, %if.end120.if.end130_crit_edge
  %ret.11 = phi i32 [ -22, %do.end127 ], [ %ret.10, %if.end120.if.end130_crit_edge ]
  %call.i210 = call i64 @siphash_2u64(i64 noundef 506097522914230528, i64 noundef 1084818905618843912, ptr noundef nonnull @test_key_siphash) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4551675220716592091, i64 %call.i210)
  %cmp132.not = icmp eq i64 %call.i210, 4551675220716592091
  br i1 %cmp132.not, label %if.end130.if.end140_crit_edge, label %do.end137

if.end130.if.end140_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end140

do.end137:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #8
  br label %if.end140

if.end140:                                        ; preds = %do.end137, %if.end130.if.end140_crit_edge
  %ret.12 = phi i32 [ -22, %do.end137 ], [ %ret.11, %if.end130.if.end140_crit_edge ]
  %call141 = call i32 @hsiphash_1u32(i32 noundef 50462976, ptr noundef nonnull @test_key_hsiphash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2114297510, i32 %call141)
  %cmp142.not = icmp eq i32 %call141, 2114297510
  br i1 %cmp142.not, label %if.end140.if.end150_crit_edge, label %do.end147

if.end140.if.end150_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

do.end147:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #8
  br label %if.end150

if.end150:                                        ; preds = %do.end147, %if.end140.if.end150_crit_edge
  %ret.13 = phi i32 [ -22, %do.end147 ], [ %ret.12, %if.end140.if.end150_crit_edge ]
  %call151 = call i32 @hsiphash_2u32(i32 noundef 50462976, i32 noundef 117835012, ptr noundef nonnull @test_key_hsiphash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1467586993, i32 %call151)
  %cmp152.not = icmp eq i32 %call151, 1467586993
  br i1 %cmp152.not, label %if.end150.if.end160_crit_edge, label %do.end157

if.end150.if.end160_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

do.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #8
  br label %if.end160

if.end160:                                        ; preds = %do.end157, %if.end150.if.end160_crit_edge
  %ret.14 = phi i32 [ -22, %do.end157 ], [ %ret.13, %if.end150.if.end160_crit_edge ]
  %call161 = call i32 @hsiphash_3u32(i32 noundef 50462976, i32 noundef 117835012, i32 noundef 185207048, ptr noundef nonnull @test_key_hsiphash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1797785964, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, 1797785964
  br i1 %cmp162.not, label %if.end170, label %if.end170.thread

if.end170:                                        ; preds = %if.end160
  %call171 = call i32 @hsiphash_4u32(i32 noundef 50462976, i32 noundef 117835012, i32 noundef 185207048, i32 noundef 252579084, ptr noundef nonnull @test_key_hsiphash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1959668479, i32 %call171)
  %cmp172.not = icmp eq i32 %call171, -1959668479
  br i1 %cmp172.not, label %if.end180, label %if.end170.if.end187.sink.split_crit_edge

if.end170.if.end187.sink.split_crit_edge:         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end187.sink.split

if.end170.thread:                                 ; preds = %if.end160
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #8
  %call171218 = call i32 @hsiphash_4u32(i32 noundef 50462976, i32 noundef 117835012, i32 noundef 185207048, i32 noundef 252579084, ptr noundef nonnull @test_key_hsiphash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1959668479, i32 %call171218)
  %cmp172.not219 = icmp eq i32 %call171218, -1959668479
  br i1 %cmp172.not219, label %if.end170.thread.if.end187_crit_edge, label %if.end170.thread.if.end187.sink.split_crit_edge

if.end170.thread.if.end187.sink.split_crit_edge:  ; preds = %if.end170.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end187.sink.split

if.end170.thread.if.end187_crit_edge:             ; preds = %if.end170.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end187

if.end180:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.14)
  %tobool.not = icmp eq i32 %ret.14, 0
  br i1 %tobool.not, label %if.end180.if.end187.sink.split_crit_edge, label %if.end180.if.end187_crit_edge

if.end180.if.end187_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end187

if.end180.if.end187.sink.split_crit_edge:         ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end187.sink.split

if.end187.sink.split:                             ; preds = %if.end180.if.end187.sink.split_crit_edge, %if.end170.thread.if.end187.sink.split_crit_edge, %if.end170.if.end187.sink.split_crit_edge
  %.str.46.sink = phi ptr [ @.str.46, %if.end170.thread.if.end187.sink.split_crit_edge ], [ @.str.46, %if.end170.if.end187.sink.split_crit_edge ], [ @.str.49, %if.end180.if.end187.sink.split_crit_edge ]
  %ret.16213.ph = phi i32 [ -22, %if.end170.thread.if.end187.sink.split_crit_edge ], [ -22, %if.end170.if.end187.sink.split_crit_edge ], [ 0, %if.end180.if.end187.sink.split_crit_edge ]
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.46.sink) #8
  br label %if.end187

if.end187:                                        ; preds = %if.end187.sink.split, %if.end180.if.end187_crit_edge, %if.end170.thread.if.end187_crit_edge
  %ret.16213 = phi i32 [ %ret.14, %if.end180.if.end187_crit_edge ], [ -22, %if.end170.thread.if.end187_crit_edge ], [ %ret.16213.ph, %if.end187.sink.split ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %in_unaligned) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #7
  ret i32 %ret.16213
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u64(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_2u64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_3u64(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_4u64(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u32(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_3u32(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsiphash_1u32(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsiphash_2u32(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsiphash_3u32(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsiphash_4u32(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hsiphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_test_siphash__106_219_siphash_test_init6, !1, !"__initcall__kmod_test_siphash__106_219_siphash_test_init6", i1 false, i1 false}
!1 = !{!"../lib/test_siphash.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_siphash_test_exit, !3, !"__exitcall_siphash_test_exit", i1 false, i1 false}
!3 = !{!"../lib/test_siphash.c", i32 220, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../lib/test_siphash.c", i32 222, i32 1}
!6 = !{ptr @__UNIQUE_ID_file108, !7, !"__UNIQUE_ID_file108", i1 false, i1 false}
!7 = !{!"../lib/test_siphash.c", i32 223, i32 1}
!8 = !{ptr @__UNIQUE_ID_license109, !7, !"__UNIQUE_ID_license109", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/test_siphash.c", i32 125, i32 4}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @siphash_test_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @siphash_test_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_siphash.c", i32 130, i32 4}
!17 = !{ptr @siphash_test_init._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @siphash_test_init._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_siphash.c", i32 135, i32 4}
!21 = !{ptr @siphash_test_init._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @siphash_test_init._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test_siphash.c", i32 140, i32 4}
!25 = !{ptr @siphash_test_init._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @siphash_test_init._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_siphash.c", i32 146, i32 3}
!29 = !{ptr @siphash_test_init._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @siphash_test_init._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_siphash.c", i32 151, i32 3}
!33 = !{ptr @siphash_test_init._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @siphash_test_init._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test_siphash.c", i32 157, i32 3}
!37 = !{ptr @siphash_test_init._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @siphash_test_init._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/test_siphash.c", i32 163, i32 3}
!41 = !{ptr @siphash_test_init._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @siphash_test_init._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/test_siphash.c", i32 168, i32 3}
!45 = !{ptr @siphash_test_init._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @siphash_test_init._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/test_siphash.c", i32 173, i32 3}
!49 = !{ptr @siphash_test_init._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @siphash_test_init._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_siphash.c", i32 179, i32 3}
!53 = !{ptr @siphash_test_init._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @siphash_test_init._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/test_siphash.c", i32 185, i32 3}
!57 = !{ptr @siphash_test_init._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @siphash_test_init._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test_siphash.c", i32 190, i32 3}
!61 = !{ptr @siphash_test_init._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @siphash_test_init._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test_siphash.c", i32 195, i32 3}
!65 = !{ptr @siphash_test_init._entry.39, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @siphash_test_init._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/test_siphash.c", i32 201, i32 3}
!69 = !{ptr @siphash_test_init._entry.42, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @siphash_test_init._entry_ptr.44, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test_siphash.c", i32 207, i32 3}
!73 = !{ptr @siphash_test_init._entry.45, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @siphash_test_init._entry_ptr.47, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.49, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test_siphash.c", i32 211, i32 3}
!77 = !{ptr @siphash_test_init._entry.48, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @siphash_test_init._entry_ptr.50, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @test_key_siphash, !80, !"test_key_siphash", i1 false, i1 false}
!80 = !{!"../lib/test_siphash.c", i32 27, i32 28}
!81 = !{ptr @test_vectors_siphash, !82, !"test_vectors_siphash", i1 false, i1 false}
!82 = !{!"../lib/test_siphash.c", i32 30, i32 18}
!83 = !{ptr @test_key_hsiphash, !84, !"test_key_hsiphash", i1 false, i1 false}
!84 = !{!"../lib/test_siphash.c", i32 84, i32 29}
!85 = !{ptr @test_vectors_hsiphash, !86, !"test_vectors_hsiphash", i1 false, i1 false}
!86 = !{!"../lib/test_siphash.c", i32 87, i32 18}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
