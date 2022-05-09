; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_acl_bf_ops = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_acl_bf = type { %struct.mutex, i32, [0 x %struct.refcount_struct] }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.rhashtable, %struct.list_head, %struct.mlxsw_sp_acl_ctcam_region, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region = type { ptr, ptr, ptr }
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.rhash_head, %struct.list_head, %struct.mlxsw_sp_acl_atcam_entry_ht_key, [96 x i8], %struct.anon.171, %struct.mlxsw_sp_acl_ctcam_entry, ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_acl_atcam_entry_ht_key = type { [96 x i8], i8 }
%struct.anon.171 = type { i16, i8, i8 }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.parman_item }
%struct.parman_item = type { %struct.list_head, i32 }

@mlxsw_reg_peabfe = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12322, i16 1040, ptr @.str.12 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_bf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bf->lock\00", [22 x i8] zeroinitializer }, align 32
@mlxsw_sp2_acl_bf_ops = dso_local constant { %struct.mlxsw_sp_acl_bf_ops, [28 x i8] } { %struct.mlxsw_sp_acl_bf_ops { ptr @mlxsw_sp2_acl_bf_index_get }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp4_acl_bf_ops = dso_local constant { %struct.mlxsw_sp_acl_bf_ops, [28 x i8] } { %struct.mlxsw_sp_acl_bf_ops { ptr @mlxsw_sp4_acl_bf_index_get }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, align 1
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_peabfe_size\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_peabfe_bf_entry_state\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_peabfe_bf_entry_bank\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_peabfe_bf_entry_index\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"peabfe\00", [25 x i8] zeroinitializer }, align 32
@chunk_key_offsets = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\14&", [29 x i8] zeroinitializer }, align 32
@mlxsw_sp2_acl_bf_crc16_tab = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 -31447, i16 -28805, i16 2642, i16 -25633, i16 7926, i16 5284, i16 -28275, i16 -19817, i16 14270, i16 15852, i16 -18235, i16 10568, i16 -21407, i16 -22989, i16 8986, i16 -8185, i16 25902, i16 28540, i16 -5547, i16 31704, i16 -271, i16 -2909, i16 29066, i16 21136, i16 -10311, i16 -8725, i16 22722, i16 -14001, i16 19558, i16 17972, i16 -15587, i16 17703, i16 -16370, i16 -13732, i16 20341, i16 -8456, i16 23505, i16 20867, i16 -11094, i16 -2128, i16 29337, i16 30923, i16 -542, i16 27759, i16 -5818, i16 -7404, i16 26173, i16 -23264, i16 8201, i16 10843, i16 -20622, i16 16127, i16 -17450, i16 -20092, i16 13485, i16 6071, i16 -28002, i16 -26420, i16 7653, i16 -29592, i16 2369, i16 787, i16 -31174, i16 -30130, i16 3943, i16 1333, i16 -32740, i16 4497, i16 -27464, i16 -24854, i16 7107, i16 14553, i16 -16912, i16 -18526, i16 12939, i16 -23802, i16 9775, i16 11389, i16 -22188, i16 27209, i16 -4256, i16 -6862, i16 24603, i16 -3690, i16 29887, i16 32493, i16 -1084, i16 -10018, i16 24055, i16 22437, i16 -11636, i16 17153, i16 -14808, i16 -13190, i16 18771, i16 -12439, i16 19008, i16 16402, i16 -15045, i16 21686, i16 -11873, i16 -9267, i16 24292, i16 32254, i16 -1833, i16 -3451, i16 30636, i16 -6623, i16 25352, i16 26970, i16 -5005, i16 12142, i16 -21945, i16 -24555, i16 9532, i16 -19279, i16 12696, i16 15306, i16 -16669, i16 -25095, i16 6352, i16 4738, i16 -26709, i16 1574, i16 -31985, i16 -30371, i16 3188, i16 -28235, i16 5276, i16 7886, i16 -25625, i16 2666, i16 -28861, i16 -31471, i16 56, i16 8994, i16 -23029, i16 -21415, i16 10608, i16 -18179, i16 15828, i16 14214, i16 -19793, i16 29106, i16 -2917, i16 -311, i16 31712, i16 -5523, i16 28484, i16 25878, i16 -8129, i16 -15579, i16 17932, i16 19550, i16 -13961, i16 22778, i16 -8749, i16 -10367, i16 21160, i16 -11118, i16 20923, i16 23529, i16 -8512, i16 20301, i16 -13724, i16 -16330, i16 17695, i16 26117, i16 -7380, i16 -5762, i16 27735, i16 -550, i16 30963, i16 29345, i16 -2168, i16 13461, i16 -20036, i16 -17426, i16 16071, i16 -20662, i16 10851, i16 8241, i16 -23272, i16 -31230, i16 811, i16 2425, i16 -29616, i16 7645, i16 -26380, i16 -27994, i16 6031, i16 7163, i16 -24878, i16 -27520, i16 4521, i16 -32732, i16 1293, i16 3935, i16 -30090, i16 -22164, i16 11333, i16 9751, i16 -23746, i16 12979, i16 -18534, i16 -16952, i16 14561, i16 -1028, i16 32469, i16 29831, i16 -3666, i16 24611, i16 -6902, i16 -4264, i16 27249, i16 18795, i16 -13246, i16 -14832, i16 17209, i16 -11596, i16 22429, i16 24015, i16 -10010, i16 24284, i16 -9227, i16 -11865, i16 21646, i16 -15101, i16 16426, i16 19064, i16 -12463, i16 -5045, i16 26978, i16 25392, i16 -6631, i16 30612, i16 -3395, i16 -1809, i16 32198, i16 -16677, i16 15346, i16 12704, i16 -19319, i16 9476, i16 -24531, i16 -21889, i16 12118, i16 3148, i16 -30363, i16 -31945, i16 1566, i16 -26733, i16 4794, i16 6376, i16 -25151], [128 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp4_acl_bf_crc10_tab = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 27, i16 54, i16 45, i16 108, i16 119, i16 90, i16 65, i16 216, i16 195, i16 238, i16 245, i16 180, i16 175, i16 130, i16 153, i16 432, i16 427, i16 390, i16 413, i16 476, i16 455, i16 490, i16 497, i16 360, i16 371, i16 350, i16 325, i16 260, i16 287, i16 306, i16 297, i16 864, i16 891, i16 854, i16 845, i16 780, i16 791, i16 826, i16 801, i16 952, i16 931, i16 910, i16 917, i16 980, i16 975, i16 994, i16 1017, i16 720, i16 715, i16 742, i16 765, i16 700, i16 679, i16 650, i16 657, i16 520, i16 531, i16 574, i16 549, i16 612, i16 639, i16 594, i16 585, i16 731, i16 704, i16 749, i16 758, i16 695, i16 684, i16 641, i16 666, i16 515, i16 536, i16 565, i16 558, i16 623, i16 628, i16 601, i16 578, i16 875, i16 880, i16 861, i16 838, i16 775, i16 796, i16 817, i16 810, i16 947, i16 936, i16 901, i16 926, i16 991, i16 964, i16 1001, i16 1010, i16 443, i16 416, i16 397, i16 406, i16 471, i16 460, i16 481, i16 506, i16 355, i16 376, i16 341, i16 334, i16 271, i16 276, i16 313, i16 290, i16 11, i16 16, i16 61, i16 38, i16 103, i16 124, i16 81, i16 74, i16 211, i16 200, i16 229, i16 254, i16 191, i16 164, i16 137, i16 146, i16 429, i16 438, i16 411, i16 384, i16 449, i16 474, i16 503, i16 492, i16 373, i16 366, i16 323, i16 344, i16 281, i16 258, i16 303, i16 308, i16 29, i16 6, i16 43, i16 48, i16 113, i16 106, i16 71, i16 92, i16 197, i16 222, i16 243, i16 232, i16 169, i16 178, i16 159, i16 132, i16 717, i16 726, i16 763, i16 736, i16 673, i16 698, i16 663, i16 652, i16 533, i16 526, i16 547, i16 568, i16 633, i16 610, i16 591, i16 596, i16 893, i16 870, i16 843, i16 848, i16 785, i16 778, i16 807, i16 828, i16 933, i16 958, i16 915, i16 904, i16 969, i16 978, i16 1023, i16 996, i16 886, i16 877, i16 832, i16 859, i16 794, i16 769, i16 812, i16 823, i16 942, i16 949, i16 920, i16 899, i16 962, i16 985, i16 1012, i16 1007, i16 710, i16 733, i16 752, i16 747, i16 682, i16 689, i16 668, i16 647, i16 542, i16 517, i16 552, i16 563, i16 626, i16 617, i16 580, i16 607, i16 22, i16 13, i16 32, i16 59, i16 122, i16 97, i16 76, i16 87, i16 206, i16 213, i16 248, i16 227, i16 162, i16 185, i16 148, i16 143, i16 422, i16 445, i16 400, i16 395, i16 458, i16 465, i16 508, i16 487, i16 382, i16 357, i16 328, i16 339, i16 274, i16 265, i16 292, i16 319], [128 x i8] zeroinitializer }, align 32
@mlxsw_sp4_acl_bf_crc6_tab = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00-7\1A\03.4\19\06+1\1C\05(2\1F\0C!;\16\0F\228\15\0A'=\10\09$>\13\185/\02\1B6,\01\1E3)\04\1D0*\07\149#\0E\17: \0D\12?%\08\11<&\0B0\1D\07*3\1E\04)6\1B\01,5\18\02/<\11\0B&?\12\08%:\17\0D 9\14\0E#(\05\1F2+\06\1C1.\03\194-\00\1A7$\09\13>'\0A\10=\22\0F\158!\0C\16;\0D :\17\0E#9\14\0B&<\11\08%?\12\01,6\1B\02/5\18\07*0\1D\04)3\1E\158\22\0F\16;!\0C\13>$\09\10='\0A\194.\03\1A7-\00\1F2(\05\1C1+\06=\10\0A'>\13\09$;\16\0C!8\15\0F\221\1C\06+2\1F\05(7\1A\00-4\19\03.%\08\12?&\0B\11<#\0E\149 \0D\17:)\04\1E3*\07\1D0/\02\185,\01\1B6", [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_peabfe\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 505, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"mlxsw_sp2_acl_bf_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 516, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"mlxsw_sp4_acl_bf_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 520, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 33, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3398, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3406, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3415, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3424, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3391, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"chunk_key_offsets\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 215, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"mlxsw_sp2_acl_bf_crc16_tab\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 61, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 368, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"mlxsw_sp4_acl_bf_crc10_tab\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 132, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"mlxsw_sp4_acl_bf_crc6_tab\00", align 1
@___asan_gen_.66 = private constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 171, i32 17 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_reg_peabfe, ptr @mlxsw_sp_acl_bf_init.__key, ptr @.str, ptr @mlxsw_sp2_acl_bf_ops, ptr @mlxsw_sp4_acl_bf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @chunk_key_offsets, ptr @mlxsw_sp2_acl_bf_crc16_tab, ptr @.str.13, ptr @mlxsw_sp4_acl_bf_crc10_tab, ptr @mlxsw_sp4_acl_bf_crc6_tab], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_peabfe to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_bf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_acl_bf_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp4_acl_bf_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunk_key_offsets to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_acl_bf_crc16_tab to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp4_acl_bf_crc10_tab to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp4_acl_bf_crc6_tab to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_bf_entry_add(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %bf, ptr noundef %aregion, i32 noundef %erp_bank, ptr noundef %aentry) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %bf, i32 noundef 0) #8
  %acl_bf_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 32
  %0 = ptrtoint ptr %acl_bf_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_bf_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %bf, ptr noundef %aregion, ptr noundef %aentry) #8
  %conv1 = and i32 %call, 65535
  %bank_size.i = getelementptr inbounds %struct.mlxsw_sp_acl_bf, ptr %bf, i32 0, i32 1
  %4 = ptrtoint ptr %bank_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_size.i, align 4
  %mul.i = mul i32 %5, %erp_bank
  %add.i = add i32 %mul.i, %conv1
  %arrayidx = getelementptr %struct.mlxsw_sp_acl_bf, ptr %bf, i32 0, i32 2, i32 %add.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %8 = phi i32 [ %7, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %arrayidx) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !48

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !48

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %arrayidx, i32 noundef 0) #8
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #8
  br i1 %tobool12.i.i.i.not, label %if.end, label %refcount_inc_not_zero.exit.unlock_crit_edge

