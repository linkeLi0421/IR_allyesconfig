; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_therm_clkgate_pack = type { ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.138, %struct.anon.144, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.145], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.138 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.142, %struct.anon.143, %struct.nvkm_engine }
%struct.anon.142 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { i32, ptr, i32, i8 }
%struct.anon.144 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.145 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gk110_gr_init_fe_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211056, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211124, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_gr_init_ds_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217088, i8 1, i32 4, i32 65280 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217128, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_gr_init_sked_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4222992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4223040, i8 1, i32 4, i32 -2143026140 }, %struct.gf100_gr_init { i32 4223048, i8 1, i32 4, i32 10 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_gr_init_cwd_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4217668, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217680, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk110_gr_init_gpc_unk_1 = dso_local constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295976, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296448, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296480, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296220, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk110_gr_init_tex_0 = dso_local constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299500, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299452, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299432, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_gr_init_sm_0 = dso_local constant { [13 x %struct.gf100_gr_init], [48 x i8] } { [13 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300516, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300544, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300496, i8 1, i32 4, i32 12852 }, %struct.gf100_gr_init { i32 4300660, i8 1, i32 4, i32 87381 }, %struct.gf100_gr_init { i32 4300672, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk110_grhub_data = internal global { [193 x i32], [220 x i8] } { [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], [220 x i8] zeroinitializer }, align 32
@gk110_gr_fecs_ucode = dso_local global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gk110_grhub_code, i32 3072 }, %struct.nvkm_blob { ptr @gk110_grhub_data, i32 772 } }, [16 x i8] zeroinitializer }, align 32
@gk110_gr_gpccs_ucode = dso_local global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gk110_grgpc_code, i32 1792 }, %struct.nvkm_blob { ptr @gk110_grgpc_data, i32 108 } }, [16 x i8] zeroinitializer }, align 32
@gk110_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gk110_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gk110_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk110_grhub_code = internal global { <{ [707 x i32], [61 x i32] }>, [768 x i8] } { <{ [707 x i32], [61 x i32] }> <{ [707 x i32] [i32 60493557, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812535, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812535, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 922748913, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 922748913, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 133234936, i32 66061568, i32 1036290, i32 -135265091, i32 520449, i32 50589703, i32 -1124069424, i32 -1124009980, i32 523780, i32 1107302385, i32 -822078480, i32 300351505, i32 347472137, i32 1375752, i32 -251516944, i32 -267255801, i32 47185923, i32 -251347712, i32 -33109993, i32 616366096, i32 117442545, i32 -805305360, i32 79495170, i32 537077745, i32 16779249, i32 -805239824, i32 79495170, i32 537143281, i32 17041393, i32 -805239824, i32 79495170, i32 537602033, i32 17303537, i32 -805239824, i32 79495170, i32 537667569, i32 18614257, i32 -805239824, i32 79495170, i32 -251591790, i32 -267845625, i32 63963907, i32 -251347712, i32 -259587033, i32 133234723, i32 66061312, i32 184320, i32 670041277, i32 520452, i32 258051, i32 -1124072752, i32 271709188, i32 -1778063375, i32 -197073936, i32 -21403615, i32 -1863203070, i32 -268238464, i32 260055028, i32 18345986, i32 -1241243717, i32 133234962, i32 66061056, i32 118785, i32 133235901, i32 66061312, i32 118785, i32 401671357, i32 -135266048, i32 -618531582, i32 -316541689, i32 284684295, i32 138027509, i32 -1744826728, i32 569704719, i32 345309520, i32 520456, i32 17035456, i32 -1124072240, i32 520452, i32 17035457, i32 -1124072240, i32 3192580, i32 2079507, i32 -251464266, i32 -254607353, i32 265289987, i32 -1241203456, i32 280365077, i32 135575041, i32 -184410183, i32 -1157442783, i32 60293151, i32 4714754, i32 1346629664, i32 134500000, i32 -201187399, i32 1319148833, i32 -188940020, i32 -1600314892, i32 -201259954, i32 1319148833, i32 -135266048, i32 -1658719230, i32 134237856, i32 -932699660, i32 200548351, i32 72261882, i32 1747055624, i32 -1224728645, i32 -1233125312, i32 468975922, i32 16249022, i32 138027509, i32 -184485904, i32 -251143391, i32 -268369913, i32 30409219, i32 -1123762944, i32 521793556, i32 805308401, i32 -805174288, i32 79495169, i32 -201316108, i32 -672137167, i32 958526480, i32 -1309408780, i32 -180354588, i32 -1124013797, i32 77197460, i32 922748913, i32 -805174288, i32 79495177, i32 -1073735695, i32 -821947408, i32 670105617, i32 602980608, i32 2281218, i32 -182512696, i32 -939489013, i32 200548131, i32 -1189021342, i32 -1799552494, i32 -251160080, i32 -264830969, i32 164626947, i32 -201016064, i32 838074674, i32 102888706, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 553387197, i32 -1712286531, i32 520454, i32 33812535, i32 -1124070960, i32 20050948, i32 168174069, i32 -1712286531, i32 520454, i32 33812503, i32 -1124070960, i32 856617988, i32 314122489, i32 20116482, i32 -184405260, i32 -66451935, i32 520480, i32 33812672, i32 -1124072752, i32 319747076, i32 -199285816, i32 838077707, i32 36893697, i32 168174069, i32 -251582480, i32 -255655929, i32 47186435, i32 -1123762944, i32 77197460, i32 385878001, i32 -805174288, i32 79495177, i32 -15855883, i32 -201202512, i32 -222753509, i32 -1641941758, i32 1175385097, i32 -201136976, i32 -1799540197, i32 -251160080, i32 -264830969, i32 164626947, i32 -201016064, i32 854851890, i32 102888706, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 250873021, i32 284136465, i32 -184420880, i32 -184320479, i32 -1107379442, i32 522842148, i32 805308401, i32 -805174288, i32 79495170, i32 -22671627, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265286668, i32 -403631913, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 11581188, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16821220, i32 -267580428, i32 -403631913, i32 569655297, i32 11265028, i32 1812722692, i32 118024177, i32 -197073936, i32 -4626399, i32 520450, i32 33812484, i32 -1124069424, i32 82309380, i32 1088679943, i32 -1184357900, i32 133235455, i32 66061056, i32 1036290, i32 -20511555, i32 49189968, i32 117503985, i32 -1153371152, i32 569639151, i32 520552, i32 33812482, i32 -1124069424, i32 66580484, i32 58597877, i32 16824305, i32 -251478087, i32 -268352281, i32 569655523, i32 79163805, i32 -5194491, i32 200586411, i32 520463, i32 50589703, i32 -1124070448, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 -4648715, i32 1894248706, i32 1088680001, i32 -123919884, i32 1894248704, i32 1088680001, i32 -1184357900, i32 -185597185, i32 -266603504, i32 -403635976, i32 -437255680, i32 551940160, i32 -250550800, i32 -259719161, i32 248512771, i32 -268124928, i32 -222951177, i32 -48499711, i32 67167729, i32 16836081, i32 -2063595535, i32 -805239824, i32 79495182, i32 133234936, i32 66069248, i32 1036290, i32 -4651843, i32 350744834, i32 1088680074, i32 -1180884492, i32 -403635457, i32 -470767476, i32 -1658719167, i32 133234936, i32 66094080, i32 1036290, i32 -135199555, i32 -202341376, i32 16764674, i32 -200933379, i32 16315163, i32 -1712286531, i32 520453, i32 33812535, i32 -1124070960, i32 212332548, i32 -1110433292, i32 520692, i32 33812617, i32 -1124069424, i32 520452, i32 33812673, i32 -1124072752, i32 520452, i32 33812611, i32 -1124072752, i32 133689348, i32 140648949, i32 -1073739791, i32 -805174288, i32 79495170, i32 -268432386, i32 615915306, i32 35698180, i32 -1712286531, i32 520456, i32 33812535, i32 -1124070960, i32 520452, i32 33812609, i32 -1124072752, i32 2617604, i32 2355456, i32 36040832, i32 -2013263887, i32 -805174288, i32 79495170, i32 -250603536, i32 -268304345, i32 318374435, i32 -1123813371, i32 144306324, i32 385878001, i32 -805174288, i32 79495177, i32 -1233059432, i32 43522068, i32 136689280, i32 -2147151107, i32 -1799547391, i32 -251029008, i32 -264830969, i32 164626947, i32 -251347712, i32 -259981305, i32 30409219, i32 -268124928, i32 133234983, i32 66095104, i32 184322, i32 401671357, i32 334496000, i32 84015622, i32 -1799552008, i32 -251029008, i32 -266928121, i32 164626947, i32 -1123762944, i32 93974676, i32 385878001, i32 -805174288, i32 79495177, i32 569704696, i32 -1477441408, i32 -803081204, i32 -184158224, i32 -133668319, i32 1090754560, i32 -2130704399, i32 -805174288, i32 79495171, i32 885273789, i32 253490431, i32 33576945, i32 -100248592, i32 66585909, i32 -1736421736, i32 569672015, i32 137410205, i32 -201256266, i32 60350235, i32 520470, i32 33812609, i32 -1124072496, i32 1073774596, i32 16783345, i32 -100264976, i32 66586113, i32 -403701512, i32 520452, i32 50589698, i32 -1124069680, i32 15200516, i32 65269760, i32 -251597105, i32 -199229212, i32 301265435, i32 218297350, i32 -183437328, i32 -200787423, i32 -135259119, i32 -618531582, i32 -316541689, i32 35779847, i32 -168510200, i32 -184034527, i32 -1744273375, i32 616371713, i32 83888113, i32 -805239824, i32 79495170, i32 -251519047, i32 -257621785, i32 569655779, i32 33353885, i32 -1241371408, i32 -218300124, i32 50313477, i32 -1526405135, i32 -197008400, i32 569744673, i32 616366698, i32 1207699441, i32 -805174288, i32 79495170, i32 -1241436944, i32 133235488, i32 66079484, i32 184322, i32 -1393556291, i32 111538177, i32 -1744783376, i32 228065292, i32 15200257, i32 24060405, i32 -183982096, i32 -184479711, i32 -201171423, i32 -1477438719, i32 -803081204, i32 -184158224, i32 -200777183, i32 -135254526, i32 -618531582, i32 -168510201, i32 -184010207, i32 -184385759, i32 -1123554015, i32 -618531340, i32 269612039, i32 -46136936, i32 200541457, i32 -1323174649, i32 63497], [61 x i32] zeroinitializer }>, [768 x i8] zeroinitializer }, align 32
@gk110_grgpc_code = internal global { <{ [431 x i32], [17 x i32] }>, [448 x i8] } { <{ [431 x i32], [17 x i32] }> <{ [431 x i32] [i32 60886773, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812535, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812535, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 922748913, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 922748913, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 -520552200, i32 -251461703, i32 -258468633, i32 569655523, i32 33026205, i32 -251461703, i32 -258204441, i32 569655523, i32 -119472995, i32 -251347712, i32 -264110057, i32 298778643, i32 152168192, i32 135575041, i32 -268430082, i32 133235239, i32 66064896, i32 184320, i32 401671357, i32 285082949, i32 520448, i32 258055, i32 -1124073264, i32 69726212, i32 67110897, i32 -805305360, i32 79495170, i32 -250596876, i32 -259915737, i32 583991587, i32 20443136, i32 -1155586832, i32 850789426, i32 84049921, i32 -251264128, i32 -259653593, i32 583991587, i32 67272704, i32 -250665802, i32 -255262713, i32 47186179, i32 -251347712, i32 -267636505, i32 -437235485, i32 -1121665791, i32 -196821708, i32 -156211167, i32 252441600, i32 -1157498896, i32 1341981938, i32 19969541, i32 -1241440074, i32 649069792, i32 -501484542, i32 -2147024000, i32 670107652, i32 602931456, i32 2281218, i32 630535357, i32 520456, i32 17035456, i32 -1124071984, i32 520452, i32 17035457, i32 -1124071984, i32 956420, i32 -184479848, i32 -1157541855, i32 1069219887, i32 17733632, i32 -184414312, i32 -1744744415, i32 -268630770, i32 3062528, i32 -1744814405, i32 261620238, i32 1344402691, i32 118396929, i32 -1157566467, i32 1052442670, i32 37074432, i32 -754972687, i32 -805239824, i32 79495171, i32 -1240980042, i32 548800053, i32 19969537, i32 -1240980298, i32 800655412, i32 -752749310, i32 3128066, i32 -251641925, i32 -268369913, i32 63963651, i32 -1123762944, i32 522842148, i32 805308401, i32 -805174288, i32 79495170, i32 -201316108, i32 -672137167, i32 958526500, i32 -1326185996, i32 418645220, i32 25296414, i32 -1123670032, i32 68353312, i32 -50207562, i32 419300638, i32 19002624, i32 -653331450, i32 -267325548, i32 569704949, i32 250872702, i32 -117376564, i32 25755264, i32 -1862696711, i32 -1325817607, i32 -520498951, i32 79556857, i32 33597425, i32 -822041616, i32 -1413218134, i32 738980868, i32 -249243664, i32 -266731289, i32 -288423709, i32 16249088, i32 15986713, i32 -201261105, i32 -403700703, i32 520449, i32 258077, i32 -1124069680, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 244842999, i32 83802884, i32 -251461703, i32 -258729753, i32 569655523, i32 -268371811, i32 133243127, i32 66094336, i32 1036289, i32 -403700547, i32 31634952, i32 -235070476, i32 -251133707, i32 -251526923, i32 -259719161, i32 265289987, i32 -133907200, i32 520448, i32 33812609, i32 -1124069424, i32 118617092, i32 97722869, i32 40509941, i32 133244093, i32 66078716, i32 184322, i32 753927357, i32 52475393, i32 1258031089, i32 -805174288, i32 79495170, i32 -268325648, i32 -1208941915, i32 -1276116992, i32 67934288, i32 -1156594506, i32 211288252, i32 17668096, i32 -184490000, i32 -268341471, i32 -1208942164, i32 -1276100608, i32 67934288, i32 -1156594506, i32 211288252, i32 34445313, i32 -251261032, i32 -184024857, i32 -268341471, i32 -1510997588, i32 12054788, i32 1353969712, i32 -1241248616, i32 -1128591420, i32 34379776, i32 -1744630376, i32 -403634161, i32 569704960, i32 569704815, i32 32768606, i32 118682630, i32 41886197, i32 96150005, i32 248], [17 x i32] zeroinitializer }>, [448 x i8] zeroinitializer }, align 32
@gk110_grgpc_data = internal global { <{ i32, i32, i32, i32, [23 x i32] }>, [52 x i8] } { <{ i32, i32, i32, i32, [23 x i32] }> <{ i32 108, i32 108, i32 108, i32 108, [23 x i32] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@gk110_gr_pack_mmio = internal constant { [31 x %struct.gf100_gr_pack], [40 x i8] } { [31 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk104_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_sked_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gk110_clkgate_pack = internal constant { [38 x %struct.nvkm_therm_clkgate_pack], [40 x i8] } { [38 x %struct.nvkm_therm_clkgate_pack] [%struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_main_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rstr2d_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gcc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_blcg_init_sked_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_unk_1 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_ctxctl_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_esetup_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_tpbus_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_zcull_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_tpconf_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_unk_1 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_blcg_init_gpc_gcc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_ffb_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_tex_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_poly_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_blcg_init_gpc_l1c_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_unk_2 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_blcg_init_gpc_mp_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_ppc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rop_zrop_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rop_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rop_crop_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_pxbar_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_main_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_sked_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_ctxctl_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_esetup_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_zcull_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_l1c_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_unk_1 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_mp_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_gpc_ppc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk110_clkgate_slcg_init_pcounter_0 }, %struct.nvkm_therm_clkgate_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gk110_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr @gk110_gr_init_419eb4, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gk110_gr_pack_mmio, %struct.anon { ptr @gk110_gr_fecs_ucode }, %struct.anon.0 { ptr @gk110_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 2, ptr @gk110_grctx, ptr @gk110_clkgate_pack, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41367, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41408, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gk104_gr_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_setup_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_gpc_unk_2 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_l1c_0 = internal constant { [11 x %struct.gf100_gr_init], [48 x i8] } { [11 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299944, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4299956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299960, i8 1, i32 4, i32 11570154 }, %struct.gf100_gr_init { i32 4299908, i8 1, i32 4, i32 66436 }, %struct.gf100_gr_init { i32 4299964, i8 1, i32 4, i32 672872006 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299904, i8 1, i32 4, i32 131632 }, %struct.gf100_gr_init { i32 4299980, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_pes_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_wwdx_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_cbm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_clkgate_blcg_init_main_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_rstr2d_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_unk_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gcc_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk110_clkgate_blcg_init_sked_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4222976, i8 1, i32 16449 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_unk_1 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_ctxctl_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_unk_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_esetup_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_tpbus_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_zcull_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_tpconf_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_unk_1 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk110_clkgate_blcg_init_gpc_gcc_0 = internal constant { [3 x %struct.nvkm_therm_clkgate_init], [60 x i8] } { [3 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4296736, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init { i32 4296760, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_ffb_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_tex_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_gpc_poly_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk110_clkgate_blcg_init_gpc_l1c_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4299988, i8 2, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_unk_2 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk110_clkgate_blcg_init_gpc_mp_0 = internal constant { [7 x %struct.nvkm_therm_clkgate_init], [44 x i8] } { [7 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4300752, i8 1, i32 16451 }, %struct.nvkm_therm_clkgate_init { i32 4300760, i8 1, i32 16457 }, %struct.nvkm_therm_clkgate_init { i32 4300768, i8 2, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4300784, i8 1, i32 70 }, %struct.nvkm_therm_clkgate_init { i32 4300792, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4300688, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [44 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_ppc_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_rop_zrop_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_rop_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_rop_crop_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_clkgate_blcg_init_pxbar_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk110_clkgate_slcg_init_main_0 = internal constant { [3 x %struct.nvkm_therm_clkgate_init], [60 x i8] } { [3 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4211188, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init { i32 4233364, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_unk_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4218884, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_sked_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4222980, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_ctxctl_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4302996, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_unk_0 = internal constant { [4 x %struct.nvkm_therm_clkgate_init], [48 x i8] } { [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4293892, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init { i32 4294156, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init { i32 4294284, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_esetup_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4294700, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_zcull_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4295028, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_l1c_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4299992, i8 2, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_unk_1 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4299892, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_mp_0 = internal constant { [5 x %struct.nvkm_therm_clkgate_init], [36 x i8] } { [5 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4300756, i8 1, i32 19018 }, %struct.nvkm_therm_clkgate_init { i32 4300764, i8 1, i32 20 }, %struct.nvkm_therm_clkgate_init { i32 4300772, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init { i32 4300788, i8 1, i32 5924 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_gpc_ppc_0 = internal constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4308524, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_clkgate_slcg_init_pcounter_0 = internal constant { [5 x %struct.nvkm_therm_clkgate_init], [36 x i8] } { [5 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1826840, i8 1, i32 511 }, %struct.nvkm_therm_clkgate_init { i32 1818648, i8 1, i32 511 }, %struct.nvkm_therm_clkgate_init { i32 1802264, i8 1, i32 511 }, %struct.nvkm_therm_clkgate_init { i32 1786148, i8 1, i32 0 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"gk110_gr_init_fe_0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 37, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"gk110_gr_init_ds_0\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 45, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"gk110_gr_init_sked_0\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 55, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"gk110_gr_init_cwd_0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 63, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"gk110_gr_init_gpc_unk_1\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 70, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"gk110_gr_init_tex_0\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 83, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"gk110_gr_init_sm_0\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 110, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"gk110_grhub_data\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 2, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"gk110_gr_fecs_ucode\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 321, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"gk110_gr_gpccs_ucode\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 331, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"gk110_gr_fwif\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 389, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"gk110_grhub_code\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk110.fuc3.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 209, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"gk110_grgpc_code\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"gk110_grgpc_data\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk110.fuc3.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 2, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"gk110_gr_pack_mmio\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 127, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"gk110_clkgate_pack\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 273, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"gk110_gr\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 353, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"gk110_gr_init_l1c_0\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 95, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"gk110_clkgate_blcg_init_sked_0\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 162, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [34 x i8] c"gk110_clkgate_blcg_init_gpc_gcc_0\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 168, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"gk110_clkgate_blcg_init_gpc_l1c_0\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 175, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [33 x i8] c"gk110_clkgate_blcg_init_gpc_mp_0\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 181, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"gk110_clkgate_slcg_init_main_0\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 192, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"gk110_clkgate_slcg_init_unk_0\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 199, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"gk110_clkgate_slcg_init_sked_0\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 205, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [37 x i8] c"gk110_clkgate_slcg_init_gpc_ctxctl_0\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 211, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [34 x i8] c"gk110_clkgate_slcg_init_gpc_unk_0\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 217, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [37 x i8] c"gk110_clkgate_slcg_init_gpc_esetup_0\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 225, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [36 x i8] c"gk110_clkgate_slcg_init_gpc_zcull_0\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 231, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [34 x i8] c"gk110_clkgate_slcg_init_gpc_l1c_0\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 237, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [34 x i8] c"gk110_clkgate_slcg_init_gpc_unk_1\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 243, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [33 x i8] c"gk110_clkgate_slcg_init_gpc_mp_0\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 249, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [34 x i8] c"gk110_clkgate_slcg_init_gpc_ppc_0\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 258, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [35 x i8] c"gk110_clkgate_slcg_init_pcounter_0\00", align 1
@___asan_gen_.105 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 264, i32 1 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @gk110_gr_init_fe_0, ptr @gk110_gr_init_ds_0, ptr @gk110_gr_init_sked_0, ptr @gk110_gr_init_cwd_0, ptr @gk110_gr_init_gpc_unk_1, ptr @gk110_gr_init_tex_0, ptr @gk110_gr_init_sm_0, ptr @gk110_grhub_data, ptr @gk110_gr_fecs_ucode, ptr @gk110_gr_gpccs_ucode, ptr @gk110_gr_fwif, ptr @gk110_grhub_code, ptr @gk110_grgpc_code, ptr @gk110_grgpc_data, ptr @gk110_gr_pack_mmio, ptr @gk110_clkgate_pack, ptr @gk110_gr, ptr @gk110_gr_init_l1c_0, ptr @gk110_clkgate_blcg_init_sked_0, ptr @gk110_clkgate_blcg_init_gpc_gcc_0, ptr @gk110_clkgate_blcg_init_gpc_l1c_0, ptr @gk110_clkgate_blcg_init_gpc_mp_0, ptr @gk110_clkgate_slcg_init_main_0, ptr @gk110_clkgate_slcg_init_unk_0, ptr @gk110_clkgate_slcg_init_sked_0, ptr @gk110_clkgate_slcg_init_gpc_ctxctl_0, ptr @gk110_clkgate_slcg_init_gpc_unk_0, ptr @gk110_clkgate_slcg_init_gpc_esetup_0, ptr @gk110_clkgate_slcg_init_gpc_zcull_0, ptr @gk110_clkgate_slcg_init_gpc_l1c_0, ptr @gk110_clkgate_slcg_init_gpc_unk_1, ptr @gk110_clkgate_slcg_init_gpc_mp_0, ptr @gk110_clkgate_slcg_init_gpc_ppc_0, ptr @gk110_clkgate_slcg_init_pcounter_0], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_fe_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_ds_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_sked_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_cwd_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_gpc_unk_1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_tex_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_sm_0 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_grhub_data to i32), i32 772, i32 992, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_fecs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_gpccs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_grhub_code to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_grgpc_code to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_grgpc_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_pack_mmio to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_pack to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_gr_init_l1c_0 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_blcg_init_sked_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_blcg_init_gpc_gcc_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_blcg_init_gpc_l1c_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_blcg_init_gpc_mp_0 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_main_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_unk_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_sked_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_ctxctl_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_unk_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_esetup_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_zcull_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_l1c_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_unk_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_mp_0 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_gpc_ppc_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_clkgate_slcg_init_pcounter_0 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk110_gr_init_419eb4(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4300468
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !79
  tail call void @arm_heavy_mb() #2
  %or = or i32 %4, 4096
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #2, !srcloc !80
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 4300468
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !82
  tail call void @arm_heavy_mb() #2
  %or17 = or i32 %9, 8192
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #2, !srcloc !80
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 4300468
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !84
  tail call void @arm_heavy_mb() #2
  %or33 = or i32 %14, 16384
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %16, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #2, !srcloc !80
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %18, i32 4300468
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !86
  tail call void @arm_heavy_mb() #2
  %or49 = or i32 %19, 32768
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %21, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %or49) #2, !srcloc !80
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %23, i32 4300468
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !88
  tail call void @arm_heavy_mb() #2
  %and64 = and i32 %24, -4097
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %26, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %and64) #2, !srcloc !80
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %28, i32 4300468
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !90
  tail call void @arm_heavy_mb() #2
  %and80 = and i32 %29, -8193
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr83 = getelementptr i8, ptr %31, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %and80) #2, !srcloc !80
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr90 = getelementptr i8, ptr %33, i32 4300468
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !92
  tail call void @arm_heavy_mb() #2
  %and96 = and i32 %34, -16385
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %36, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %and96) #2, !srcloc !80
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr106 = getelementptr i8, ptr %38, i32 4300468
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #2, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !94
  tail call void @arm_heavy_mb() #2
  %and112 = and i32 %39, -32769
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr115 = getelementptr i8, ptr %41, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %and112) #2, !srcloc !80
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk110_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gk110_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_gpc_mmu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_400054(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @gk110_gr_init_fe_0, !1, !"gk110_gr_init_fe_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 37, i32 1}
!2 = !{ptr @gk110_gr_init_ds_0, !3, !"gk110_gr_init_ds_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 45, i32 1}
!4 = !{ptr @gk110_gr_init_sked_0, !5, !"gk110_gr_init_sked_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 55, i32 1}
!6 = !{ptr @gk110_gr_init_cwd_0, !7, !"gk110_gr_init_cwd_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 63, i32 1}
!8 = !{ptr @gk110_gr_init_gpc_unk_1, !9, !"gk110_gr_init_gpc_unk_1", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 70, i32 1}
!10 = !{ptr @gk110_gr_init_tex_0, !11, !"gk110_gr_init_tex_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 83, i32 1}
!12 = !{ptr @gk110_gr_init_sm_0, !13, !"gk110_gr_init_sm_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 110, i32 1}
!14 = !{ptr @gk110_gr_fecs_ucode, !15, !"gk110_gr_fecs_ucode", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 321, i32 1}
!16 = !{ptr @gk110_gr_gpccs_ucode, !17, !"gk110_gr_gpccs_ucode", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 331, i32 1}
!18 = !{ptr @gk110_grhub_code, !19, !"gk110_grhub_code", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk110.fuc3.h", i32 209, i32 17}
!20 = !{ptr @gk110_grhub_data, !21, !"gk110_grhub_data", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk110.fuc3.h", i32 2, i32 17}
!22 = !{ptr @gk110_grgpc_code, !23, !"gk110_grgpc_code", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk110.fuc3.h", i32 44, i32 17}
!24 = !{ptr @gk110_grgpc_data, !25, !"gk110_grgpc_data", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk110.fuc3.h", i32 2, i32 17}
!26 = !{ptr @gk110_gr_fwif, !27, !"gk110_gr_fwif", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 389, i32 1}
!28 = !{ptr @gk110_gr, !29, !"gk110_gr", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 353, i32 1}
!30 = !{ptr @gk110_gr_pack_mmio, !31, !"gk110_gr_pack_mmio", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 127, i32 1}
!32 = !{ptr @gk110_gr_init_l1c_0, !33, !"gk110_gr_init_l1c_0", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 95, i32 1}
!34 = !{ptr @gk110_clkgate_pack, !35, !"gk110_clkgate_pack", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 273, i32 1}
!36 = !{ptr @gk110_clkgate_blcg_init_sked_0, !37, !"gk110_clkgate_blcg_init_sked_0", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 162, i32 1}
!38 = !{ptr @gk110_clkgate_blcg_init_gpc_gcc_0, !39, !"gk110_clkgate_blcg_init_gpc_gcc_0", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 168, i32 1}
!40 = !{ptr @gk110_clkgate_blcg_init_gpc_l1c_0, !41, !"gk110_clkgate_blcg_init_gpc_l1c_0", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 175, i32 1}
!42 = !{ptr @gk110_clkgate_blcg_init_gpc_mp_0, !43, !"gk110_clkgate_blcg_init_gpc_mp_0", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 181, i32 1}
!44 = !{ptr @gk110_clkgate_slcg_init_main_0, !45, !"gk110_clkgate_slcg_init_main_0", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 192, i32 1}
!46 = !{ptr @gk110_clkgate_slcg_init_unk_0, !47, !"gk110_clkgate_slcg_init_unk_0", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 199, i32 1}
!48 = !{ptr @gk110_clkgate_slcg_init_sked_0, !49, !"gk110_clkgate_slcg_init_sked_0", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 205, i32 1}
!50 = !{ptr @gk110_clkgate_slcg_init_gpc_ctxctl_0, !51, !"gk110_clkgate_slcg_init_gpc_ctxctl_0", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 211, i32 1}
!52 = !{ptr @gk110_clkgate_slcg_init_gpc_unk_0, !53, !"gk110_clkgate_slcg_init_gpc_unk_0", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 217, i32 1}
!54 = !{ptr @gk110_clkgate_slcg_init_gpc_esetup_0, !55, !"gk110_clkgate_slcg_init_gpc_esetup_0", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 225, i32 1}
!56 = !{ptr @gk110_clkgate_slcg_init_gpc_zcull_0, !57, !"gk110_clkgate_slcg_init_gpc_zcull_0", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 231, i32 1}
!58 = !{ptr @gk110_clkgate_slcg_init_gpc_l1c_0, !59, !"gk110_clkgate_slcg_init_gpc_l1c_0", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 237, i32 1}
!60 = !{ptr @gk110_clkgate_slcg_init_gpc_unk_1, !61, !"gk110_clkgate_slcg_init_gpc_unk_1", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 243, i32 1}
!62 = !{ptr @gk110_clkgate_slcg_init_gpc_mp_0, !63, !"gk110_clkgate_slcg_init_gpc_mp_0", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 249, i32 1}
!64 = !{ptr @gk110_clkgate_slcg_init_gpc_ppc_0, !65, !"gk110_clkgate_slcg_init_gpc_ppc_0", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 258, i32 1}
!66 = !{ptr @gk110_clkgate_slcg_init_pcounter_0, !67, !"gk110_clkgate_slcg_init_pcounter_0", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110.c", i32 264, i32 1}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 5413127}
!78 = !{i64 2156338321}
!79 = !{i64 2156338723}
!80 = !{i64 5412709}
!81 = !{i64 2156339596}
!82 = !{i64 2156339998}
!83 = !{i64 2156340871}
!84 = !{i64 2156341273}
!85 = !{i64 2156342146}
!86 = !{i64 2156342548}
!87 = !{i64 2156343421}
!88 = !{i64 2156343823}
!89 = !{i64 2156344696}
!90 = !{i64 2156345098}
!91 = !{i64 2156345971}
!92 = !{i64 2156346373}
!93 = !{i64 2156347246}
!94 = !{i64 2156347648}