refcount_inc_not_zero.exit.unlock_crit_edge:      ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 1040) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end6

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end6:                                          ; preds = %if.end
  %19 = call ptr @memset(ptr %call7.i, i32 0, i32 1040)
  %conv7 = trunc i32 %erp_bank to i8
  call fastcc void @mlxsw_reg_peabfe_rec_pack(ptr noundef nonnull %call7.i, i8 noundef zeroext 1, i8 noundef zeroext %conv7, i32 noundef %conv1)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %call9 = call i32 @mlxsw_reg_write(ptr noundef %21, ptr noundef nonnull @mlxsw_reg_peabfe, ptr noundef nonnull %call7.i) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.unlock_crit_edge

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %arrayidx, align 4
  br label %unlock

unlock:                                           ; preds = %if.end12, %if.end6.unlock_crit_edge, %if.end.unlock_crit_edge, %refcount_inc_not_zero.exit.unlock_crit_edge
  %err.0 = phi i32 [ %call9, %if.end6.unlock_crit_edge ], [ 0, %if.end12 ], [ 0, %refcount_inc_not_zero.exit.unlock_crit_edge ], [ -12, %if.end.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %bf) #8
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_peabfe_rec_pack(ptr nocapture noundef %payload, i8 noundef zeroext %state, i8 noundef zeroext %bank, i32 noundef %bf_index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %payload, align 4
  %2 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %mlxsw_reg_peabfe_size_set.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mlxsw_reg_peabfe_size_set.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and7.i.i = and i32 %1, -512
  %or.i.i = or i32 %and7.i.i, 1
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i.i, ptr %payload, align 4
  br label %if.end

if.end:                                           ; preds = %mlxsw_reg_peabfe_size_set.exit, %entry.if.end_crit_edge
  %conv4 = zext i8 %state to i32
  %spec.select.i.i39 = shl i32 %conv4, 31
  %arrayidx.i.i45 = getelementptr i32, ptr %payload, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i45, align 4
  %and7.i.i47 = and i32 %5, 2147483647
  %or.i.i48 = or i32 %spec.select.i.i39, %and7.i.i47
  store i32 %or.i.i48, ptr %arrayidx.i.i45, align 4
  %conv6 = zext i8 %bank to i32
  %spec.select.i.i67 = shl nuw i32 %conv6, 24
  %and6.i.i72 = and i32 %spec.select.i.i67, 251658240
  %and7.i.i75 = and i32 %or.i.i48, -268435456
  %or.i.i76 = or i32 %and6.i.i72, %and7.i.i75
  %and6.i.i100 = and i32 %bf_index, 16777215
  %arrayidx.i.i101 = getelementptr i32, ptr %payload, i32 4
  %or.i.i104 = or i32 %and6.i.i100, %or.i.i76
  %6 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i104, ptr %arrayidx.i.i101, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_bf_entry_del(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %bf, ptr noundef %aregion, i32 noundef %erp_bank, ptr noundef %aentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %bf, i32 noundef 0) #8
  %acl_bf_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 32
  %0 = ptrtoint ptr %acl_bf_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_bf_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %bf, ptr noundef %aregion, ptr noundef %aentry) #8
  %conv1 = and i32 %call, 65535
  %bank_size.i = getelementptr inbounds %struct.mlxsw_sp_acl_bf, ptr %bf, i32 0, i32 1
  %4 = ptrtoint ptr %bank_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_size.i, align 4
  %mul.i = mul i32 %5, %erp_bank
  %add.i = add i32 %mul.i, %conv1
  %arrayidx = getelementptr %struct.mlxsw_sp_acl_bf, ptr %bf, i32 0, i32 2, i32 %add.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.unlock_crit_edge, label %if.then10.i.i.i, !prof !48

if.end5.i.i.i.unlock_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %arrayidx, i32 noundef 3) #8
  br label %unlock

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 1040) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.unlock_crit_edge, label %if.end

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memset(ptr %call7.i, i32 0, i32 1040)
  %conv6 = trunc i32 %erp_bank to i8
  tail call fastcc void @mlxsw_reg_peabfe_rec_pack(ptr noundef nonnull %call7.i, i8 noundef zeroext 0, i8 noundef zeroext %conv6, i32 noundef %conv1)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %call8 = tail call i32 @mlxsw_reg_write(ptr noundef %10, ptr noundef nonnull @mlxsw_reg_peabfe, ptr noundef nonnull %call7.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %unlock

unlock:                                           ; preds = %if.end, %if.then.unlock_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %bf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_bf_init(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %num_erp_banks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %1, i32 noundef 35) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call3 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 35) #8
  %sh_prom = trunc i64 %call3 to i32
  %mul = shl i32 %num_erp_banks, %sh_prom
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #8
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 96) #8
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %sh_prom
  %bank_size = getelementptr inbounds %struct.mlxsw_sp_acl_bf, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bank_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %bank_size, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @mlxsw_sp_acl_bf_init.__key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end8 ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_bf_fini(ptr noundef %bf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef %bf) #8
  tail call void @kfree(ptr noundef %bf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_bf_index_get(ptr nocapture noundef readnone %bf, ptr nocapture noundef readonly %aregion, ptr nocapture noundef readonly %aentry) #0 align 64 {
entry:
  %bf_key = alloca [69 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 69, ptr nonnull %bf_key) #8
  %0 = call ptr @memset(ptr %bf_key, i32 255, i32 69)
  %region.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %1 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %region.i.i, align 4
  %key_info1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %key_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key_info1.i.i, align 4
  %call.i.i = tail call i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef %4) #8
  %conv2.i.i = and i32 %call.i.i, 255
  %sub.i.i = add nuw nsw i32 %conv2.i.i, 1023
  %5 = lshr i32 %sub.i.i, 2
  %erp_id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %erp_id.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %erp_id.i.i, align 4
  %conv4.i.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %region.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id.i.i, align 4
  %shl.i.i = shl i16 %11, 4
  %or.i.i = or i16 %shl.i.i, %conv4.i.i
  %12 = trunc i32 %5 to i8
  %conv11.i.i = sub nsw i8 2, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv11.i.i)
  %cmp1.i.i = icmp ult i8 %conv11.i.i, 3
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %entry.mlxsw_sp2_acl_bf_key_encode.exit_crit_edge

entry.mlxsw_sp2_acl_bf_key_encode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp2_acl_bf_key_encode.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %13 = zext i8 %conv11.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ %13, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %chunk.03.i.i = phi ptr [ %bf_key, %for.body.lr.ph.i.i ], [ %add.ptr23.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %14 = call ptr @memset(ptr %chunk.03.i.i, i32 0, i32 3)
  %add.ptr.i.i = getelementptr i8, ptr %chunk.03.i.i, i32 3
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %or.i.i, ptr %add.ptr.i.i, align 1
  %add.ptr18.i.i = getelementptr i8, ptr %chunk.03.i.i, i32 5
  %arrayidx.i.i = getelementptr [3 x i8], ptr @chunk_key_offsets, i32 0, i32 %indvars.iv.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom19.i.i = zext i8 %17 to i32
  %arrayidx20.i.i = getelementptr %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 3, i32 %idxprom19.i.i
  %18 = call ptr @memcpy(ptr %add.ptr18.i.i, ptr %arrayidx20.i.i, i32 18)
  %add.ptr23.i.i = getelementptr i8, ptr %chunk.03.i.i, i32 23
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %lftr.wideiv.i.i = trunc i32 %indvars.iv.next.i.i to i8
  %exitcond.not.i.i = icmp eq i8 %lftr.wideiv.i.i, 3
  br i1 %exitcond.not.i.i, label %for.body.i.i.mlxsw_sp2_acl_bf_key_encode.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.mlxsw_sp2_acl_bf_key_encode.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp2_acl_bf_key_encode.exit

mlxsw_sp2_acl_bf_key_encode.exit:                 ; preds = %for.body.i.i.mlxsw_sp2_acl_bf_key_encode.exit_crit_edge, %entry.mlxsw_sp2_acl_bf_key_encode.exit_crit_edge
  %19 = mul nuw nsw i32 %5, 23
  %conv26.i.i = add nuw nsw i32 %19, 23
  %conv = and i32 %conv26.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not2.i = icmp eq i32 %conv, 0
  br i1 %tobool.not2.i, label %mlxsw_sp2_acl_bf_key_encode.exit.mlxsw_sp2_acl_bf_crc.exit_crit_edge, label %mlxsw_sp2_acl_bf_key_encode.exit.while.body.i_crit_edge

mlxsw_sp2_acl_bf_key_encode.exit.while.body.i_crit_edge: ; preds = %mlxsw_sp2_acl_bf_key_encode.exit
  br label %while.body.i

mlxsw_sp2_acl_bf_key_encode.exit.mlxsw_sp2_acl_bf_crc.exit_crit_edge: ; preds = %mlxsw_sp2_acl_bf_key_encode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp2_acl_bf_crc.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mlxsw_sp2_acl_bf_key_encode.exit.while.body.i_crit_edge
  %crc.05.i = phi i16 [ %xor4.i.i, %while.body.i.while.body.i_crit_edge ], [ 0, %mlxsw_sp2_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %len.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %mlxsw_sp2_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %buffer.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %bf_key, %mlxsw_sp2_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.04.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.03.i, i32 1
  %20 = ptrtoint ptr %buffer.addr.03.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buffer.addr.03.i, align 1
  %shl.i.i3 = shl i16 %crc.05.i, 8
  %22 = lshr i16 %crc.05.i, 8
  %23 = zext i16 %22 to i32
  %conv2.i.i4 = zext i8 %21 to i32
  %xor.i.i = xor i32 %conv2.i.i4, %23
  %arrayidx.i.i5 = getelementptr [256 x i16], ptr @mlxsw_sp2_acl_bf_crc16_tab, i32 0, i32 %xor.i.i
  %24 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i.i5, align 2
  %xor4.i.i = xor i16 %25, %shl.i.i3
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %mlxsw_sp2_acl_bf_crc.exit.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

mlxsw_sp2_acl_bf_crc.exit.loopexit:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = zext i16 %xor4.i.i to i32
  br label %mlxsw_sp2_acl_bf_crc.exit

mlxsw_sp2_acl_bf_crc.exit:                        ; preds = %mlxsw_sp2_acl_bf_crc.exit.loopexit, %mlxsw_sp2_acl_bf_key_encode.exit.mlxsw_sp2_acl_bf_crc.exit_crit_edge
  %crc.0.lcssa.i = phi i32 [ 0, %mlxsw_sp2_acl_bf_key_encode.exit.mlxsw_sp2_acl_bf_crc.exit_crit_edge ], [ %phi.cast, %mlxsw_sp2_acl_bf_crc.exit.loopexit ]
  call void @llvm.lifetime.end.p0(i64 69, ptr nonnull %bf_key) #8
  ret i32 %crc.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp4_acl_bf_index_get(ptr nocapture noundef readnone %bf, ptr nocapture noundef readonly %aregion, ptr nocapture noundef readonly %aentry) #0 align 64 {
entry:
  %bf_key = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %bf_key) #8
  %0 = call ptr @memset(ptr %bf_key, i32 0, i32 60)
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %1 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %region.i, align 4
  %key_info1.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %key_info1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key_info1.i, align 4
  %call.i = tail call i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef %4) #8
  %conv2.i = and i32 %call.i, 255
  %sub.i = add nuw nsw i32 %conv2.i, 1023
  %5 = lshr i32 %sub.i, 2
  %6 = trunc i32 %5 to i8
  %7 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %region.i, align 4
  %key_info1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %key_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key_info1.i.i, align 4
  %call.i.i = tail call i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef %10) #8
  %conv2.i.i = and i32 %call.i.i, 255
  %sub.i.i = add nuw nsw i32 %conv2.i.i, 1023
  %11 = lshr i32 %sub.i.i, 2
  %erp_id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %erp_id.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %erp_id.i.i, align 4
  %conv4.i.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %region.i, align 4
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id.i.i, align 4
  %shl.i.i = shl i16 %17, 4
  %or.i.i = or i16 %shl.i.i, %conv4.i.i
  %18 = trunc i32 %11 to i8
  %conv11.i.i = sub nsw i8 2, %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv11.i.i)
  %cmp1.i.i = icmp ult i8 %conv11.i.i, 3
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %entry.__mlxsw_sp_acl_bf_key_encode.exit.i_crit_edge

entry.__mlxsw_sp_acl_bf_key_encode.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_acl_bf_key_encode.exit.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %19 = zext i8 %conv11.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ %19, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %chunk.03.i.i = phi ptr [ %bf_key, %for.body.lr.ph.i.i ], [ %add.ptr23.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %chunk.03.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %or.i.i, ptr %chunk.03.i.i, align 1
  %add.ptr18.i.i = getelementptr i8, ptr %chunk.03.i.i, i32 2
  %arrayidx.i.i = getelementptr [3 x i8], ptr @chunk_key_offsets, i32 0, i32 %indvars.iv.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom19.i.i = zext i8 %22 to i32
  %arrayidx20.i.i = getelementptr %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 3, i32 %idxprom19.i.i
  %23 = call ptr @memcpy(ptr %add.ptr18.i.i, ptr %arrayidx20.i.i, i32 18)
  %add.ptr23.i.i = getelementptr i8, ptr %chunk.03.i.i, i32 20
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %lftr.wideiv.i.i = trunc i32 %indvars.iv.next.i.i to i8
  %exitcond.not.i.i = icmp eq i8 %lftr.wideiv.i.i, 3
  br i1 %exitcond.not.i.i, label %for.body.i.i.__mlxsw_sp_acl_bf_key_encode.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.__mlxsw_sp_acl_bf_key_encode.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_acl_bf_key_encode.exit.i

__mlxsw_sp_acl_bf_key_encode.exit.i:              ; preds = %for.body.i.i.__mlxsw_sp_acl_bf_key_encode.exit.i_crit_edge, %entry.__mlxsw_sp_acl_bf_key_encode.exit.i_crit_edge
  %24 = mul nuw nsw i32 %11, 20
  %conv26.i.i = add nuw nsw i32 %24, 20
  %25 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %sw.default.i.i [
    i8 1, label %__mlxsw_sp_acl_bf_key_encode.exit.i.for.body.i.i.i_crit_edge
    i8 2, label %sw.bb1.i.i
  ]

__mlxsw_sp_acl_bf_key_encode.exit.i.for.body.i.i.i_crit_edge: ; preds = %__mlxsw_sp_acl_bf_key_encode.exit.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %__mlxsw_sp_acl_bf_key_encode.exit.i.for.body.i.i.i_crit_edge
  %i.01.i.i.i = phi i32 [ %dec.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 19, %__mlxsw_sp_acl_bf_key_encode.exit.i.for.body.i.i.i_crit_edge ]
  %add.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  %arrayidx.i.i.i = getelementptr i8, ptr %bf_key, i32 %add.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv31.i.i.i = and i8 %27, 63
  %arrayidx32.i.i.i = getelementptr i8, ptr %bf_key, i32 %i.01.i.i.i
  %28 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32.i.i.i, align 1
  %shl.i.i.i = shl i8 %29, 6
  %conv39.i.i.i = or i8 %shl.i.i.i, %conv31.i.i.i
  store i8 %conv39.i.i.i, ptr %arrayidx.i.i.i, align 1
  %30 = lshr i8 %29, 2
  store i8 %30, ptr %arrayidx32.i.i.i, align 1
  %dec.i.i.i = add nsw i32 %i.01.i.i.i, -1
  %cmp27.not.i.i.i = icmp eq i32 %i.01.i.i.i, 0
  br i1 %cmp27.not.i.i.i, label %for.body.i.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp4_acl_bf_key_encode.exit

sw.bb1.i.i:                                       ; preds = %__mlxsw_sp_acl_bf_key_encode.exit.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %bf_key, i32 20
  br label %for.body.i38.i.i

for.body.i38.i.i:                                 ; preds = %for.body.i38.i.i.for.body.i38.i.i_crit_edge, %sw.bb1.i.i
  %i.01.i26.i.i = phi i32 [ 19, %sw.bb1.i.i ], [ %dec.i36.i.i, %for.body.i38.i.i.for.body.i38.i.i_crit_edge ]
  %add.i27.i.i = add nuw nsw i32 %i.01.i26.i.i, 1
  %arrayidx.i28.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i27.i.i
  %31 = ptrtoint ptr %arrayidx.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i28.i.i, align 1
  %conv31.i29.i.i = and i8 %32, 63
  %arrayidx32.i30.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.01.i26.i.i
  %33 = ptrtoint ptr %arrayidx32.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx32.i30.i.i, align 1
  %shl.i32.i.i = shl i8 %34, 6
  %conv39.i33.i.i = or i8 %shl.i32.i.i, %conv31.i29.i.i
  store i8 %conv39.i33.i.i, ptr %arrayidx.i28.i.i, align 1
  %35 = lshr i8 %34, 2
  store i8 %35, ptr %arrayidx32.i30.i.i, align 1
  %dec.i36.i.i = add nsw i32 %i.01.i26.i.i, -1
  %cmp27.not.i37.i.i = icmp eq i32 %i.01.i26.i.i, 0
  br i1 %cmp27.not.i37.i.i, label %for.body.i38.i.i.for.body.i52.i.i_crit_edge, label %for.body.i38.i.i.for.body.i38.i.i_crit_edge

for.body.i38.i.i.for.body.i38.i.i_crit_edge:      ; preds = %for.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i38.i.i

for.body.i38.i.i.for.body.i52.i.i_crit_edge:      ; preds = %for.body.i38.i.i
  br label %for.body.i52.i.i

for.body.i52.i.i:                                 ; preds = %for.body.i52.i.i.for.body.i52.i.i_crit_edge, %for.body.i38.i.i.for.body.i52.i.i_crit_edge
  %i.01.i40.i.i = phi i32 [ %dec.i50.i.i, %for.body.i52.i.i.for.body.i52.i.i_crit_edge ], [ 19, %for.body.i38.i.i.for.body.i52.i.i_crit_edge ]
  %add.i41.i.i = add nuw nsw i32 %i.01.i40.i.i, 1
  %arrayidx.i42.i.i = getelementptr i8, ptr %bf_key, i32 %add.i41.i.i
  %36 = ptrtoint ptr %arrayidx.i42.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i42.i.i, align 1
  %conv31.i43.i.i = and i8 %37, 15
  %arrayidx32.i44.i.i = getelementptr i8, ptr %bf_key, i32 %i.01.i40.i.i
  %38 = ptrtoint ptr %arrayidx32.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx32.i44.i.i, align 1
  %shl.i46.i.i = shl i8 %39, 4
  %conv39.i47.i.i = or i8 %shl.i46.i.i, %conv31.i43.i.i
  store i8 %conv39.i47.i.i, ptr %arrayidx.i42.i.i, align 1
  %40 = lshr i8 %39, 4
  store i8 %40, ptr %arrayidx32.i44.i.i, align 1
  %dec.i50.i.i = add nsw i32 %i.01.i40.i.i, -1
  %cmp27.not.i51.i.i = icmp eq i32 %i.01.i40.i.i, 0
  br i1 %cmp27.not.i51.i.i, label %for.body.i52.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge, label %for.body.i52.i.i.for.body.i52.i.i_crit_edge

for.body.i52.i.i.for.body.i52.i.i_crit_edge:      ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i52.i.i

for.body.i52.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge: ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp4_acl_bf_key_encode.exit

sw.default.i.i:                                   ; preds = %__mlxsw_sp_acl_bf_key_encode.exit.i
  %41 = add i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %41)
  %cmp.i.i = icmp ult i8 %41, -4
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.default.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge, !prof !52

sw.default.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp4_acl_bf_key_encode.exit

do.end.i.i:                                       ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 368, i32 noundef 9, ptr noundef null) #8
  br label %mlxsw_sp4_acl_bf_key_encode.exit

mlxsw_sp4_acl_bf_key_encode.exit:                 ; preds = %do.end.i.i, %sw.default.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge, %for.body.i52.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge, %for.body.i.i.i.mlxsw_sp4_acl_bf_key_encode.exit_crit_edge
  %conv = and i32 %conv26.i.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not15.i = icmp eq i32 %conv, 0
  br i1 %tobool.not15.i, label %mlxsw_sp4_acl_bf_key_encode.exit.mlxsw_sp4_acl_bf_crc.exit_crit_edge, label %mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge

mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge: ; preds = %mlxsw_sp4_acl_bf_key_encode.exit
  br label %while.body.i

mlxsw_sp4_acl_bf_key_encode.exit.mlxsw_sp4_acl_bf_crc.exit_crit_edge: ; preds = %mlxsw_sp4_acl_bf_key_encode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp4_acl_bf_crc.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge
  %crc_col.019.off0.i = phi i8 [ %shl5.i.i, %while.body.i.while.body.i_crit_edge ], [ 0, %mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %crc_row.018.i = phi i16 [ %and6.i.i, %while.body.i.while.body.i_crit_edge ], [ 0, %mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %len.addr.017.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %buffer.addr.016.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %bf_key, %mlxsw_sp4_acl_bf_key_encode.exit.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.017.i, -1
  %42 = ptrtoint ptr %buffer.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buffer.addr.016.i, align 1
  %44 = lshr i16 %crc_row.018.i, 2
  %45 = trunc i16 %44 to i8
  %conv2.i.i3 = xor i8 %43, %45
  %shl.i.i4 = shl i16 %crc_row.018.i, 8
  %idxprom.i.i = zext i8 %conv2.i.i3 to i32
  %arrayidx.i.i5 = getelementptr [256 x i16], ptr @mlxsw_sp4_acl_bf_crc10_tab, i32 0, i32 %idxprom.i.i
  %46 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i.i5, align 2
  %xor5.i.i = xor i16 %47, %shl.i.i4
  %and6.i.i = and i16 %xor5.i.i, 1023
  %conv2.i11.i = xor i8 %43, %crc_col.019.off0.i
  %idxprom.i13.i = zext i8 %conv2.i11.i to i32
  %arrayidx.i14.i = getelementptr [256 x i8], ptr @mlxsw_sp4_acl_bf_crc6_tab, i32 0, i32 %idxprom.i13.i
  %48 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i14.i, align 1
  %shl5.i.i = shl i8 %49, 2
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.016.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i6 = zext i8 %49 to i16
  %phi.bo.i = shl i16 %conv4.i.i6, 10
  %50 = or i16 %phi.bo.i, %and6.i.i
  %phi.cast = zext i16 %50 to i32
  br label %mlxsw_sp4_acl_bf_crc.exit

mlxsw_sp4_acl_bf_crc.exit:                        ; preds = %while.end.loopexit.i, %mlxsw_sp4_acl_bf_key_encode.exit.mlxsw_sp4_acl_bf_crc.exit_crit_edge
  %or.i = phi i32 [ %phi.cast, %while.end.loopexit.i ], [ 0, %mlxsw_sp4_acl_bf_key_encode.exit.mlxsw_sp4_acl_bf_crc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %bf_key) #8
  ret i32 %or.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @mlxsw_sp_acl_bf_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 505, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlxsw_sp2_acl_bf_ops, !4, !"mlxsw_sp2_acl_bf_ops", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 516, i32 34}
!5 = !{ptr @mlxsw_sp4_acl_bf_ops, !6, !"mlxsw_sp4_acl_bf_ops", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 520, i32 34}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__mlxsw_item_offset._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @__mlxsw_item_offset._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3398, i32 1}
!15 = distinct !{null, !14, !"mlxsw_reg_peabfe_size_item", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3406, i32 1}
!18 = distinct !{null, !17, !"mlxsw_reg_peabfe_bf_entry_state_item", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3415, i32 1}
!21 = distinct !{null, !20, !"mlxsw_reg_peabfe_bf_entry_bank_item", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3424, i32 1}
!24 = distinct !{null, !23, !"mlxsw_reg_peabfe_bf_entry_index_item", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3391, i32 1}
!27 = !{ptr @mlxsw_reg_peabfe, !26, !"mlxsw_reg_peabfe", i1 false, i1 false}
!28 = !{ptr @chunk_key_offsets, !29, !"chunk_key_offsets", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 215, i32 17}
!30 = !{ptr @mlxsw_sp2_acl_bf_crc16_tab, !31, !"mlxsw_sp2_acl_bf_crc16_tab", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 61, i32 18}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 368, i32 3}
!34 = !{ptr @mlxsw_sp4_acl_bf_crc10_tab, !35, !"mlxsw_sp4_acl_bf_crc10_tab", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 132, i32 18}
!36 = !{ptr @mlxsw_sp4_acl_bf_crc6_tab, !37, !"mlxsw_sp4_acl_bf_crc6_tab", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_bloom_filter.c", i32 171, i32 17}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 1060719, i64 1060743, i64 1060764, i64 1060781, i64 1060798}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148664761}
!50 = !{i64 2148579201, i64 2148579233, i64 2148579262, i64 2148579296, i64 2148579327, i64 2148579350}
!51 = !{i64 2149860996}
!52 = !{!"branch_weights", i32 1, i32 2000}
