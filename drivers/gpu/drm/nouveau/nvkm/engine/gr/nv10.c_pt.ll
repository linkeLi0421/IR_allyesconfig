; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.133 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nv10_gr_chan = type { %struct.nvkm_object, ptr, i32, [319 x i32], [18 x i32], %struct.pipe_state, [4 x i32] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pipe_state = type { [16 x i32], [4 x i32], [48 x i32], [32 x i32], [236 x i32], [188 x i32], [12 x i32], [76 x i32], [48 x i32], [48 x i32] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv10_gr = type { %struct.nvkm_gr, [32 x ptr], %struct.spinlock }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@nv10_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv10_gr_chan_dtor, ptr null, ptr @nv10_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOTIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@nv10_gr_intr_name = dso_local constant { [3 x %struct.nvkm_bitfield], [40 x i8] } { [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.1 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STATE_IN_USE\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BAD_ARGUMENT\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PROTECTION_FAULT\00", [47 x i8] zeroinitializer }, align 32
@nv10_gr_nstatus = dso_local constant { [5 x %struct.nvkm_bitfield], [56 x i8] } { [5 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 8388608, ptr @.str.2 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.3 }, %struct.nvkm_bitfield { i32 33554432, ptr @.str.4 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.5 }, %struct.nvkm_bitfield zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nv04_gr_nsource = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv10_gr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1129, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv10_gr_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv10_gr_intr._entry_ptr = internal global ptr @nv10_gr_intr._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nv10_gr_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&gr->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv10_gr_ctx_regs = internal constant { [319 x i32], [292 x i8] } { [319 x i32] [i32 4194636, i32 4194640, i32 4194644, i32 4194648, i32 4194652, i32 4194656, i32 4194688, i32 4194720, i32 4194752, i32 4194784, i32 4194660, i32 4194692, i32 4194724, i32 4194756, i32 4194788, i32 4194664, i32 4194696, i32 4194728, i32 4194760, i32 4194792, i32 4194668, i32 4194700, i32 4194732, i32 4194764, i32 4194796, i32 4194672, i32 4194704, i32 4194736, i32 4194768, i32 4194800, i32 4194676, i32 4194708, i32 4194740, i32 4194772, i32 4194804, i32 4194680, i32 4194712, i32 4194744, i32 4194776, i32 4194808, i32 4194684, i32 4194716, i32 4194748, i32 4194780, i32 4194812, i32 4194632, i32 4198400, i32 4198404, i32 4198408, i32 4198412, i32 4196208, i32 4195904, i32 4195928, i32 4195972, i32 4195908, i32 4195932, i32 4195976, i32 4195912, i32 4195936, i32 4195980, i32 4195916, i32 4195940, i32 4195984, i32 4195920, i32 4195944, i32 4195988, i32 4195924, i32 4195948, i32 4195992, i32 4195952, i32 4195956, i32 4195960, i32 4195964, i32 4195968, i32 4196112, i32 4196116, i32 4195996, i32 4196000, i32 4196132, i32 4196120, i32 4196352, i32 4196356, i32 4196608, i32 4196612, i32 4196616, i32 4196620, i32 4196624, i32 4196628, i32 4196632, i32 4196636, i32 4196640, i32 4196644, i32 4196648, i32 4196652, i32 4196656, i32 4196660, i32 4196664, i32 4196668, i32 4196672, i32 4196676, i32 4196680, i32 4196684, i32 4196688, i32 4196692, i32 4196696, i32 4196700, i32 4196704, i32 4196708, i32 4196712, i32 4196716, i32 4196720, i32 4196724, i32 4196728, i32 4196732, i32 4196736, i32 4196740, i32 4196744, i32 4196748, i32 4196752, i32 4196756, i32 4196760, i32 4196764, i32 4196768, i32 4196772, i32 4196776, i32 4196780, i32 4196784, i32 4196788, i32 4196792, i32 4196796, i32 4196800, i32 4196804, i32 4196808, i32 4196812, i32 4196816, i32 4196820, i32 4196824, i32 4196828, i32 4196832, i32 4196836, i32 4196840, i32 4196844, i32 4196848, i32 4196852, i32 4196856, i32 4196860, i32 4196360, i32 4196364, i32 4196368, i32 4195840, i32 4195844, i32 4196372, i32 4195848, i32 4195852, i32 4198000, i32 4198004, i32 4198008, i32 4198012, i32 4198016, i32 4198020, i32 4198024, i32 4198028, i32 4198048, i32 4198052, i32 4198056, i32 4198032, i32 4198036, i32 4198040, i32 4198044, i32 4198144, i32 4198176, i32 4198148, i32 4198180, i32 4198152, i32 4198184, i32 4198156, i32 4198188, i32 4198160, i32 4198192, i32 4198164, i32 4198196, i32 4198168, i32 4198200, i32 4198172, i32 4198204, i32 4198208, i32 4198212, i32 4198216, i32 4198220, i32 4196400, i32 4195596, i32 4195328, i32 4195456, i32 4195332, i32 4195460, i32 4195336, i32 4195464, i32 4195340, i32 4195468, i32 4195344, i32 4195472, i32 4195348, i32 4195476, i32 4195352, i32 4195480, i32 4195356, i32 4195484, i32 4195360, i32 4195488, i32 4195364, i32 4195492, i32 4195368, i32 4195496, i32 4195372, i32 4195500, i32 4195376, i32 4195504, i32 4195380, i32 4195508, i32 4195384, i32 4195512, i32 4195388, i32 4195516, i32 4195392, i32 4195520, i32 4195396, i32 4195524, i32 4195400, i32 4195528, i32 4195404, i32 4195532, i32 4195408, i32 4195536, i32 4195412, i32 4195540, i32 4195416, i32 4195544, i32 4195420, i32 4195548, i32 4195424, i32 4195552, i32 4195428, i32 4195556, i32 4195432, i32 4195560, i32 4195436, i32 4195564, i32 4195440, i32 4195568, i32 4195444, i32 4195572, i32 4195448, i32 4195576, i32 4195452, i32 4195580, i32 4195644, i32 4195652, i32 4195648, i32 4195656, i32 4195664, i32 4195672, i32 4195668, i32 4195676, i32 4195680, i32 4195688, i32 4195684, i32 4195692, i32 4195636, i32 4195640, i32 4195604, i32 4195608, i32 4195612, i32 4195616, i32 4195620, i32 4195624, i32 4195628, i32 4195632, i32 4197952, i32 4197956, i32 4197960, i32 4197964, i32 4197968, i32 4197972, i32 4197976, i32 4197980, i32 4197984, i32 4197988, i32 4197992, i32 4197996, i32 4197888, i32 4197892, i32 4197896, i32 4197900, i32 4197904, i32 4197908, i32 4197912, i32 4197916, i32 4197920, i32 4197924, i32 4197928, i32 4197932, i32 4197936, i32 4197940, i32 4197944, i32 4197948, i32 4195708, i32 4195712, i32 4195716, i32 4195720, i32 4195724, i32 4196212, i32 4196216, i32 4195600, i32 4195696, i32 4195700, i32 4195584, i32 4195588, i32 4195592, i32 4195704], [292 x i8] zeroinitializer }, align 32
@nv17_gr_ctx_regs = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 4194448, i32 4196016, i32 4198060, i32 4198064, i32 4198068, i32 4198072, i32 4198076, i32 4198080, i32 4198084, i32 4198088, i32 4198092, i32 4198096, i32 4198100, i32 4198104, i32 4198108, i32 4198112, i32 4196864, i32 4196868], [56 x i8] zeroinitializer }, align 32
@nv10_gr_ctx_regs_find_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.8, i32 794, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unknown offset nv10_ctx_regs %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nv10_gr_ctx_regs_find_offset\00", [35 x i8] zeroinitializer }, align 32
@nv10_gr_ctx_regs_find_offset._entry_ptr = internal global ptr @nv10_gr_ctx_regs_find_offset._entry, section ".printk_index", align 4
@nv17_gr_ctx_regs_find_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.8, i32 807, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unknown offset nv17_ctx_regs %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nv17_gr_ctx_regs_find_offset\00", [35 x i8] zeroinitializer }, align 32
@nv17_gr_ctx_regs_find_offset._entry_ptr = internal global ptr @nv17_gr_ctx_regs_find_offset._entry, section ".printk_index", align 4
@nv10_gr_create_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 654, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: incomplete pipe init for 0x%x :  %p/%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv10_gr_create_pipe\00", [44 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr = internal global ptr @nv10_gr_create_pipe._entry, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 684, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.20 = internal global ptr @nv10_gr_create_pipe._entry.19, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 692, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.22 = internal global ptr @nv10_gr_create_pipe._entry.21, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 707, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.24 = internal global ptr @nv10_gr_create_pipe._entry.23, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 753, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.26 = internal global ptr @nv10_gr_create_pipe._entry.25, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 758, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.28 = internal global ptr @nv10_gr_create_pipe._entry.27, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 763, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.30 = internal global ptr @nv10_gr_create_pipe._entry.29, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 768, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.32 = internal global ptr @nv10_gr_create_pipe._entry.31, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 773, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.34 = internal global ptr @nv10_gr_create_pipe._entry.33, section ".printk_index", align 4
@nv10_gr_create_pipe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@nv10_gr_create_pipe._entry_ptr.36 = internal global ptr @nv10_gr_create_pipe._entry.35, section ".printk_index", align 4
@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv10_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.135, [19 x %struct.nvkm_sclass] }, [108 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.135, [19 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv10_gr_init, ptr null, ptr @nv10_gr_intr, ptr @nv10_gr_tile, ptr null, ptr @nv10_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.135 zeroinitializer, [19 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 82, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 95, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 147, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 148, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 149, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 86, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [108 x i8] zeroinitializer }, align 32
@switch.table.nv10_gr_intr = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_enable], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 86, i64 150, i64 153]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"nv10_gr_chan\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 984, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1067, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1068, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"nv10_gr_intr_name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1066, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1073, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1074, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1075, i32 44 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1076, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"nv10_gr_nstatus\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1072, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1124, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1182, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"nv10_gr_ctx_regs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 46, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"nv17_gr_ctx_regs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 368, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 794, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 807, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 654, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 684, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 692, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 707, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 753, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 758, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 763, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 768, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 773, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 778, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [8 x i8] c"nv10_gr\00", align 1
@___asan_gen_.160 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1189, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"switch.table.nv10_gr_intr\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @nv10_gr_create_pipe._entry, ptr @nv10_gr_create_pipe._entry.19, ptr @nv10_gr_create_pipe._entry.21, ptr @nv10_gr_create_pipe._entry.23, ptr @nv10_gr_create_pipe._entry.25, ptr @nv10_gr_create_pipe._entry.27, ptr @nv10_gr_create_pipe._entry.29, ptr @nv10_gr_create_pipe._entry.31, ptr @nv10_gr_create_pipe._entry.33, ptr @nv10_gr_create_pipe._entry.35, ptr @nv10_gr_create_pipe._entry_ptr, ptr @nv10_gr_create_pipe._entry_ptr.20, ptr @nv10_gr_create_pipe._entry_ptr.22, ptr @nv10_gr_create_pipe._entry_ptr.24, ptr @nv10_gr_create_pipe._entry_ptr.26, ptr @nv10_gr_create_pipe._entry_ptr.28, ptr @nv10_gr_create_pipe._entry_ptr.30, ptr @nv10_gr_create_pipe._entry_ptr.32, ptr @nv10_gr_create_pipe._entry_ptr.34, ptr @nv10_gr_create_pipe._entry_ptr.36, ptr @nv10_gr_ctx_regs_find_offset._entry, ptr @nv10_gr_ctx_regs_find_offset._entry_ptr, ptr @nv10_gr_intr._entry, ptr @nv10_gr_intr._entry_ptr, ptr @nv17_gr_ctx_regs_find_offset._entry, ptr @nv17_gr_ctx_regs_find_offset._entry_ptr, ptr @nv10_gr_chan, ptr @.str, ptr @.str.1, ptr @nv10_gr_intr_name, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nv10_gr_nstatus, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nv10_gr_new_.__key, ptr @.str.12, ptr @nv10_gr_ctx_regs, ptr @nv17_gr_ctx_regs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nv10_gr, ptr @switch.table.nv10_gr_intr], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_intr_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_nstatus to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_ctx_regs to i32), i32 1276, i32 1568, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_gr_ctx_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_ctx_regs_find_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_gr_ctx_regs_find_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr_create_pipe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_gr to i32), i32 436, i32 544, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv10_gr_intr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_chan_new(ptr noundef %base, ptr nocapture noundef readonly %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4280) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv10_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  %gr3 = getelementptr inbounds %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %gr3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base, ptr %gr3, align 8
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %fifoch, i32 0, i32 5
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chid, align 8
  %conv = zext i16 %5 to i32
  %chid4 = getelementptr inbounds %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %chid4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %chid4, align 4
  %7 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %pobject, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.017.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = and i32 %i.017.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %8)
  %cmp2.i = icmp eq i32 %8, 160
  br i1 %cmp2.i, label %if.then8, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 319
  br i1 %exitcond.not.i, label %do.body.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body.i:                                        ; preds = %for.inc.i
  %debug.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.not.i = icmp eq i32 %10, 0
  br i1 %cmp3.not.i, label %do.body.i.for.body.i244.preheader_crit_edge, label %do.end.i

do.body.i.for.body.i244.preheader_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i244.preheader

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device2, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 4198024) #9
  br label %for.body.i244.preheader

if.then8:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 134217728, ptr %arrayidx, align 4
  br label %for.body.i244.preheader

for.body.i244.preheader:                          ; preds = %if.then8, %do.end.i, %do.body.i.for.body.i244.preheader_crit_edge
  br label %for.body.i244

for.body.i244:                                    ; preds = %for.inc.i247.for.body.i244_crit_edge, %for.body.i244.preheader
  %i.017.i241 = phi i32 [ %inc.i245, %for.inc.i247.for.body.i244_crit_edge ], [ 0, %for.body.i244.preheader ]
  %16 = and i32 %i.017.i241, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 168, i32 %16)
  %cmp2.i243 = icmp eq i32 %16, 168
  br i1 %cmp2.i243, label %if.then15, label %for.inc.i247

for.inc.i247:                                     ; preds = %for.body.i244
  %inc.i245 = add nuw nsw i32 %i.017.i241, 1
  %exitcond.not.i246 = icmp eq i32 %inc.i245, 319
  br i1 %exitcond.not.i246, label %do.body.i250, label %for.inc.i247.for.body.i244_crit_edge

for.inc.i247.for.body.i244_crit_edge:             ; preds = %for.inc.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i244

do.body.i250:                                     ; preds = %for.inc.i247
  %debug.i248 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %17 = ptrtoint ptr %debug.i248 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug.i248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.not.i249 = icmp eq i32 %18, 0
  br i1 %cmp3.not.i249, label %do.body.i250.for.body.i260.preheader_crit_edge, label %do.end.i254

do.body.i250.for.body.i260.preheader_crit_edge:   ; preds = %do.body.i250
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i260.preheader

do.end.i254:                                      ; preds = %do.body.i250
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device2, align 4
  %dev.i252 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i252 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i252, align 8
  %name.i253 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.13, ptr noundef %name.i253, i32 noundef 4198044) #9
  br label %for.body.i260.preheader

if.then15:                                        ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i241
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1266679807, ptr %arrayidx17, align 4
  br label %for.body.i260.preheader

for.body.i260.preheader:                          ; preds = %if.then15, %do.end.i254, %do.body.i250.for.body.i260.preheader_crit_edge
  br label %for.body.i260

for.body.i260:                                    ; preds = %for.inc.i263.for.body.i260_crit_edge, %for.body.i260.preheader
  %i.017.i257 = phi i32 [ %inc.i261, %for.inc.i263.for.body.i260_crit_edge ], [ 0, %for.body.i260.preheader ]
  %24 = and i32 %i.017.i257, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %24)
  %cmp2.i259 = icmp eq i32 %24, 269
  br i1 %cmp2.i259, label %if.then26, label %for.inc.i263

for.inc.i263:                                     ; preds = %for.body.i260
  %inc.i261 = add nuw nsw i32 %i.017.i257, 1
  %exitcond.not.i262 = icmp eq i32 %inc.i261, 319
  br i1 %exitcond.not.i262, label %do.body.i266, label %for.inc.i263.for.body.i260_crit_edge

for.inc.i263.for.body.i260_crit_edge:             ; preds = %for.inc.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i260

do.body.i266:                                     ; preds = %for.inc.i263
  %debug.i264 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %25 = ptrtoint ptr %debug.i264 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.not.i265 = icmp eq i32 %26, 0
  br i1 %cmp3.not.i265, label %do.body.i266.for.body.i276.preheader_crit_edge, label %do.end.i270

do.body.i266.for.body.i276.preheader_crit_edge:   ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i276.preheader

do.end.i270:                                      ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device2, align 4
  %dev.i268 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev.i268 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i268, align 8
  %name.i269 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.13, ptr noundef %name.i269, i32 noundef 4195604) #9
  br label %for.body.i276.preheader

if.then26:                                        ; preds = %for.body.i260
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx28 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i257
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 131071, ptr %arrayidx28, align 4
  br label %for.body.i276.preheader

for.body.i276.preheader:                          ; preds = %if.then26, %do.end.i270, %do.body.i266.for.body.i276.preheader_crit_edge
  br label %for.body.i276

for.body.i276:                                    ; preds = %for.inc.i279.for.body.i276_crit_edge, %for.body.i276.preheader
  %i.017.i273 = phi i32 [ %inc.i277, %for.inc.i279.for.body.i276_crit_edge ], [ 0, %for.body.i276.preheader ]
  %32 = and i32 %i.017.i273, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 293, i32 %32)
  %cmp2.i275 = icmp eq i32 %32, 293
  br i1 %cmp2.i275, label %if.then37, label %for.inc.i279

for.inc.i279:                                     ; preds = %for.body.i276
  %inc.i277 = add nuw nsw i32 %i.017.i273, 1
  %exitcond.not.i278 = icmp eq i32 %inc.i277, 319
  br i1 %exitcond.not.i278, label %do.body.i282, label %for.inc.i279.for.body.i276_crit_edge

for.inc.i279.for.body.i276_crit_edge:             ; preds = %for.inc.i279
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i276

do.body.i282:                                     ; preds = %for.inc.i279
  %debug.i280 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %33 = ptrtoint ptr %debug.i280 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug.i280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp3.not.i281 = icmp eq i32 %34, 0
  br i1 %cmp3.not.i281, label %do.body.i282.for.body.i292.preheader_crit_edge, label %do.end.i286

do.body.i282.for.body.i292.preheader_crit_edge:   ; preds = %do.body.i282
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i292.preheader

do.end.i286:                                      ; preds = %do.body.i282
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device2, align 4
  %dev.i284 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i284 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i284, align 8
  %name.i285 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.13, ptr noundef %name.i285, i32 noundef 4197904) #9
  br label %for.body.i292.preheader

if.then37:                                        ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i273
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4096, ptr %arrayidx39, align 4
  br label %for.body.i292.preheader

for.body.i292.preheader:                          ; preds = %if.then37, %do.end.i286, %do.body.i282.for.body.i292.preheader_crit_edge
  br label %for.body.i292

for.body.i292:                                    ; preds = %for.inc.i295.for.body.i292_crit_edge, %for.body.i292.preheader
  %i.017.i289 = phi i32 [ %inc.i293, %for.inc.i295.for.body.i292_crit_edge ], [ 0, %for.body.i292.preheader ]
  %40 = and i32 %i.017.i289, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 294, i32 %40)
  %cmp2.i291 = icmp eq i32 %40, 294
  br i1 %cmp2.i291, label %if.then48, label %for.inc.i295

for.inc.i295:                                     ; preds = %for.body.i292
  %inc.i293 = add nuw nsw i32 %i.017.i289, 1
  %exitcond.not.i294 = icmp eq i32 %inc.i293, 319
  br i1 %exitcond.not.i294, label %do.body.i298, label %for.inc.i295.for.body.i292_crit_edge

for.inc.i295.for.body.i292_crit_edge:             ; preds = %for.inc.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i292

do.body.i298:                                     ; preds = %for.inc.i295
  %debug.i296 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %41 = ptrtoint ptr %debug.i296 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp3.not.i297 = icmp eq i32 %42, 0
  br i1 %cmp3.not.i297, label %do.body.i298.for.body.i308.preheader_crit_edge, label %do.end.i302

do.body.i298.for.body.i308.preheader_crit_edge:   ; preds = %do.body.i298
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i308.preheader

do.end.i302:                                      ; preds = %do.body.i298
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device2, align 4
  %dev.i300 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev.i300 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i300, align 8
  %name.i301 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13, ptr noundef %name.i301, i32 noundef 4197908) #9
  br label %for.body.i308.preheader

if.then48:                                        ; preds = %for.body.i292
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx50 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i289
  %47 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4096, ptr %arrayidx50, align 4
  br label %for.body.i308.preheader

for.body.i308.preheader:                          ; preds = %if.then48, %do.end.i302, %do.body.i298.for.body.i308.preheader_crit_edge
  br label %for.body.i308

for.body.i308:                                    ; preds = %for.inc.i311.for.body.i308_crit_edge, %for.body.i308.preheader
  %i.017.i305 = phi i32 [ %inc.i309, %for.inc.i311.for.body.i308_crit_edge ], [ 0, %for.body.i308.preheader ]
  %48 = and i32 %i.017.i305, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %48)
  %cmp2.i307 = icmp eq i32 %48, 301
  br i1 %cmp2.i307, label %if.then59, label %for.inc.i311

for.inc.i311:                                     ; preds = %for.body.i308
  %inc.i309 = add nuw nsw i32 %i.017.i305, 1
  %exitcond.not.i310 = icmp eq i32 %inc.i309, 319
  br i1 %exitcond.not.i310, label %do.body.i314, label %for.inc.i311.for.body.i308_crit_edge

for.inc.i311.for.body.i308_crit_edge:             ; preds = %for.inc.i311
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i308

do.body.i314:                                     ; preds = %for.inc.i311
  %debug.i312 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %49 = ptrtoint ptr %debug.i312 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp3.not.i313 = icmp eq i32 %50, 0
  br i1 %cmp3.not.i313, label %do.body.i314.for.body.i324.preheader_crit_edge, label %do.end.i318

do.body.i314.for.body.i324.preheader_crit_edge:   ; preds = %do.body.i314
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i324.preheader

do.end.i318:                                      ; preds = %do.body.i314
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device2, align 4
  %dev.i316 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev.i316 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i316, align 8
  %name.i317 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.13, ptr noundef %name.i317, i32 noundef 4197936) #9
  br label %for.body.i324.preheader

if.then59:                                        ; preds = %for.body.i308
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx61 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i305
  %55 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 524296, ptr %arrayidx61, align 4
  br label %for.body.i324.preheader

for.body.i324.preheader:                          ; preds = %if.then59, %do.end.i318, %do.body.i314.for.body.i324.preheader_crit_edge
  br label %for.body.i324

for.body.i324:                                    ; preds = %for.inc.i327.for.body.i324_crit_edge, %for.body.i324.preheader
  %i.017.i321 = phi i32 [ %inc.i325, %for.inc.i327.for.body.i324_crit_edge ], [ 0, %for.body.i324.preheader ]
  %56 = and i32 %i.017.i321, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 302, i32 %56)
  %cmp2.i323 = icmp eq i32 %56, 302
  br i1 %cmp2.i323, label %if.then70, label %for.inc.i327

for.inc.i327:                                     ; preds = %for.body.i324
  %inc.i325 = add nuw nsw i32 %i.017.i321, 1
  %exitcond.not.i326 = icmp eq i32 %inc.i325, 319
  br i1 %exitcond.not.i326, label %do.body.i330, label %for.inc.i327.for.body.i324_crit_edge

for.inc.i327.for.body.i324_crit_edge:             ; preds = %for.inc.i327
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i324

do.body.i330:                                     ; preds = %for.inc.i327
  %debug.i328 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %57 = ptrtoint ptr %debug.i328 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug.i328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp3.not.i329 = icmp eq i32 %58, 0
  br i1 %cmp3.not.i329, label %do.body.i330.if.end73_crit_edge, label %do.end.i334

do.body.i330.if.end73_crit_edge:                  ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

do.end.i334:                                      ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device2, align 4
  %dev.i332 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev.i332 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i332, align 8
  %name.i333 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.13, ptr noundef %name.i333, i32 noundef 4197940) #9
  br label %if.end73

if.then70:                                        ; preds = %for.body.i324
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx72 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 %i.017.i321
  %63 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 524296, ptr %arrayidx72, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %do.end.i334, %do.body.i330.if.end73_crit_edge
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %64 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %cmp76 = icmp ugt i32 %65, 16
  br i1 %cmp76, label %land.lhs.true, label %if.end73.if.end164_crit_edge

if.end73.if.end164_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

land.lhs.true:                                    ; preds = %if.end73
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %66 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %67)
  %cmp78 = icmp ugt i32 %67, 22
  br i1 %cmp78, label %if.then148, label %land.lhs.true.if.end164_crit_edge

land.lhs.true.if.end164_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.then148:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %pri101 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %pri101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri101, align 4
  %add.ptr102 = getelementptr i8, ptr %69, i32 4196016
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %arrayidx106 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx106, align 8
  %arrayidx117 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 4, i32 2
  %72 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 268369920, ptr %arrayidx117, align 4
  %arrayidx128 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 4, i32 3
  %73 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 268369920, ptr %arrayidx128, align 8
  %arrayidx139 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 4, i32 7
  %74 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 128, ptr %arrayidx139, align 8
  %arrayidx150 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 4, i32 11
  %75 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 128, ptr %arrayidx150, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then148, %land.lhs.true.if.end164_crit_edge, %if.end73.if.end164_crit_edge
  %76 = ptrtoint ptr %chid4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chid4, align 4
  %shl = shl i32 %77, 24
  %arrayidx163 = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 3, i32 45
  %78 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shl, ptr %arrayidx163, align 4
  %pipe_0x0200.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 2
  %79 = call ptr @memset(ptr %pipe_0x0200.i, i32 0, i32 192)
  %pipe_state3.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 1700
  %pipe_0x6400.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 4
  %80 = call ptr @memset(ptr %pipe_0x6400.i, i32 0, i32 844)
  %uglygep631.i = getelementptr i8, ptr %call7.i.i, i32 2672
  %incdec.ptr31.i = getelementptr i8, ptr %call7.i.i, i32 2676
  %81 = ptrtoint ptr %uglygep631.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1065353216, ptr %uglygep631.i, align 8
  %incdec.ptr32.i = getelementptr i8, ptr %call7.i.i, i32 2680
  %82 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1073741824, ptr %incdec.ptr31.i, align 4
  %incdec.ptr33.i = getelementptr i8, ptr %call7.i.i, i32 2684
  %83 = ptrtoint ptr %incdec.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1073741824, ptr %incdec.ptr32.i, align 8
  %incdec.ptr34.i = getelementptr i8, ptr %call7.i.i, i32 2688
  %84 = ptrtoint ptr %incdec.ptr33.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1073741824, ptr %incdec.ptr33.i, align 4
  %incdec.ptr35.i = getelementptr i8, ptr %call7.i.i, i32 2692
  %85 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1073741824, ptr %incdec.ptr34.i, align 8
  %incdec.ptr36.i = getelementptr i8, ptr %call7.i.i, i32 2696
  %86 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %incdec.ptr35.i, align 4
  %incdec.ptr37.i = getelementptr i8, ptr %call7.i.i, i32 2700
  %87 = ptrtoint ptr %incdec.ptr36.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %incdec.ptr36.i, align 8
  %incdec.ptr38.i = getelementptr i8, ptr %call7.i.i, i32 2704
  %88 = ptrtoint ptr %incdec.ptr37.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1065353216, ptr %incdec.ptr37.i, align 4
  %incdec.ptr39.i = getelementptr i8, ptr %call7.i.i, i32 2708
  %89 = ptrtoint ptr %incdec.ptr38.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %incdec.ptr38.i, align 8
  %incdec.ptr40.i = getelementptr i8, ptr %call7.i.i, i32 2712
  %90 = ptrtoint ptr %incdec.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1056964608, ptr %incdec.ptr39.i, align 4
  %incdec.ptr41.i = getelementptr i8, ptr %call7.i.i, i32 2716
  %91 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1056964608, ptr %incdec.ptr40.i, align 8
  %incdec.ptr45.i = getelementptr i8, ptr %call7.i.i, i32 2732
  %incdec.ptr46.i = getelementptr i8, ptr %call7.i.i, i32 2736
  %92 = call ptr @memset(ptr %incdec.ptr41.i, i32 0, i32 16)
  %93 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1065353216, ptr %incdec.ptr45.i, align 4
  %incdec.ptr51.i = getelementptr i8, ptr %call7.i.i, i32 2756
  %incdec.ptr52.i = getelementptr i8, ptr %call7.i.i, i32 2760
  %94 = call ptr @memset(ptr %incdec.ptr46.i, i32 0, i32 20)
  %95 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1065353216, ptr %incdec.ptr51.i, align 4
  %incdec.ptr53.i = getelementptr i8, ptr %call7.i.i, i32 2764
  %96 = ptrtoint ptr %incdec.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1065353216, ptr %incdec.ptr52.i, align 8
  %incdec.ptr54.i = getelementptr i8, ptr %call7.i.i, i32 2768
  %97 = ptrtoint ptr %incdec.ptr53.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1065353216, ptr %incdec.ptr53.i, align 4
  %98 = ptrtoint ptr %incdec.ptr54.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1065353216, ptr %incdec.ptr54.i, align 8
  %add.ptr60.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 5
  %99 = call ptr @memset(ptr %add.ptr60.i, i32 0, i32 648)
  %uglygep633.i = getelementptr i8, ptr %call7.i.i, i32 3420
  %100 = ptrtoint ptr %uglygep633.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1065353216, ptr %uglygep633.i, align 4
  %pipe_state_addr.3615.i = getelementptr i8, ptr %call7.i.i, i32 3424
  %incdec.ptr132.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 6, i32 4
  %incdec.ptr133.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 6, i32 5
  %101 = call ptr @memset(ptr %pipe_state_addr.3615.i, i32 0, i32 116)
  %102 = ptrtoint ptr %incdec.ptr132.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1082130432, ptr %incdec.ptr132.i, align 4
  %incdec.ptr181.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 12
  %incdec.ptr182.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 13
  %103 = call ptr @memset(ptr %incdec.ptr133.i, i32 0, i32 76)
  %104 = ptrtoint ptr %incdec.ptr181.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1900671690, ptr %incdec.ptr181.i, align 4
  %incdec.ptr183.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 14
  %105 = ptrtoint ptr %incdec.ptr182.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %incdec.ptr182.i, align 8
  %incdec.ptr184.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 15
  %106 = ptrtoint ptr %incdec.ptr183.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %incdec.ptr183.i, align 4
  %incdec.ptr185.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 16
  %107 = ptrtoint ptr %incdec.ptr184.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %incdec.ptr184.i, align 8
  %incdec.ptr186.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 17
  %108 = ptrtoint ptr %incdec.ptr185.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1900671690, ptr %incdec.ptr185.i, align 4
  %incdec.ptr187.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 18
  %109 = ptrtoint ptr %incdec.ptr186.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %incdec.ptr186.i, align 8
  %incdec.ptr188.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 19
  %110 = ptrtoint ptr %incdec.ptr187.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %incdec.ptr187.i, align 4
  %incdec.ptr189.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 20
  %111 = ptrtoint ptr %incdec.ptr188.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %incdec.ptr188.i, align 8
  %incdec.ptr190.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 21
  %112 = ptrtoint ptr %incdec.ptr189.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1900671690, ptr %incdec.ptr189.i, align 4
  %incdec.ptr191.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 22
  %113 = ptrtoint ptr %incdec.ptr190.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %incdec.ptr190.i, align 8
  %incdec.ptr192.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 23
  %114 = ptrtoint ptr %incdec.ptr191.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %incdec.ptr191.i, align 4
  %incdec.ptr193.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 24
  %115 = ptrtoint ptr %incdec.ptr192.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %incdec.ptr192.i, align 8
  %incdec.ptr194.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 25
  %116 = ptrtoint ptr %incdec.ptr193.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1900671690, ptr %incdec.ptr193.i, align 4
  %incdec.ptr195.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 26
  %117 = ptrtoint ptr %incdec.ptr194.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %incdec.ptr194.i, align 8
  %incdec.ptr196.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 27
  %118 = ptrtoint ptr %incdec.ptr195.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %incdec.ptr195.i, align 4
  %incdec.ptr197.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 28
  %119 = ptrtoint ptr %incdec.ptr196.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %incdec.ptr196.i, align 8
  %incdec.ptr198.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 29
  %120 = ptrtoint ptr %incdec.ptr197.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1900671690, ptr %incdec.ptr197.i, align 4
  %incdec.ptr199.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 30
  %121 = ptrtoint ptr %incdec.ptr198.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %incdec.ptr198.i, align 8
  %incdec.ptr200.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 31
  %122 = ptrtoint ptr %incdec.ptr199.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %incdec.ptr199.i, align 4
  %incdec.ptr201.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 32
  %123 = ptrtoint ptr %incdec.ptr200.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %incdec.ptr200.i, align 8
  %incdec.ptr202.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 33
  %124 = ptrtoint ptr %incdec.ptr201.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1900671690, ptr %incdec.ptr201.i, align 4
  %incdec.ptr203.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 34
  %125 = ptrtoint ptr %incdec.ptr202.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %incdec.ptr202.i, align 8
  %incdec.ptr204.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 35
  %126 = ptrtoint ptr %incdec.ptr203.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %incdec.ptr203.i, align 4
  %incdec.ptr205.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 36
  %127 = ptrtoint ptr %incdec.ptr204.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %incdec.ptr204.i, align 8
  %incdec.ptr206.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 37
  %128 = ptrtoint ptr %incdec.ptr205.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1900671690, ptr %incdec.ptr205.i, align 4
  %incdec.ptr207.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 38
  %129 = ptrtoint ptr %incdec.ptr206.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %incdec.ptr206.i, align 8
  %incdec.ptr208.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 39
  %130 = ptrtoint ptr %incdec.ptr207.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %incdec.ptr207.i, align 4
  %incdec.ptr209.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 40
  %131 = ptrtoint ptr %incdec.ptr208.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %incdec.ptr208.i, align 8
  %incdec.ptr210.i = getelementptr %struct.nv10_gr_chan, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 41
  %132 = ptrtoint ptr %incdec.ptr209.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1900671690, ptr %incdec.ptr209.i, align 4
  %133 = call ptr @memset(ptr %uglygep.i, i32 0, i32 128)
  %134 = call ptr @memset(ptr %pipe_state3.i, i32 0, i32 80)
  %135 = call ptr @memset(ptr %incdec.ptr210.i, i32 0, i32 524)
  %lock = getelementptr inbounds %struct.nv10_gr, ptr %base, i32 0, i32 2
  %call173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %136 = ptrtoint ptr %chid4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %chid4, align 4
  %arrayidx180 = getelementptr %struct.nv10_gr, ptr %base, i32 0, i32 1, i32 %137
  %138 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call7.i.i, ptr %arrayidx180, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call173) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end164, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end164 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv10_gr_tile(ptr noundef %base, i32 noundef %i, ptr nocapture noundef readonly %tile) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %fifo3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fifo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !89
  call void @nvkm_fifo_pause(ptr noundef %3, ptr noundef nonnull %flags) #5
  %call = call zeroext i1 @nv04_gr_idle(ptr noundef %base) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  call void @arm_heavy_mb() #5
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %5 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %limit, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i, 4
  %add = add i32 %mul, 4197124
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #5, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  call void @arm_heavy_mb() #5
  %pitch = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %9 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pitch, align 4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add11 = add i32 %mul, 4197128
  %add.ptr12 = getelementptr i8, ptr %12, i32 %add11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #5, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add18 = add i32 %mul, 4197120
  %add.ptr19 = getelementptr i8, ptr %16, i32 %add18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %14) #5, !srcloc !91
  call void @nvkm_fifo_start(ptr noundef %3, ptr noundef nonnull %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv10_gr_intr(ptr noundef %base) #0 align 64 {
entry:
  %fifo.i.i.i = alloca [24 x i32], align 4
  %msg = alloca [128 x i8], align 1
  %src = alloca [128 x i8], align 1
  %sta = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 4194560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4194568
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4194564
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 4196100
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %and = lshr i32 %13, 20
  %shr = and i32 %and, 31
  %and21 = lshr i32 %13, 16
  %shr22 = and i32 %and21, 7
  %and23 = and i32 %13, 8188
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 4196104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %shr22, 2
  %add = or i32 %mul, 4194656
  %add.ptr31 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %and34 = and i32 %19, 4095
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #5
  %20 = call ptr @memset(ptr %msg, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %src) #5
  %21 = call ptr @memset(ptr %src, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sta) #5
  %22 = call ptr @memset(ptr %sta, i32 255, i32 128)
  %lock = getelementptr inbounds %struct.nv10_gr, ptr %base, i32 0, i32 2
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %arrayidx = getelementptr %struct.nv10_gr, ptr %base, i32 0, i32 1, i32 %shr
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %and42 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not = icmp eq i32 %and42, 0
  %tobool43.not = icmp eq ptr %24, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool43.not
  %and44 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or.cond134 = select i1 %or.cond, i1 true, i1 %tobool45.not
  br i1 %or.cond134, label %entry.if.end52_crit_edge, label %if.then46

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then46:                                        ; preds = %entry
  %conv47 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %conv47)
  %cond.i = icmp eq i8 %conv47, -103
  br i1 %cond.i, label %sw.bb.i, label %if.then46.nv10_gr_mthd.exit.thread_crit_edge

if.then46.nv10_gr_mthd.exit.thread_crit_edge:     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_mthd.exit.thread

sw.bb.i:                                          ; preds = %if.then46
  %25 = add nsw i32 %and23, -5688
  %26 = lshr exact i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %25)
  %27 = icmp ult i32 %25, 36
  br i1 %27, label %switch.hole_check, label %sw.bb.i.nv10_gr_mthd.exit.thread_crit_edge

sw.bb.i.nv10_gr_mthd.exit.thread_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_mthd.exit.thread

nv10_gr_mthd.exit.thread:                         ; preds = %switch.hole_check.nv10_gr_mthd.exit.thread_crit_edge, %sw.bb.i.nv10_gr_mthd.exit.thread_crit_edge, %if.then46.nv10_gr_mthd.exit.thread_crit_edge
  %and50136 = and i32 %4, -1048577
  br label %if.end52

switch.hole_check:                                ; preds = %sw.bb.i
  %switch.maskindex = trunc i32 %26 to i16
  %switch.shifted = lshr i16 271, %switch.maskindex
  %28 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %switch.lobit.not = icmp eq i16 %28, 0
  br i1 %switch.lobit.not, label %switch.hole_check.nv10_gr_mthd.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.nv10_gr_mthd.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_mthd.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.nv10_gr_intr, i32 0, i32 %26
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void %switch.load(ptr noundef nonnull %24, i32 noundef %and23, i32 noundef %16) #5, !callees !100
  br label %if.end52

if.end52:                                         ; preds = %switch.lookup, %nv10_gr_mthd.exit.thread, %entry.if.end52_crit_edge
  %show.0 = phi i32 [ %4, %entry.if.end52_crit_edge ], [ %4, %switch.lookup ], [ %and50136, %nv10_gr_mthd.exit.thread ]
  %and53 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.do.body64_crit_edge, label %do.body56

if.end52.do.body64_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

do.body56:                                        ; preds = %if.end52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr60 = getelementptr i8, ptr %31, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 4096) #5, !srcloc !91
  %and61 = and i32 %4, -4097
  %and62 = and i32 %show.0, -4097
  %32 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device3, align 4
  %call.i = tail call zeroext i1 @nv04_gr_idle(ptr noundef %base) #5
  %34 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device3, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4194628
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %and.i.i = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body56.if.end.i_crit_edge, label %if.then.i.i

do.body56.if.end.i_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.i:                                      ; preds = %do.body56
  %39 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %40, i32 4194632
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %41)
  %cmp.i.i = icmp ult i32 %41, 536870912
  br i1 %cmp.i.i, label %nv10_gr_channel.exit.i, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

nv10_gr_channel.exit.i:                           ; preds = %if.then.i.i
  %shr.i.i = lshr i32 %41, 24
  %arrayidx.i.i = getelementptr %struct.nv10_gr, ptr %base, i32 0, i32 1, i32 %shr.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %nv10_gr_channel.exit.i.if.end.i_crit_edge, label %if.then.i

nv10_gr_channel.exit.i.if.end.i_crit_edge:        ; preds = %nv10_gr_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %nv10_gr_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @nv10_gr_unload_context(ptr noundef nonnull %43) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %nv10_gr_channel.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge, %do.body56.if.end.i_crit_edge
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 4196100
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %shr.i = lshr i32 %46, 20
  %and.i = and i32 %shr.i, 31
  %arrayidx.i = getelementptr %struct.nv10_gr, ptr %base, i32 0, i32 1, i32 %and.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %48, null
  br i1 %tobool6.not.i, label %if.end.i.do.body64_crit_edge, label %if.then7.i

if.end.i.do.body64_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

if.then7.i:                                       ; preds = %if.end.i
  %gr1.i.i = getelementptr inbounds %struct.nv10_gr_chan, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %gr1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gr1.i.i, align 8
  %device2.i.i = getelementptr inbounds %struct.nvkm_gr, ptr %50, i32 0, i32 1, i32 1, i32 1
  %51 = ptrtoint ptr %device2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device2.i.i, align 4
  %pri.i16.i = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then7.i
  %i.010.i.i = phi i32 [ 0, %if.then7.i ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %arrayidx.i17.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 3, i32 %i.010.i.i
  %53 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i17.i, align 4
  %55 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri.i16.i, align 4
  %arrayidx3.i.i = getelementptr [319 x i32], ptr @nv10_gr_ctx_regs, i32 0, i32 %i.010.i.i
  %57 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx3.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %54) #5, !srcloc !91
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 319
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %do.body.i.i
  %card_type.i.i = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 15
  %59 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %60)
  %cmp4.i.i = icmp ugt i32 %60, 16
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.end.i.i.if.end.i.i_crit_edge

for.end.i.i.if.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %chipset.i.i = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 16
  %61 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chipset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %62)
  %cmp5.i.i = icmp ugt i32 %62, 22
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.do.body9.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i.do.body9.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  br label %do.body9.i.i

do.body9.i.i:                                     ; preds = %do.body9.i.i.do.body9.i.i_crit_edge, %land.lhs.true.i.i.do.body9.i.i_crit_edge
  %i.111.i.i = phi i32 [ %inc17.i.i, %do.body9.i.i.do.body9.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.do.body9.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %arrayidx12.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 4, i32 %i.111.i.i
  %63 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx12.i.i, align 4
  %65 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i16.i, align 4
  %arrayidx14.i.i = getelementptr [18 x i32], ptr @nv17_gr_ctx_regs, i32 0, i32 %i.111.i.i
  %67 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx14.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %64) #5, !srcloc !91
  %inc17.i.i = add nuw nsw i32 %i.111.i.i, 1
  %exitcond12.not.i.i = icmp eq i32 %inc17.i.i, 18
  br i1 %exitcond12.not.i.i, label %do.body9.i.i.if.end.i.i_crit_edge, label %do.body9.i.i.do.body9.i.i_crit_edge

do.body9.i.i.do.body9.i.i_crit_edge:              ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9.i.i

do.body9.i.i.if.end.i.i_crit_edge:                ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body9.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.end.i.i.if.end.i.i_crit_edge
  %69 = ptrtoint ptr %gr1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gr1.i.i, align 8
  %device2.i.i.i = getelementptr inbounds %struct.nvkm_gr, ptr %70, i32 0, i32 1, i32 1, i32 1
  %71 = ptrtoint ptr %device2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device2.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @nv04_gr_idle(ptr noundef %70) #5
  %pri.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 4198208
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  %76 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %77, i32 4198212
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %80, i32 4198208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i.i, i32 268435456) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr16.i.i.i = getelementptr i8, ptr %82, i32 4198212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr21.i.i.i = getelementptr i8, ptr %84, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i.i, i32 25792) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr26.i.i.i = getelementptr i8, ptr %86, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr26.1.i.i.i = getelementptr i8, ptr %88, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.1.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr26.2.i.i.i = getelementptr i8, ptr %90, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.2.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr26.3.i.i.i = getelementptr i8, ptr %92, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.3.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr34.i.i.i = getelementptr i8, ptr %94, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %95 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr34.1.i.i.i = getelementptr i8, ptr %96, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.1.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr34.2.i.i.i = getelementptr i8, ptr %98, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.2.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr34.3.i.i.i = getelementptr i8, ptr %100, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.3.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr42.i.i.i = getelementptr i8, ptr %102, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i.i.i, i32 27312) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr50.i.i.i = getelementptr i8, ptr %104, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr50.1.i.i.i = getelementptr i8, ptr %106, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.1.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr50.2.i.i.i = getelementptr i8, ptr %108, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.2.i.i.i, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr58.i.i.i = getelementptr i8, ptr %110, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i.i.i, i32 27264) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr66.i.i.i = getelementptr i8, ptr %112, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr66.1.i.i.i = getelementptr i8, ptr %114, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.1.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %115 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr66.2.i.i.i = getelementptr i8, ptr %116, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.2.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr74.i.i.i = getelementptr i8, ptr %118, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i.i, i32 64) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr79.i.i.i = getelementptr i8, ptr %120, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i.i.i, i32 8) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %121 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr85.i.i.i = getelementptr i8, ptr %122, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i.i.i, i32 512) #5, !srcloc !91
  br label %do.body89.i.i.i

do.body89.i.i.i:                                  ; preds = %do.body89.i.i.i.do.body89.i.i.i_crit_edge, %if.end.i.i
  %__i.0380.i.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc95.i.i.i, %do.body89.i.i.i.do.body89.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 2, i32 %__i.0380.i.i.i
  %123 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i.i, align 4
  %125 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr93.i.i.i = getelementptr i8, ptr %126, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i.i.i, i32 %124) #5, !srcloc !91
  %inc95.i.i.i = add nuw nsw i32 %__i.0380.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc95.i.i.i, 48
  br i1 %exitcond.not.i.i.i, label %for.end96.i.i.i, label %do.body89.i.i.i.do.body89.i.i.i_crit_edge

do.body89.i.i.i.do.body89.i.i.i_crit_edge:        ; preds = %do.body89.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89.i.i.i

for.end96.i.i.i:                                  ; preds = %do.body89.i.i.i
  %call100.i.i.i = tail call zeroext i1 @nv04_gr_idle(ptr noundef %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %127 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr105.i.i.i = getelementptr i8, ptr %128, i32 4198208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i.i.i, i32 %75) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr110.i.i.i = getelementptr i8, ptr %130, i32 4198212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i.i.i, i32 %78) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr117.i.i.i = getelementptr i8, ptr %132, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117.i.i.i, i32 25600) #5, !srcloc !91
  br label %do.body121.i.i.i

do.body121.i.i.i:                                 ; preds = %do.body121.i.i.i.do.body121.i.i.i_crit_edge, %for.end96.i.i.i
  %__i112.0381.i.i.i = phi i32 [ 0, %for.end96.i.i.i ], [ %inc128.i.i.i, %do.body121.i.i.i.do.body121.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %arrayidx124.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 4, i32 %__i112.0381.i.i.i
  %133 = ptrtoint ptr %arrayidx124.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx124.i.i.i, align 4
  %135 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr126.i.i.i = getelementptr i8, ptr %136, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126.i.i.i, i32 %134) #5, !srcloc !91
  %inc128.i.i.i = add nuw nsw i32 %__i112.0381.i.i.i, 1
  %exitcond390.not.i.i.i = icmp eq i32 %inc128.i.i.i, 236
  br i1 %exitcond390.not.i.i.i, label %for.end129.i.i.i, label %do.body121.i.i.i.do.body121.i.i.i_crit_edge

do.body121.i.i.i.do.body121.i.i.i_crit_edge:      ; preds = %do.body121.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body121.i.i.i

for.end129.i.i.i:                                 ; preds = %do.body121.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr138.i.i.i = getelementptr i8, ptr %138, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138.i.i.i, i32 26624) #5, !srcloc !91
  br label %do.body142.i.i.i

do.body142.i.i.i:                                 ; preds = %do.body142.i.i.i.do.body142.i.i.i_crit_edge, %for.end129.i.i.i
  %__i133.0382.i.i.i = phi i32 [ 0, %for.end129.i.i.i ], [ %inc149.i.i.i, %do.body142.i.i.i.do.body142.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %arrayidx145.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 5, i32 %__i133.0382.i.i.i
  %139 = ptrtoint ptr %arrayidx145.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx145.i.i.i, align 4
  %141 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr147.i.i.i = getelementptr i8, ptr %142, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.i.i.i, i32 %140) #5, !srcloc !91
  %inc149.i.i.i = add nuw nsw i32 %__i133.0382.i.i.i, 1
  %exitcond391.not.i.i.i = icmp eq i32 %inc149.i.i.i, 188
  br i1 %exitcond391.not.i.i.i, label %for.end150.i.i.i, label %do.body142.i.i.i.do.body142.i.i.i_crit_edge

do.body142.i.i.i.do.body142.i.i.i_crit_edge:      ; preds = %do.body142.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142.i.i.i

for.end150.i.i.i:                                 ; preds = %do.body142.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %143 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr159.i.i.i = getelementptr i8, ptr %144, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159.i.i.i, i32 27648) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 0
  %145 = ptrtoint ptr %arrayidx166.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx166.i.i.i, align 4
  %147 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.i.i.i = getelementptr i8, ptr %148, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.i.i.i, i32 %146) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.1.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 1
  %149 = ptrtoint ptr %arrayidx166.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx166.1.i.i.i, align 4
  %151 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.1.i.i.i = getelementptr i8, ptr %152, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.1.i.i.i, i32 %150) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.2.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 2
  %153 = ptrtoint ptr %arrayidx166.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx166.2.i.i.i, align 4
  %155 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.2.i.i.i = getelementptr i8, ptr %156, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.2.i.i.i, i32 %154) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.3.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 3
  %157 = ptrtoint ptr %arrayidx166.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx166.3.i.i.i, align 4
  %159 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.3.i.i.i = getelementptr i8, ptr %160, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.3.i.i.i, i32 %158) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.4.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 4
  %161 = ptrtoint ptr %arrayidx166.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx166.4.i.i.i, align 4
  %163 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.4.i.i.i = getelementptr i8, ptr %164, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.4.i.i.i, i32 %162) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.5.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 5
  %165 = ptrtoint ptr %arrayidx166.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx166.5.i.i.i, align 4
  %167 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.5.i.i.i = getelementptr i8, ptr %168, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.5.i.i.i, i32 %166) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.6.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 6
  %169 = ptrtoint ptr %arrayidx166.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx166.6.i.i.i, align 4
  %171 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.6.i.i.i = getelementptr i8, ptr %172, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.6.i.i.i, i32 %170) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.7.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 7
  %173 = ptrtoint ptr %arrayidx166.7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx166.7.i.i.i, align 4
  %175 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.7.i.i.i = getelementptr i8, ptr %176, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.7.i.i.i, i32 %174) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.8.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 8
  %177 = ptrtoint ptr %arrayidx166.8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx166.8.i.i.i, align 4
  %179 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.8.i.i.i = getelementptr i8, ptr %180, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.8.i.i.i, i32 %178) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.9.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 9
  %181 = ptrtoint ptr %arrayidx166.9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx166.9.i.i.i, align 4
  %183 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.9.i.i.i = getelementptr i8, ptr %184, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.9.i.i.i, i32 %182) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.10.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 10
  %185 = ptrtoint ptr %arrayidx166.10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx166.10.i.i.i, align 4
  %187 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.10.i.i.i = getelementptr i8, ptr %188, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.10.i.i.i, i32 %186) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %arrayidx166.11.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 6, i32 11
  %189 = ptrtoint ptr %arrayidx166.11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx166.11.i.i.i, align 4
  %191 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr168.11.i.i.i = getelementptr i8, ptr %192, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.11.i.i.i, i32 %190) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr180.i.i.i = getelementptr i8, ptr %194, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180.i.i.i, i32 28672) #5, !srcloc !91
  br label %do.body184.i.i.i

do.body184.i.i.i:                                 ; preds = %do.body184.i.i.i.do.body184.i.i.i_crit_edge, %for.end150.i.i.i
  %__i175.0384.i.i.i = phi i32 [ 0, %for.end150.i.i.i ], [ %inc191.i.i.i, %do.body184.i.i.i.do.body184.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %arrayidx187.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 7, i32 %__i175.0384.i.i.i
  %195 = ptrtoint ptr %arrayidx187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx187.i.i.i, align 4
  %197 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr189.i.i.i = getelementptr i8, ptr %198, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189.i.i.i, i32 %196) #5, !srcloc !91
  %inc191.i.i.i = add nuw nsw i32 %__i175.0384.i.i.i, 1
  %exitcond393.not.i.i.i = icmp eq i32 %inc191.i.i.i, 76
  br i1 %exitcond393.not.i.i.i, label %for.end192.i.i.i, label %do.body184.i.i.i.do.body184.i.i.i_crit_edge

do.body184.i.i.i.do.body184.i.i.i_crit_edge:      ; preds = %do.body184.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body184.i.i.i

for.end192.i.i.i:                                 ; preds = %do.body184.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr201.i.i.i = getelementptr i8, ptr %200, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201.i.i.i, i32 29696) #5, !srcloc !91
  br label %do.body205.i.i.i

do.body205.i.i.i:                                 ; preds = %do.body205.i.i.i.do.body205.i.i.i_crit_edge, %for.end192.i.i.i
  %__i196.0385.i.i.i = phi i32 [ 0, %for.end192.i.i.i ], [ %inc212.i.i.i, %do.body205.i.i.i.do.body205.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %arrayidx208.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 8, i32 %__i196.0385.i.i.i
  %201 = ptrtoint ptr %arrayidx208.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx208.i.i.i, align 4
  %203 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr210.i.i.i = getelementptr i8, ptr %204, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210.i.i.i, i32 %202) #5, !srcloc !91
  %inc212.i.i.i = add nuw nsw i32 %__i196.0385.i.i.i, 1
  %exitcond394.not.i.i.i = icmp eq i32 %inc212.i.i.i, 48
  br i1 %exitcond394.not.i.i.i, label %for.end213.i.i.i, label %do.body205.i.i.i.do.body205.i.i.i_crit_edge

do.body205.i.i.i.do.body205.i.i.i_crit_edge:      ; preds = %do.body205.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body205.i.i.i

for.end213.i.i.i:                                 ; preds = %do.body205.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %205 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr222.i.i.i = getelementptr i8, ptr %206, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.i.i.i, i32 30720) #5, !srcloc !91
  br label %do.body226.i.i.i

do.body226.i.i.i:                                 ; preds = %do.body226.i.i.i.do.body226.i.i.i_crit_edge, %for.end213.i.i.i
  %__i217.0386.i.i.i = phi i32 [ 0, %for.end213.i.i.i ], [ %inc233.i.i.i, %do.body226.i.i.i.do.body226.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %arrayidx229.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 9, i32 %__i217.0386.i.i.i
  %207 = ptrtoint ptr %arrayidx229.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx229.i.i.i, align 4
  %209 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr231.i.i.i = getelementptr i8, ptr %210, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231.i.i.i, i32 %208) #5, !srcloc !91
  %inc233.i.i.i = add nuw nsw i32 %__i217.0386.i.i.i, 1
  %exitcond395.not.i.i.i = icmp eq i32 %inc233.i.i.i, 48
  br i1 %exitcond395.not.i.i.i, label %for.end234.i.i.i, label %do.body226.i.i.i.do.body226.i.i.i_crit_edge

do.body226.i.i.i.do.body226.i.i.i_crit_edge:      ; preds = %do.body226.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226.i.i.i

for.end234.i.i.i:                                 ; preds = %do.body226.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %211 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr243.i.i.i = getelementptr i8, ptr %212, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243.i.i.i, i32 17408) #5, !srcloc !91
  br label %do.body247.i.i.i

do.body247.i.i.i:                                 ; preds = %do.body247.i.i.i.do.body247.i.i.i_crit_edge, %for.end234.i.i.i
  %__i238.0387.i.i.i = phi i32 [ 0, %for.end234.i.i.i ], [ %inc254.i.i.i, %do.body247.i.i.i.do.body247.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %arrayidx250.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 3, i32 %__i238.0387.i.i.i
  %213 = ptrtoint ptr %arrayidx250.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx250.i.i.i, align 4
  %215 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr252.i.i.i = getelementptr i8, ptr %216, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252.i.i.i, i32 %214) #5, !srcloc !91
  %inc254.i.i.i = add nuw nsw i32 %__i238.0387.i.i.i, 1
  %exitcond396.not.i.i.i = icmp eq i32 %inc254.i.i.i, 32
  br i1 %exitcond396.not.i.i.i, label %for.end255.i.i.i, label %do.body247.i.i.i.do.body247.i.i.i_crit_edge

do.body247.i.i.i.do.body247.i.i.i_crit_edge:      ; preds = %do.body247.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body247.i.i.i

for.end255.i.i.i:                                 ; preds = %do.body247.i.i.i
  %pipe_state.i.i.i = getelementptr inbounds %struct.nv10_gr_chan, ptr %48, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %217 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr264.i.i.i = getelementptr i8, ptr %218, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr264.i.i.i, i32 0) #5, !srcloc !91
  br label %do.body268.i.i.i

do.body268.i.i.i:                                 ; preds = %do.body268.i.i.i.do.body268.i.i.i_crit_edge, %for.end255.i.i.i
  %__i259.0388.i.i.i = phi i32 [ 0, %for.end255.i.i.i ], [ %inc275.i.i.i, %do.body268.i.i.i.do.body268.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %arrayidx271.i.i.i = getelementptr [16 x i32], ptr %pipe_state.i.i.i, i32 0, i32 %__i259.0388.i.i.i
  %219 = ptrtoint ptr %arrayidx271.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx271.i.i.i, align 4
  %221 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr273.i.i.i = getelementptr i8, ptr %222, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr273.i.i.i, i32 %220) #5, !srcloc !91
  %inc275.i.i.i = add nuw nsw i32 %__i259.0388.i.i.i, 1
  %exitcond397.not.i.i.i = icmp eq i32 %inc275.i.i.i, 16
  br i1 %exitcond397.not.i.i.i, label %nv10_gr_load_pipe.exit.i.i, label %do.body268.i.i.i.do.body268.i.i.i_crit_edge

do.body268.i.i.i.do.body268.i.i.i_crit_edge:      ; preds = %do.body268.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268.i.i.i

nv10_gr_load_pipe.exit.i.i:                       ; preds = %do.body268.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %223 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr285.i.i.i = getelementptr i8, ptr %224, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285.i.i.i, i32 64) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %arrayidx292.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 1, i32 0
  %225 = ptrtoint ptr %arrayidx292.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx292.i.i.i, align 4
  %227 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr294.i.i.i = getelementptr i8, ptr %228, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294.i.i.i, i32 %226) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %arrayidx292.1.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 1, i32 1
  %229 = ptrtoint ptr %arrayidx292.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx292.1.i.i.i, align 4
  %231 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr294.1.i.i.i = getelementptr i8, ptr %232, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294.1.i.i.i, i32 %230) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %arrayidx292.2.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 1, i32 2
  %233 = ptrtoint ptr %arrayidx292.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx292.2.i.i.i, align 4
  %235 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr294.2.i.i.i = getelementptr i8, ptr %236, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294.2.i.i.i, i32 %234) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %arrayidx292.3.i.i.i = getelementptr %struct.nv10_gr_chan, ptr %48, i32 0, i32 5, i32 1, i32 3
  %237 = ptrtoint ptr %arrayidx292.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx292.3.i.i.i, align 4
  %239 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr294.3.i.i.i = getelementptr i8, ptr %240, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294.3.i.i.i, i32 %238) #5, !srcloc !91
  %call301.i.i.i = tail call zeroext i1 @nv04_gr_idle(ptr noundef %70) #5
  %241 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pri.i16.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %242, i32 4198220
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %and.i19.i = and i32 %243, 65535
  %244 = ptrtoint ptr %gr1.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %gr1.i.i, align 8
  %device2.i2.i.i = getelementptr inbounds %struct.nvkm_gr, ptr %245, i32 0, i32 1, i32 1, i32 1
  %246 = ptrtoint ptr %device2.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %device2.i2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %fifo.i.i.i) #5
  %248 = call ptr @memset(ptr %fifo.i.i.i, i32 255, i32 96)
  %pri.i3.i.i = getelementptr inbounds %struct.nvkm_device, ptr %247, i32 0, i32 11
  %249 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %250, i32 4194656
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.i.i.i = and i32 %251, 4095
  %252 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %for.inc.i.i.i [
    i32 86, label %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge
    i32 150, label %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge137
    i32 153, label %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge138
  ]

nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge138: ; preds = %nv10_gr_load_pipe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge137: ; preds = %nv10_gr_load_pipe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge: ; preds = %nv10_gr_load_pipe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %nv10_gr_load_pipe.exit.i.i
  %253 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.1.i.i.i = getelementptr i8, ptr %254, i32 4194660
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.1.i.i.i = and i32 %255, 4095
  %256 = zext i32 %and.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and.1.i.i.i, label %for.inc.1.i.i.i [
    i32 86, label %for.inc.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.i.i.i.for.end.i.i.i_crit_edge139
    i32 153, label %for.inc.i.i.i.for.end.i.i.i_crit_edge140
  ]

for.inc.i.i.i.for.end.i.i.i_crit_edge140:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge139:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %257 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.2.i.i.i = getelementptr i8, ptr %258, i32 4194664
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.2.i.i.i = and i32 %259, 4095
  %260 = zext i32 %and.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and.2.i.i.i, label %for.inc.2.i.i.i [
    i32 86, label %for.inc.1.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.1.i.i.i.for.end.i.i.i_crit_edge141
    i32 153, label %for.inc.1.i.i.i.for.end.i.i.i_crit_edge142
  ]

for.inc.1.i.i.i.for.end.i.i.i_crit_edge142:       ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.1.i.i.i.for.end.i.i.i_crit_edge141:       ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.1.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %261 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.3.i.i.i = getelementptr i8, ptr %262, i32 4194668
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.3.i.i.i = and i32 %263, 4095
  %264 = zext i32 %and.3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %264, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and.3.i.i.i, label %for.inc.3.i.i.i [
    i32 86, label %for.inc.2.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.2.i.i.i.for.end.i.i.i_crit_edge143
    i32 153, label %for.inc.2.i.i.i.for.end.i.i.i_crit_edge144
  ]

for.inc.2.i.i.i.for.end.i.i.i_crit_edge144:       ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.2.i.i.i.for.end.i.i.i_crit_edge143:       ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.2.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %265 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.4.i.i.i = getelementptr i8, ptr %266, i32 4194672
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.4.i.i.i = and i32 %267, 4095
  %268 = zext i32 %and.4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and.4.i.i.i, label %for.inc.4.i.i.i [
    i32 86, label %for.inc.3.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.3.i.i.i.for.end.i.i.i_crit_edge145
    i32 153, label %for.inc.3.i.i.i.for.end.i.i.i_crit_edge146
  ]

for.inc.3.i.i.i.for.end.i.i.i_crit_edge146:       ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.3.i.i.i.for.end.i.i.i_crit_edge145:       ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.3.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %269 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.5.i.i.i = getelementptr i8, ptr %270, i32 4194676
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.5.i.i.i = and i32 %271, 4095
  %272 = zext i32 %and.5.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %272, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and.5.i.i.i, label %for.inc.5.i.i.i [
    i32 86, label %for.inc.4.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.4.i.i.i.for.end.i.i.i_crit_edge147
    i32 153, label %for.inc.4.i.i.i.for.end.i.i.i_crit_edge148
  ]

for.inc.4.i.i.i.for.end.i.i.i_crit_edge148:       ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.4.i.i.i.for.end.i.i.i_crit_edge147:       ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.4.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %273 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.6.i.i.i = getelementptr i8, ptr %274, i32 4194680
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.6.i.i.i = and i32 %275, 4095
  %276 = zext i32 %and.6.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %and.6.i.i.i, label %for.inc.6.i.i.i [
    i32 86, label %for.inc.5.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.5.i.i.i.for.end.i.i.i_crit_edge149
    i32 153, label %for.inc.5.i.i.i.for.end.i.i.i_crit_edge150
  ]

for.inc.5.i.i.i.for.end.i.i.i_crit_edge150:       ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.5.i.i.i.for.end.i.i.i_crit_edge149:       ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.5.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %277 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr.7.i.i.i = getelementptr i8, ptr %278, i32 4194684
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %and.7.i.i.i = and i32 %279, 4095
  %280 = zext i32 %and.7.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %280, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and.7.i.i.i, label %for.inc.6.i.i.i.nv10_gr_load_context.exit.i_crit_edge [
    i32 86, label %for.inc.6.i.i.i.for.end.i.i.i_crit_edge
    i32 150, label %for.inc.6.i.i.i.for.end.i.i.i_crit_edge151
    i32 153, label %for.inc.6.i.i.i.for.end.i.i.i_crit_edge152
  ]

for.inc.6.i.i.i.for.end.i.i.i_crit_edge152:       ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.6.i.i.i.for.end.i.i.i_crit_edge151:       ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.6.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.inc.6.i.i.i.nv10_gr_load_context.exit.i_crit_edge: ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_load_context.exit.i

for.end.i.i.i:                                    ; preds = %for.inc.6.i.i.i.for.end.i.i.i_crit_edge, %for.inc.6.i.i.i.for.end.i.i.i_crit_edge151, %for.inc.6.i.i.i.for.end.i.i.i_crit_edge152, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge149, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge150, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge147, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge148, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge145, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge146, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge143, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge144, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge141, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge142, %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.inc.i.i.i.for.end.i.i.i_crit_edge139, %for.inc.i.i.i.for.end.i.i.i_crit_edge140, %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge, %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge137, %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge138
  %i.0302.lcssa.i.i.i = phi i32 [ 0, %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge ], [ 0, %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge137 ], [ 0, %nv10_gr_load_pipe.exit.i.i.for.end.i.i.i_crit_edge138 ], [ 1, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.for.end.i.i.i_crit_edge139 ], [ 1, %for.inc.i.i.i.for.end.i.i.i_crit_edge140 ], [ 2, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge141 ], [ 2, %for.inc.1.i.i.i.for.end.i.i.i_crit_edge142 ], [ 3, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge143 ], [ 3, %for.inc.2.i.i.i.for.end.i.i.i_crit_edge144 ], [ 4, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge145 ], [ 4, %for.inc.3.i.i.i.for.end.i.i.i_crit_edge146 ], [ 5, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge147 ], [ 5, %for.inc.4.i.i.i.for.end.i.i.i_crit_edge148 ], [ 6, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge149 ], [ 6, %for.inc.5.i.i.i.for.end.i.i.i_crit_edge150 ], [ 7, %for.inc.6.i.i.i.for.end.i.i.i_crit_edge ], [ 7, %for.inc.6.i.i.i.for.end.i.i.i_crit_edge151 ], [ 7, %for.inc.6.i.i.i.for.end.i.i.i_crit_edge152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.i.nv10_gr_load_context.exit.i_crit_edge, label %if.end11.i.i.i

for.end.i.i.i.nv10_gr_load_context.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_load_context.exit.i

if.end11.i.i.i:                                   ; preds = %for.end.i.i.i
  %281 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %282, i32 4194632
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %284 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr24.i.i.i = getelementptr i8, ptr %285, i32 4194636
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %287 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr24.1.i.i.i = getelementptr i8, ptr %288, i32 4194640
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %290 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr24.2.i.i.i = getelementptr i8, ptr %291, i32 4194644
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %293 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr24.3.i.i.i = getelementptr i8, ptr %294, i32 4194648
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.3.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %296 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr24.4.i.i.i = getelementptr i8, ptr %297, i32 4194652
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.4.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %299 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr32.i.i.i = getelementptr i8, ptr %300, i32 4196196
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  %302 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr37.i.i.i = getelementptr i8, ptr %303, i32 4196200
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %305 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr42.i5.i.i = getelementptr i8, ptr %306, i32 4196204
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i5.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %308 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr47.i.i.i = getelementptr i8, ptr %309, i32 4196192
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  br label %for.body52.i.i.i

for.cond64.preheader.i.i.i:                       ; preds = %for.body52.i.i.i
  %mul69.i.i.i = shl nuw nsw i32 %i.0302.lcssa.i.i.i, 2
  %add70.i.i.i = or i32 %mul69.i.i.i, 4194656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %311 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr73.i.i.i = getelementptr i8, ptr %312, i32 %add70.i.i.i
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %314 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr79.i6.i.i = getelementptr i8, ptr %315, i32 4194636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i6.i.i, i32 %313) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %316 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %pri.i3.i.i, align 4
  %add72.1.i.i.i = or i32 %mul69.i.i.i, 4194688
  %add.ptr73.1.i.i.i = getelementptr i8, ptr %317, i32 %add72.1.i.i.i
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.1.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %319 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr79.1.i.i.i = getelementptr i8, ptr %320, i32 4194640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.1.i.i.i, i32 %318) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %321 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %pri.i3.i.i, align 4
  %add72.2.i.i.i = or i32 %mul69.i.i.i, 4194720
  %add.ptr73.2.i.i.i = getelementptr i8, ptr %322, i32 %add72.2.i.i.i
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.2.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %324 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr79.2.i.i.i = getelementptr i8, ptr %325, i32 4194644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.2.i.i.i, i32 %323) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %326 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %pri.i3.i.i, align 4
  %add72.3.i.i.i = or i32 %mul69.i.i.i, 4194752
  %add.ptr73.3.i.i.i = getelementptr i8, ptr %327, i32 %add72.3.i.i.i
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.3.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %329 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr79.3.i.i.i = getelementptr i8, ptr %330, i32 4194648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.3.i.i.i, i32 %328) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %331 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %pri.i3.i.i, align 4
  %add72.4.i.i.i = or i32 %mul69.i.i.i, 4194784
  %add.ptr73.4.i.i.i = getelementptr i8, ptr %332, i32 %add72.4.i.i.i
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.4.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %334 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr79.4.i.i.i = getelementptr i8, ptr %335, i32 4194652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.4.i.i.i, i32 %333) #5, !srcloc !91
  %336 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr85.i7.i.i = getelementptr i8, ptr %337, i32 4194632
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i7.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %and91.i.i.i = and i32 %338, -57345
  %shl.i.i.i = shl nuw nsw i32 %i.0302.lcssa.i.i.i, 13
  %or.i.i.i = or i32 %and91.i.i.i, %shl.i.i.i
  %339 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr93.i8.i.i = getelementptr i8, ptr %340, i32 4194632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i8.i.i, i32 %or.i.i.i) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %341 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr99.i.i.i = getelementptr i8, ptr %342, i32 4196192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i.i.i, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %shl103.i.i.i = shl nuw nsw i32 %and.i, 20
  %shl105.i.i.i = shl nuw nsw i32 %i.0302.lcssa.i.i.i, 16
  %or104.i.i.i = or i32 %shl105.i.i.i, %shl103.i.i.i
  %or107.i.i.i = or i32 %or104.i.i.i, 738197900
  %343 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr109.i.i.i = getelementptr i8, ptr %344, i32 4196196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i.i.i, i32 %or107.i.i.i) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %345 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr114.i.i.i = getelementptr i8, ptr %346, i32 4196200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i.i.i, i32 %and.i19.i) #5, !srcloc !91
  %347 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr120.i.i.i = getelementptr i8, ptr %348, i32 4194628
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %or127.i.i.i = or i32 %349, 65536
  %350 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr129.i.i.i = getelementptr i8, ptr %351, i32 4194628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129.i.i.i, i32 %or127.i.i.i) #5, !srcloc !91
  %352 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr136.i.i.i = getelementptr i8, ptr %353, i32 4196128
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %or143.i.i.i = or i32 %354, 1
  %355 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr145.i.i.i = getelementptr i8, ptr %356, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i.i.i, i32 %or143.i.i.i) #5, !srcloc !91
  %357 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr152.i.i.i = getelementptr i8, ptr %358, i32 4196128
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr152.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %and158.i.i.i = and i32 %359, -2
  %360 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr161.i.i.i = getelementptr i8, ptr %361, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i.i.i, i32 %and158.i.i.i) #5, !srcloc !91
  br label %do.body166.i.i.i

for.body52.i.i.i:                                 ; preds = %for.body52.i.i.i.for.body52.i.i.i_crit_edge, %if.end11.i.i.i
  %i.2304.i.i.i = phi i32 [ 0, %if.end11.i.i.i ], [ %inc62.i.i.i, %for.body52.i.i.i.for.body52.i.i.i_crit_edge ]
  %362 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pri.i3.i.i, align 4
  %mul55.i.i.i = shl nuw nsw i32 %i.2304.i.i.i, 2
  %add56.i.i.i = add nuw nsw i32 %mul55.i.i.i, 4196256
  %add.ptr57.i.i.i = getelementptr i8, ptr %363, i32 %add56.i.i.i
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57.i.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  %arrayidx60.i.i.i = getelementptr [24 x i32], ptr %fifo.i.i.i, i32 0, i32 %i.2304.i.i.i
  %365 = ptrtoint ptr %arrayidx60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %364, ptr %arrayidx60.i.i.i, align 4
  %inc62.i.i.i = add nuw nsw i32 %i.2304.i.i.i, 1
  %exitcond.not.i9.i.i = icmp eq i32 %inc62.i.i.i, 24
  br i1 %exitcond.not.i9.i.i, label %for.cond64.preheader.i.i.i, label %for.body52.i.i.i.for.body52.i.i.i_crit_edge

for.body52.i.i.i.for.body52.i.i.i_crit_edge:      ; preds = %for.body52.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body52.i.i.i

do.body166.i.i.i:                                 ; preds = %do.body166.i.i.i.do.body166.i.i.i_crit_edge, %for.cond64.preheader.i.i.i
  %i.4306.i.i.i = phi i32 [ 0, %for.cond64.preheader.i.i.i ], [ %inc175.i.i.i, %do.body166.i.i.i.do.body166.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %arrayidx169.i.i.i = getelementptr [24 x i32], ptr %fifo.i.i.i, i32 0, i32 %i.4306.i.i.i
  %366 = ptrtoint ptr %arrayidx169.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx169.i.i.i, align 4
  %368 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pri.i3.i.i, align 4
  %mul171.i.i.i = shl nuw nsw i32 %i.4306.i.i.i, 2
  %add172.i.i.i = add nuw nsw i32 %mul171.i.i.i, 4196256
  %add.ptr173.i.i.i = getelementptr i8, ptr %369, i32 %add172.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173.i.i.i, i32 %367) #5, !srcloc !91
  %inc175.i.i.i = add nuw nsw i32 %i.4306.i.i.i, 1
  %exitcond310.not.i.i.i = icmp eq i32 %inc175.i.i.i, 24
  br i1 %exitcond310.not.i.i.i, label %do.body177.i.i.i, label %do.body166.i.i.i.do.body166.i.i.i_crit_edge

do.body166.i.i.i.do.body166.i.i.i_crit_edge:      ; preds = %do.body166.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body166.i.i.i

do.body177.i.i.i:                                 ; preds = %do.body166.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %370 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr181.i.i.i = getelementptr i8, ptr %371, i32 4196192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181.i.i.i, i32 %310) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %372 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr186.i.i.i = getelementptr i8, ptr %373, i32 4196196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186.i.i.i, i32 %301) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %374 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr191.i.i.i = getelementptr i8, ptr %375, i32 4196200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.i.i.i, i32 %304) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %376 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr196.i.i.i = getelementptr i8, ptr %377, i32 4196204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196.i.i.i, i32 %307) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %378 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr207.i.i.i = getelementptr i8, ptr %379, i32 4194636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.i.i.i, i32 %286) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %380 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr207.1.i.i.i = getelementptr i8, ptr %381, i32 4194640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.1.i.i.i, i32 %289) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %382 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr207.2.i.i.i = getelementptr i8, ptr %383, i32 4194644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.2.i.i.i, i32 %292) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %384 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr207.3.i.i.i = getelementptr i8, ptr %385, i32 4194648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.3.i.i.i, i32 %295) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %386 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr207.4.i.i.i = getelementptr i8, ptr %387, i32 4194652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.4.i.i.i, i32 %298) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %388 = ptrtoint ptr %pri.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %pri.i3.i.i, align 4
  %add.ptr215.i.i.i = getelementptr i8, ptr %389, i32 4194632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215.i.i.i, i32 %283) #5, !srcloc !91
  br label %nv10_gr_load_context.exit.i

nv10_gr_load_context.exit.i:                      ; preds = %do.body177.i.i.i, %for.end.i.i.i.nv10_gr_load_context.exit.i_crit_edge, %for.inc.6.i.i.i.nv10_gr_load_context.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %fifo.i.i.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %390 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %pri.i16.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %391, i32 4194628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 268501248) #5, !srcloc !91
  %392 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %pri.i16.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %393, i32 4194632
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %and34.i.i = and i32 %394, 16777215
  %shl.i.i = shl nuw nsw i32 %and.i, 24
  %or.i.i = or i32 %and34.i.i, %shl.i.i
  %395 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %pri.i16.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %396, i32 4194632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %or.i.i) #5, !srcloc !91
  %397 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %pri.i16.i, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %398, i32 4196196
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %and49.i.i = and i32 %399, -805306369
  %400 = ptrtoint ptr %pri.i16.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %pri.i16.i, align 4
  %add.ptr52.i.i = getelementptr i8, ptr %401, i32 4196196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i.i, i32 %and49.i.i) #5, !srcloc !91
  br label %do.body64

do.body64:                                        ; preds = %nv10_gr_load_context.exit.i, %if.end.i.do.body64_crit_edge, %if.end52.do.body64_crit_edge
  %stat.0 = phi i32 [ %4, %if.end52.do.body64_crit_edge ], [ %and61, %if.end.i.do.body64_crit_edge ], [ %and61, %nv10_gr_load_context.exit.i ]
  %show.1 = phi i32 [ %show.0, %if.end52.do.body64_crit_edge ], [ %and62, %if.end.i.do.body64_crit_edge ], [ %and62, %nv10_gr_load_context.exit.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %402 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %pri, align 4
  %add.ptr68 = getelementptr i8, ptr %403, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %stat.0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %404 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %405, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 1) #5, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show.1)
  %tobool74.not = icmp eq i32 %show.1, 0
  br i1 %tobool74.not, label %do.body64.if.end96_crit_edge, label %if.then75

do.body64.if.end96_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then75:                                        ; preds = %do.body64
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv10_gr_intr_name, i32 noundef %show.1) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %src, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %7) #5
  call void @nvkm_snprintbf(ptr noundef nonnull %sta, i32 noundef 128, ptr noundef nonnull @nv10_gr_nstatus, i32 noundef %10) #5
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %406 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %cmp79.not = icmp eq i32 %407, 0
  br i1 %cmp79.not, label %if.then75.if.end96_crit_edge, label %do.end84

if.then75.if.end96_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.end84:                                         ; preds = %if.then75
  %408 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %409, i32 0, i32 2
  %410 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  br i1 %tobool43.not, label %do.end84.cond.end_crit_edge, label %cond.true

do.end84.cond.end_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.nvkm_object, ptr %24, i32 0, i32 1
  %412 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %client, align 4
  %name91 = getelementptr inbounds %struct.nvkm_client, ptr %413, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end84.cond.end_crit_edge
  %cond = phi ptr [ %name91, %cond.true ], [ @.str.11, %do.end84.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %411, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %show.1, ptr noundef nonnull %msg, i32 noundef %7, ptr noundef nonnull %src, i32 noundef %10, ptr noundef nonnull %sta, i32 noundef %shr, ptr noundef %cond, i32 noundef %shr22, i32 noundef %and34, i32 noundef %and23, i32 noundef %16) #9
  br label %if.end96

if.end96:                                         ; preds = %cond.end, %if.then75.if.end96_crit_edge, %do.body64.if.end96_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sta) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %src) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4194624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 4194432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 4194432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 4194436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 1148672) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 4194440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 637086425) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 4194444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -169998288) #5, !srcloc !91
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp = icmp ugt i32 %17, 16
  br i1 %cmp, label %land.lhs.true, label %entry.do.body60_crit_edge

entry.do.body60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

land.lhs.true:                                    ; preds = %entry
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %19)
  %cmp34 = icmp ugt i32 %19, 22
  br i1 %cmp34, label %do.body35, label %land.lhs.true.do.body60_crit_edge

land.lhs.true.do.body60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

do.body35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 4194448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 520093696) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr44 = getelementptr i8, ptr %23, i32 4196880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 67059638) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %25, i32 4196408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 3114628) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %27, i32 4196412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 1138495) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr59 = getelementptr i8, ptr %29, i32 4196016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 1073741856) #5, !srcloc !91
  br label %do.body65

do.body60:                                        ; preds = %land.lhs.true.do.body60_crit_edge, %entry.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %31, i32 4194448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 0) #5, !srcloc !91
  br label %do.body65

do.body65:                                        ; preds = %do.body60, %do.body35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr69 = getelementptr i8, ptr %33, i32 4194636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %35, i32 4194640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr79 = getelementptr i8, ptr %37, i32 4194644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr84 = getelementptr i8, ptr %39, i32 4194648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %41, i32 4194652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %43, i32 4196116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 -1) #5, !srcloc !91
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr96 = getelementptr i8, ptr %45, i32 4194632
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %and = and i32 %46, 16777215
  %or = or i32 %and, 520093696
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr102 = getelementptr i8, ptr %48, i32 4194632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %or) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr108 = getelementptr i8, ptr %50, i32 4194628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 268435712) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr113 = getelementptr i8, ptr %52, i32 4196196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 134217728) #5, !srcloc !91
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.nv10_gr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @nv10_gr_new_.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgr, align 4
  %call3 = tail call i32 @nvkm_gr_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv10_gr_new_.exit_crit_edge, label %do.body.i

entry.nv10_gr_new_.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_new_.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock.i = getelementptr inbounds %struct.nv10_gr, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @nv10_gr_new_.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pgr, align 4
  %call3.i = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv10_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i.i) #5
  br label %nv10_gr_new_.exit

nv10_gr_new_.exit:                                ; preds = %do.body.i, %entry.nv10_gr_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %do.body.i ], [ -12, %entry.nv10_gr_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv10_gr_chan_dtor(ptr noundef readonly returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv10_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %lock = getelementptr inbounds %struct.nv10_gr, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chid = getelementptr inbounds %struct.nv10_gr_chan, ptr %object, i32 0, i32 2
  %2 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chid, align 4
  %arrayidx = getelementptr %struct.nv10_gr, ptr %1, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv10_gr_chan_fini(ptr noundef %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv10_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %lock = getelementptr inbounds %struct.nv10_gr, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4196128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %and = and i32 %6, -2
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %8, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %and) #5, !srcloc !91
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4194628
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %and.i = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nv10_gr_channel.exit_crit_edge, label %if.then.i

entry.nv10_gr_channel.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_channel.exit

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 4194632
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %16)
  %cmp.i = icmp ult i32 %16, 536870912
  br i1 %cmp.i, label %if.then7.i, label %if.then.i.nv10_gr_channel.exit_crit_edge

if.then.i.nv10_gr_channel.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10_gr_channel.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %16, 24
  %arrayidx.i = getelementptr %struct.nv10_gr, ptr %1, i32 0, i32 1, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  br label %nv10_gr_channel.exit

nv10_gr_channel.exit:                             ; preds = %if.then7.i, %if.then.i.nv10_gr_channel.exit_crit_edge, %entry.nv10_gr_channel.exit_crit_edge
  %chan.1.i = phi ptr [ null, %entry.nv10_gr_channel.exit_crit_edge ], [ %18, %if.then7.i ], [ null, %if.then.i.nv10_gr_channel.exit_crit_edge ]
  %cmp18 = icmp eq ptr %chan.1.i, %object
  br i1 %cmp18, label %if.then, label %nv10_gr_channel.exit.if.end_crit_edge

nv10_gr_channel.exit.if.end_crit_edge:            ; preds = %nv10_gr_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %nv10_gr_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @nv10_gr_unload_context(ptr noundef %object)
  br label %if.end

if.end:                                           ; preds = %if.then, %nv10_gr_channel.exit.if.end_crit_edge
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %20, i32 4196128
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %or33 = or i32 %21, 1
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %23, i32 4196128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #5, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv10_gr_unload_context(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv10_gr_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %arrayidx = getelementptr [319 x i32], ptr @nv10_gr_ctx_regs, i32 0, i32 %i.01
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  %arrayidx3 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 3, i32 %i.01
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 319
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp4 = icmp ugt i32 %11, 16
  br i1 %cmp4, label %land.lhs.true, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %13)
  %cmp5 = icmp ugt i32 %13, 22
  br i1 %cmp5, label %land.lhs.true.for.body8_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.for.body8_crit_edge:                ; preds = %land.lhs.true
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %land.lhs.true.for.body8_crit_edge
  %i.12 = phi i32 [ %inc17, %for.body8.for.body8_crit_edge ], [ 0, %land.lhs.true.for.body8_crit_edge ]
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %arrayidx11 = getelementptr [18 x i32], ptr @nv17_gr_ctx_regs, i32 0, i32 %i.12
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  %arrayidx15 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 4, i32 %i.12
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx15, align 4
  %inc17 = add nuw nsw i32 %i.12, 1
  %exitcond3.not = icmp eq i32 %inc17, 18
  br i1 %exitcond3.not, label %for.body8.if.end_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.body8.if.end_crit_edge:                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.body8.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  %20 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gr1, align 8
  %device2.i = getelementptr inbounds %struct.nvkm_gr, ptr %21, i32 0, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17408) #5, !srcloc !91
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %__i.0246.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %27, i32 4198228
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  %arrayidx.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 3, i32 %__i.0246.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %__i.0246.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %31, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 512) #5, !srcloc !91
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.end.i
  %__i9.0247.i = phi i32 [ 0, %for.end.i ], [ %inc25.i, %for.body17.i.for.body17.i_crit_edge ]
  %32 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %33, i32 4198228
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  %arrayidx23.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 2, i32 %__i9.0247.i
  %35 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx23.i, align 4
  %inc25.i = add nuw nsw i32 %__i9.0247.i, 1
  %exitcond256.not.i = icmp eq i32 %inc25.i, 48
  br i1 %exitcond256.not.i, label %for.end26.i, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.i

for.end26.i:                                      ; preds = %for.body17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %37, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 25600) #5, !srcloc !91
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i.for.body38.i_crit_edge, %for.end26.i
  %__i30.0248.i = phi i32 [ 0, %for.end26.i ], [ %inc46.i, %for.body38.i.for.body38.i_crit_edge ]
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %39, i32 4198228
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  %arrayidx44.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 4, i32 %__i30.0248.i
  %41 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx44.i, align 4
  %inc46.i = add nuw nsw i32 %__i30.0248.i, 1
  %exitcond257.not.i = icmp eq i32 %inc46.i, 236
  br i1 %exitcond257.not.i, label %for.end47.i, label %for.body38.i.for.body38.i_crit_edge

for.body38.i.for.body38.i_crit_edge:              ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38.i

for.end47.i:                                      ; preds = %for.body38.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %43, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 26624) #5, !srcloc !91
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.body59.i.for.body59.i_crit_edge, %for.end47.i
  %__i51.0249.i = phi i32 [ 0, %for.end47.i ], [ %inc67.i, %for.body59.i.for.body59.i_crit_edge ]
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %45, i32 4198228
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  %arrayidx65.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 5, i32 %__i51.0249.i
  %47 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx65.i, align 4
  %inc67.i = add nuw nsw i32 %__i51.0249.i, 1
  %exitcond258.not.i = icmp eq i32 %inc67.i, 188
  br i1 %exitcond258.not.i, label %for.end68.i, label %for.body59.i.for.body59.i_crit_edge

for.body59.i.for.body59.i_crit_edge:              ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body59.i

for.end68.i:                                      ; preds = %for.body59.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %49, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 27648) #5, !srcloc !91
  %50 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %51, i32 4198228
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 0
  %53 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx86.i, align 4
  %54 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri.i, align 4
  %add.ptr83.1.i = getelementptr i8, ptr %55, i32 4198228
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.1.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.1.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 1
  %57 = ptrtoint ptr %arrayidx86.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx86.1.i, align 4
  %58 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i, align 4
  %add.ptr83.2.i = getelementptr i8, ptr %59, i32 4198228
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.2.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.2.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 2
  %61 = ptrtoint ptr %arrayidx86.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx86.2.i, align 4
  %62 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri.i, align 4
  %add.ptr83.3.i = getelementptr i8, ptr %63, i32 4198228
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.3.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.3.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 3
  %65 = ptrtoint ptr %arrayidx86.3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx86.3.i, align 4
  %66 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i, align 4
  %add.ptr83.4.i = getelementptr i8, ptr %67, i32 4198228
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.4.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.4.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 4
  %69 = ptrtoint ptr %arrayidx86.4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx86.4.i, align 4
  %70 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri.i, align 4
  %add.ptr83.5.i = getelementptr i8, ptr %71, i32 4198228
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.5.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.5.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 5
  %73 = ptrtoint ptr %arrayidx86.5.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx86.5.i, align 4
  %74 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri.i, align 4
  %add.ptr83.6.i = getelementptr i8, ptr %75, i32 4198228
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.6.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.6.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 6
  %77 = ptrtoint ptr %arrayidx86.6.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx86.6.i, align 4
  %78 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri.i, align 4
  %add.ptr83.7.i = getelementptr i8, ptr %79, i32 4198228
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.7.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.7.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 7
  %81 = ptrtoint ptr %arrayidx86.7.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx86.7.i, align 4
  %82 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri.i, align 4
  %add.ptr83.8.i = getelementptr i8, ptr %83, i32 4198228
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.8.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.8.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 8
  %85 = ptrtoint ptr %arrayidx86.8.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx86.8.i, align 4
  %86 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri.i, align 4
  %add.ptr83.9.i = getelementptr i8, ptr %87, i32 4198228
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.9.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.9.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 9
  %89 = ptrtoint ptr %arrayidx86.9.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx86.9.i, align 4
  %90 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri.i, align 4
  %add.ptr83.10.i = getelementptr i8, ptr %91, i32 4198228
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.10.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.10.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 10
  %93 = ptrtoint ptr %arrayidx86.10.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx86.10.i, align 4
  %94 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri.i, align 4
  %add.ptr83.11.i = getelementptr i8, ptr %95, i32 4198228
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.11.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %arrayidx86.11.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 6, i32 11
  %97 = ptrtoint ptr %arrayidx86.11.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx86.11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %99, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 28672) #5, !srcloc !91
  br label %for.body101.i

for.body101.i:                                    ; preds = %for.body101.i.for.body101.i_crit_edge, %for.end68.i
  %__i93.0251.i = phi i32 [ 0, %for.end68.i ], [ %inc109.i, %for.body101.i.for.body101.i_crit_edge ]
  %100 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %101, i32 4198228
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  %arrayidx107.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 7, i32 %__i93.0251.i
  %103 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx107.i, align 4
  %inc109.i = add nuw nsw i32 %__i93.0251.i, 1
  %exitcond260.not.i = icmp eq i32 %inc109.i, 76
  br i1 %exitcond260.not.i, label %for.end110.i, label %for.body101.i.for.body101.i_crit_edge

for.body101.i.for.body101.i_crit_edge:            ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body101.i

for.end110.i:                                     ; preds = %for.body101.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri.i, align 4
  %add.ptr119.i = getelementptr i8, ptr %105, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 29696) #5, !srcloc !91
  br label %for.body122.i

for.body122.i:                                    ; preds = %for.body122.i.for.body122.i_crit_edge, %for.end110.i
  %__i114.0252.i = phi i32 [ 0, %for.end110.i ], [ %inc130.i, %for.body122.i.for.body122.i_crit_edge ]
  %106 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %107, i32 4198228
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  %arrayidx128.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 8, i32 %__i114.0252.i
  %109 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx128.i, align 4
  %inc130.i = add nuw nsw i32 %__i114.0252.i, 1
  %exitcond261.not.i = icmp eq i32 %inc130.i, 48
  br i1 %exitcond261.not.i, label %for.end131.i, label %for.body122.i.for.body122.i_crit_edge

for.body122.i.for.body122.i_crit_edge:            ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body122.i

for.end131.i:                                     ; preds = %for.body122.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri.i, align 4
  %add.ptr140.i = getelementptr i8, ptr %111, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i, i32 30720) #5, !srcloc !91
  br label %for.body143.i

for.body143.i:                                    ; preds = %for.body143.i.for.body143.i_crit_edge, %for.end131.i
  %__i135.0253.i = phi i32 [ 0, %for.end131.i ], [ %inc151.i, %for.body143.i.for.body143.i_crit_edge ]
  %112 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri.i, align 4
  %add.ptr146.i = getelementptr i8, ptr %113, i32 4198228
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  %arrayidx149.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 9, i32 %__i135.0253.i
  %115 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx149.i, align 4
  %inc151.i = add nuw nsw i32 %__i135.0253.i, 1
  %exitcond262.not.i = icmp eq i32 %inc151.i, 48
  br i1 %exitcond262.not.i, label %nv10_gr_save_pipe.exit, label %for.body143.i.for.body143.i_crit_edge

for.body143.i.for.body143.i_crit_edge:            ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body143.i

nv10_gr_save_pipe.exit:                           ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri.i, align 4
  %add.ptr161.i = getelementptr i8, ptr %117, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i, i32 64) #5, !srcloc !91
  %118 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri.i, align 4
  %add.ptr167.i = getelementptr i8, ptr %119, i32 4198228
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  %arrayidx170.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 1, i32 0
  %121 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx170.i, align 4
  %122 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri.i, align 4
  %add.ptr167.1.i = getelementptr i8, ptr %123, i32 4198228
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.1.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  %arrayidx170.1.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 1, i32 1
  %125 = ptrtoint ptr %arrayidx170.1.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx170.1.i, align 4
  %126 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pri.i, align 4
  %add.ptr167.2.i = getelementptr i8, ptr %127, i32 4198228
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.2.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  %arrayidx170.2.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 1, i32 2
  %129 = ptrtoint ptr %arrayidx170.2.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx170.2.i, align 4
  %130 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri.i, align 4
  %add.ptr167.3.i = getelementptr i8, ptr %131, i32 4198228
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.3.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  %arrayidx170.3.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 1, i32 3
  %133 = ptrtoint ptr %arrayidx170.3.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx170.3.i, align 4
  %pipe_state.i = getelementptr inbounds %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pri.i, align 4
  %add.ptr182.i = getelementptr i8, ptr %135, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182.i, i32 0) #5, !srcloc !91
  %136 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri.i, align 4
  %add.ptr188.i = getelementptr i8, ptr %137, i32 4198228
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %139 = ptrtoint ptr %pipe_state.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %pipe_state.i, align 4
  %140 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pri.i, align 4
  %add.ptr188.1.i = getelementptr i8, ptr %141, i32 4198228
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.1.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.1.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 1
  %143 = ptrtoint ptr %arrayidx191.1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx191.1.i, align 4
  %144 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri.i, align 4
  %add.ptr188.2.i = getelementptr i8, ptr %145, i32 4198228
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.2.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.2.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 2
  %147 = ptrtoint ptr %arrayidx191.2.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx191.2.i, align 4
  %148 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri.i, align 4
  %add.ptr188.3.i = getelementptr i8, ptr %149, i32 4198228
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.3.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.3.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 3
  %151 = ptrtoint ptr %arrayidx191.3.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx191.3.i, align 4
  %152 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri.i, align 4
  %add.ptr188.4.i = getelementptr i8, ptr %153, i32 4198228
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.4.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.4.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 4
  %155 = ptrtoint ptr %arrayidx191.4.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx191.4.i, align 4
  %156 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pri.i, align 4
  %add.ptr188.5.i = getelementptr i8, ptr %157, i32 4198228
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.5.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.5.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 5
  %159 = ptrtoint ptr %arrayidx191.5.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx191.5.i, align 4
  %160 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pri.i, align 4
  %add.ptr188.6.i = getelementptr i8, ptr %161, i32 4198228
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.6.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.6.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 6
  %163 = ptrtoint ptr %arrayidx191.6.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx191.6.i, align 4
  %164 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pri.i, align 4
  %add.ptr188.7.i = getelementptr i8, ptr %165, i32 4198228
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.7.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.7.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 7
  %167 = ptrtoint ptr %arrayidx191.7.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx191.7.i, align 4
  %168 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pri.i, align 4
  %add.ptr188.8.i = getelementptr i8, ptr %169, i32 4198228
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.8.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.8.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 8
  %171 = ptrtoint ptr %arrayidx191.8.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %arrayidx191.8.i, align 4
  %172 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri.i, align 4
  %add.ptr188.9.i = getelementptr i8, ptr %173, i32 4198228
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.9.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.9.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 9
  %175 = ptrtoint ptr %arrayidx191.9.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx191.9.i, align 4
  %176 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pri.i, align 4
  %add.ptr188.10.i = getelementptr i8, ptr %177, i32 4198228
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.10.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.10.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 10
  %179 = ptrtoint ptr %arrayidx191.10.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx191.10.i, align 4
  %180 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pri.i, align 4
  %add.ptr188.11.i = getelementptr i8, ptr %181, i32 4198228
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.11.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.11.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 11
  %183 = ptrtoint ptr %arrayidx191.11.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %arrayidx191.11.i, align 4
  %184 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pri.i, align 4
  %add.ptr188.12.i = getelementptr i8, ptr %185, i32 4198228
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.12.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.12.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 12
  %187 = ptrtoint ptr %arrayidx191.12.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %arrayidx191.12.i, align 4
  %188 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri.i, align 4
  %add.ptr188.13.i = getelementptr i8, ptr %189, i32 4198228
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.13.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.13.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 13
  %191 = ptrtoint ptr %arrayidx191.13.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx191.13.i, align 4
  %192 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pri.i, align 4
  %add.ptr188.14.i = getelementptr i8, ptr %193, i32 4198228
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.14.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.14.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 14
  %195 = ptrtoint ptr %arrayidx191.14.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %arrayidx191.14.i, align 4
  %196 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pri.i, align 4
  %add.ptr188.15.i = getelementptr i8, ptr %197, i32 4198228
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.15.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %arrayidx191.15.i = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 0, i32 15
  %199 = ptrtoint ptr %arrayidx191.15.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %arrayidx191.15.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %201, i32 4194628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 268435456) #5, !srcloc !91
  %202 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %203, i32 4194632
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %and = and i32 %204, 16777215
  %or = or i32 %and, 520093696
  %205 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pri, align 4
  %add.ptr30 = getelementptr i8, ptr %206, i32 4194632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %or) #5, !srcloc !91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_gr_mthd_lma_window(ptr nocapture noundef %chan, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device1 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %gr2 = getelementptr inbounds %struct.nv10_gr_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %gr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gr2, align 8
  %sub = add i32 %mthd, -5688
  %div475 = lshr i32 %sub, 2
  %arrayidx = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 6, i32 %div475
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %data, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5700, i32 %mthd)
  %cmp.not = icmp eq i32 %mthd, 5700
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @nv04_gr_idle(ptr noundef %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 64) #5, !srcloc !91
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 4198228
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 512) #5, !srcloc !91
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %if.end
  %__i12.0476 = phi i32 [ 0, %if.end ], [ %inc28, %for.body20.for.body20_crit_edge ]
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 4198228
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  %arrayidx26 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 2, i32 %__i12.0476
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx26, align 4
  %inc28 = add nuw nsw i32 %__i12.0476, 1
  %exitcond.not = icmp eq i32 %inc28, 48
  br i1 %exitcond.not, label %for.end29, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.end29:                                        ; preds = %for.body20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 26512) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %arrayidx46 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx46, align 4
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %23, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %21) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %arrayidx46.1 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx46.1, align 4
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr48.1 = getelementptr i8, ptr %27, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.1, i32 %25) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %arrayidx46.2 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.2, align 4
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr48.2 = getelementptr i8, ptr %31, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.2, i32 %29) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %arrayidx46.3 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.3, align 4
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr48.3 = getelementptr i8, ptr %35, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.3, i32 %33) #5, !srcloc !91
  %call54 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %5) #5
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr57 = getelementptr i8, ptr %37, i32 4198208
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr62 = getelementptr i8, ptr %40, i32 4198212
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr71 = getelementptr i8, ptr %43, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 17408) #5, !srcloc !91
  br label %for.body74

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.end29
  %__i66.0478 = phi i32 [ 0, %for.end29 ], [ %inc82, %for.body74.for.body74_crit_edge ]
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr77 = getelementptr i8, ptr %45, i32 4198228
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  %arrayidx80 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 3, i32 %__i66.0478
  %47 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx80, align 4
  %inc82 = add nuw nsw i32 %__i66.0478, 1
  %exitcond492.not = icmp eq i32 %inc82, 32
  br i1 %exitcond492.not, label %for.end83, label %for.body74.for.body74_crit_edge

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body74

for.end83:                                        ; preds = %for.body74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr92 = getelementptr i8, ptr %49, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 25792) #5, !srcloc !91
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr98 = getelementptr i8, ptr %51, i32 4198228
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr98.1 = getelementptr i8, ptr %54, i32 4198228
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.1) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %56 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri, align 4
  %add.ptr98.2 = getelementptr i8, ptr %57, i32 4198228
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.2) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr98.3 = getelementptr i8, ptr %60, i32 4198228
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.3) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr98.4 = getelementptr i8, ptr %63, i32 4198228
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.4) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr98.5 = getelementptr i8, ptr %66, i32 4198228
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.5) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %68 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri, align 4
  %add.ptr98.6 = getelementptr i8, ptr %69, i32 4198228
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.6) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr98.7 = getelementptr i8, ptr %72, i32 4198228
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.7) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri, align 4
  %add.ptr113 = getelementptr i8, ptr %75, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 27312) #5, !srcloc !91
  %76 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri, align 4
  %add.ptr119 = getelementptr i8, ptr %77, i32 4198228
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add.ptr119.1 = getelementptr i8, ptr %80, i32 4198228
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.1) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  %82 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri, align 4
  %add.ptr119.2 = getelementptr i8, ptr %83, i32 4198228
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.2) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri, align 4
  %add.ptr134 = getelementptr i8, ptr %86, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 27264) #5, !srcloc !91
  %87 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri, align 4
  %add.ptr140 = getelementptr i8, ptr %88, i32 4198228
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr140.1 = getelementptr i8, ptr %91, i32 4198228
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140.1) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  %93 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri, align 4
  %add.ptr140.2 = getelementptr i8, ptr %94, i32 4198228
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140.2) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  %call149 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri, align 4
  %add.ptr154 = getelementptr i8, ptr %97, i32 4198208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 268435456) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri, align 4
  %add.ptr159 = getelementptr i8, ptr %99, i32 4198212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri, align 4
  %add.ptr164 = getelementptr i8, ptr %101, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 25792) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pri, align 4
  %add.ptr172 = getelementptr i8, ptr %103, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri, align 4
  %add.ptr172.1 = getelementptr i8, ptr %105, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172.1, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri, align 4
  %add.ptr172.2 = getelementptr i8, ptr %107, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172.2, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr172.3 = getelementptr i8, ptr %109, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172.3, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri, align 4
  %add.ptr183 = getelementptr i8, ptr %111, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri, align 4
  %add.ptr183.1 = getelementptr i8, ptr %113, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.1, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri, align 4
  %add.ptr183.2 = getelementptr i8, ptr %115, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.2, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri, align 4
  %add.ptr183.3 = getelementptr i8, ptr %117, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.3, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri, align 4
  %add.ptr191 = getelementptr i8, ptr %119, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 27312) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pri, align 4
  %add.ptr199 = getelementptr i8, ptr %121, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri, align 4
  %add.ptr199.1 = getelementptr i8, ptr %123, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.1, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add.ptr199.2 = getelementptr i8, ptr %125, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.2, i32 1065353216) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pri, align 4
  %add.ptr207 = getelementptr i8, ptr %127, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 27264) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pri, align 4
  %add.ptr215 = getelementptr i8, ptr %129, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri, align 4
  %add.ptr215.1 = getelementptr i8, ptr %131, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215.1, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri, align 4
  %add.ptr215.2 = getelementptr i8, ptr %133, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215.2, i32 0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pri, align 4
  %add.ptr223 = getelementptr i8, ptr %135, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 64) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri, align 4
  %add.ptr228 = getelementptr i8, ptr %137, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 8) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pri, align 4
  %add.ptr235 = getelementptr i8, ptr %139, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 512) #5, !srcloc !91
  br label %do.body239

do.body239:                                       ; preds = %do.body239.do.body239_crit_edge, %for.end83
  %__i230.0486 = phi i32 [ 0, %for.end83 ], [ %inc247, %do.body239.do.body239_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  tail call void @arm_heavy_mb() #5
  %arrayidx243 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 2, i32 %__i230.0486
  %140 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx243, align 4
  %142 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pri, align 4
  %add.ptr245 = getelementptr i8, ptr %143, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 %141) #5, !srcloc !91
  %inc247 = add nuw nsw i32 %__i230.0486, 1
  %exitcond500.not = icmp eq i32 %inc247, 48
  br i1 %exitcond500.not, label %for.end248, label %do.body239.do.body239_crit_edge

do.body239.do.body239_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body239

for.end248:                                       ; preds = %do.body239
  %call251 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri, align 4
  %add.ptr258 = getelementptr i8, ptr %145, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 64) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  tail call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri, align 4
  %add.ptr267 = getelementptr i8, ptr %147, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr267, i32 %11) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri, align 4
  %add.ptr277 = getelementptr i8, ptr %149, i32 4198208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277, i32 %38) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  tail call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pri, align 4
  %add.ptr282 = getelementptr i8, ptr %151, i32 4198212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 %41) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !263
  tail call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri, align 4
  %add.ptr289 = getelementptr i8, ptr %153, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr289, i32 25792) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri, align 4
  %add.ptr298 = getelementptr i8, ptr %155, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %52) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pri, align 4
  %add.ptr298.1 = getelementptr i8, ptr %157, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.1, i32 %55) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %158 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pri, align 4
  %add.ptr298.2 = getelementptr i8, ptr %159, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.2, i32 %58) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pri, align 4
  %add.ptr298.3 = getelementptr i8, ptr %161, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.3, i32 %61) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pri, align 4
  %add.ptr298.4 = getelementptr i8, ptr %163, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.4, i32 %64) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pri, align 4
  %add.ptr298.5 = getelementptr i8, ptr %165, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.5, i32 %67) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %166 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pri, align 4
  %add.ptr298.6 = getelementptr i8, ptr %167, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.6, i32 %70) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %168 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pri, align 4
  %add.ptr298.7 = getelementptr i8, ptr %169, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298.7, i32 %73) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  tail call void @arm_heavy_mb() #5
  %170 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pri, align 4
  %add.ptr310 = getelementptr i8, ptr %171, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 27312) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri, align 4
  %add.ptr319 = getelementptr i8, ptr %173, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 %78) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %174 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pri, align 4
  %add.ptr319.1 = getelementptr i8, ptr %175, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319.1, i32 %81) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pri, align 4
  %add.ptr319.2 = getelementptr i8, ptr %177, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319.2, i32 %84) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  tail call void @arm_heavy_mb() #5
  %178 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pri, align 4
  %add.ptr331 = getelementptr i8, ptr %179, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr331, i32 27264) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  tail call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pri, align 4
  %add.ptr340 = getelementptr i8, ptr %181, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr340, i32 %89) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  tail call void @arm_heavy_mb() #5
  %182 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pri, align 4
  %add.ptr340.1 = getelementptr i8, ptr %183, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr340.1, i32 %92) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  tail call void @arm_heavy_mb() #5
  %184 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pri, align 4
  %add.ptr340.2 = getelementptr i8, ptr %185, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr340.2, i32 %95) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  tail call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pri, align 4
  %add.ptr352 = getelementptr i8, ptr %187, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr352, i32 17408) #5, !srcloc !91
  br label %do.body356

do.body356:                                       ; preds = %do.body356.do.body356_crit_edge, %for.end248
  %__i347.0490 = phi i32 [ 0, %for.end248 ], [ %inc364, %do.body356.do.body356_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  tail call void @arm_heavy_mb() #5
  %arrayidx360 = getelementptr %struct.nv10_gr_chan, ptr %chan, i32 0, i32 5, i32 3, i32 %__i347.0490
  %188 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx360, align 4
  %190 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pri, align 4
  %add.ptr362 = getelementptr i8, ptr %191, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr362, i32 %189) #5, !srcloc !91
  %inc364 = add nuw nsw i32 %__i347.0490, 1
  %exitcond504.not = icmp eq i32 %inc364, 32
  br i1 %exitcond504.not, label %for.end365, label %do.body356.do.body356_crit_edge

do.body356.do.body356_crit_edge:                  ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body356

for.end365:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  tail call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pri, align 4
  %add.ptr372 = getelementptr i8, ptr %193, i32 4198224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr372, i32 192) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  tail call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri, align 4
  %add.ptr377 = getelementptr i8, ptr %195, i32 4198228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr377, i32 0) #5, !srcloc !91
  %call378 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end365, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_gr_mthd_lma_enable(ptr nocapture noundef readonly %chan, i32 noundef %mthd, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device1 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %gr2 = getelementptr inbounds %struct.nv10_gr_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %gr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gr2, align 8
  %call = tail call zeroext i1 @nv04_gr_idle(ptr noundef %5) #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4194448
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  tail call void @arm_heavy_mb() #5
  %or = or i32 %8, 256
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 4194448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #5, !srcloc !91
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 4196016
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  tail call void @arm_heavy_mb() #5
  %or19 = or i32 %13, 134217728
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 4196016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #5, !srcloc !91
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1067, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1068, i32 27}
!4 = !{ptr @nv10_gr_intr_name, !5, !"nv10_gr_intr_name", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1066, i32 28}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1073, i32 44}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1074, i32 44}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1075, i32 44}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1076, i32 44}
!14 = !{ptr @nv10_gr_nstatus, !15, !"nv10_gr_nstatus", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1072, i32 28}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1124, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nv10_gr_intr._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @nv10_gr_intr._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nv10_gr_new_.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1182, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nv10_gr_chan, !29, !"nv10_gr_chan", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 984, i32 1}
!30 = !{ptr @nv10_gr_ctx_regs, !31, !"nv10_gr_ctx_regs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 46, i32 12}
!32 = !{ptr @nv17_gr_ctx_regs, !33, !"nv17_gr_ctx_regs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 368, i32 12}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 794, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nv10_gr_ctx_regs_find_offset._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nv10_gr_ctx_regs_find_offset._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 807, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nv17_gr_ctx_regs_find_offset._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nv17_gr_ctx_regs_find_offset._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 654, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nv10_gr_create_pipe._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @nv10_gr_create_pipe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @nv10_gr_create_pipe._entry.19, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 684, i32 2}
!51 = !{ptr @nv10_gr_create_pipe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @nv10_gr_create_pipe._entry.21, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 692, i32 2}
!54 = !{ptr @nv10_gr_create_pipe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @nv10_gr_create_pipe._entry.23, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 707, i32 2}
!57 = !{ptr @nv10_gr_create_pipe._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @nv10_gr_create_pipe._entry.25, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 753, i32 2}
!60 = !{ptr @nv10_gr_create_pipe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @nv10_gr_create_pipe._entry.27, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 758, i32 2}
!63 = !{ptr @nv10_gr_create_pipe._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @nv10_gr_create_pipe._entry.29, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 763, i32 2}
!66 = !{ptr @nv10_gr_create_pipe._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @nv10_gr_create_pipe._entry.31, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 768, i32 2}
!69 = !{ptr @nv10_gr_create_pipe._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @nv10_gr_create_pipe._entry.33, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 773, i32 2}
!72 = !{ptr @nv10_gr_create_pipe._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @nv10_gr_create_pipe._entry.35, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 778, i32 2}
!75 = !{ptr @nv10_gr_create_pipe._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @nv10_gr, !77, !"nv10_gr", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c", i32 1189, i32 1}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 5421384}
!88 = !{i64 2156465657}
!89 = !{!"auto-init"}
!90 = !{i64 2156468377}
!91 = !{i64 5420966}
!92 = !{i64 2156468847}
!93 = !{i64 2156469315}
!94 = !{i64 2156471050}
!95 = !{i64 2156471452}
!96 = !{i64 2156471854}
!97 = !{i64 2156472256}
!98 = !{i64 2156472658}
!99 = !{i64 2156473076}
!100 = !{ptr @nv17_gr_mthd_lma_enable, ptr @nv17_gr_mthd_lma_window}
!101 = !{i64 2156473816}
!102 = !{i64 2156345637}
!103 = !{i64 2156346022}
!104 = !{i64 2156451784}
!105 = !{i64 2156443616}
!106 = !{i64 2156444482}
!107 = !{i64 2156361814}
!108 = !{i64 2156362216}
!109 = !{i64 2156362573}
!110 = !{i64 2156363001}
!111 = !{i64 2156363429}
!112 = !{i64 2156363857}
!113 = !{i64 2156364285}
!114 = !{i64 2156364713}
!115 = !{i64 2156365141}
!116 = !{i64 2156365569}
!117 = !{i64 2156365997}
!118 = !{i64 2156366425}
!119 = !{i64 2156366853}
!120 = !{i64 2156367527}
!121 = !{i64 2156368408}
!122 = !{i64 2156368843}
!123 = !{i64 2156369262}
!124 = !{i64 2156369933}
!125 = !{i64 2156370814}
!126 = !{i64 2156371501}
!127 = !{i64 2156372382}
!128 = !{i64 2156373069}
!129 = !{i64 2156373950}
!130 = !{i64 2156374637}
!131 = !{i64 2156375518}
!132 = !{i64 2156376205}
!133 = !{i64 2156377086}
!134 = !{i64 2156377773}
!135 = !{i64 2156378654}
!136 = !{i64 2156379341}
!137 = !{i64 2156380222}
!138 = !{i64 2156380909}
!139 = !{i64 2156381790}
!140 = !{i64 2156382477}
!141 = !{i64 2156383358}
!142 = !{i64 2156444958}
!143 = !{i64 2156428112}
!144 = !{i64 2156428514}
!145 = !{i64 2156428972}
!146 = !{i64 2156429374}
!147 = !{i64 2156429776}
!148 = !{i64 2156430178}
!149 = !{i64 2156430580}
!150 = !{i64 2156432766}
!151 = !{i64 2156433066}
!152 = !{i64 2156433860}
!153 = !{i64 2156434260}
!154 = !{i64 2156434701}
!155 = !{i64 2156435194}
!156 = !{i64 2156435647}
!157 = !{i64 2156436483}
!158 = !{i64 2156436861}
!159 = !{i64 2156437735}
!160 = !{i64 2156438137}
!161 = !{i64 2156439023}
!162 = !{i64 2156439425}
!163 = !{i64 2156431303}
!164 = !{i64 2156440194}
!165 = !{i64 2156440615}
!166 = !{i64 2156441027}
!167 = !{i64 2156441440}
!168 = !{i64 2156441856}
!169 = !{i64 2156442328}
!170 = !{i64 2156442755}
!171 = !{i64 2156445315}
!172 = !{i64 2156446169}
!173 = !{i64 2156446571}
!174 = !{i64 2156447457}
!175 = !{i64 2156447859}
!176 = !{i64 2156474245}
!177 = !{i64 2156474667}
!178 = !{i64 2156480358}
!179 = !{i64 2156480786}
!180 = !{i64 2156481214}
!181 = !{i64 2156481642}
!182 = !{i64 2156482070}
!183 = !{i64 2156482498}
!184 = !{i64 2156482974}
!185 = !{i64 2156483426}
!186 = !{i64 2156483839}
!187 = !{i64 2156484252}
!188 = !{i64 2156484665}
!189 = !{i64 2156485078}
!190 = !{i64 2156485506}
!191 = !{i64 2156485976}
!192 = !{i64 2156486446}
!193 = !{i64 2156486916}
!194 = !{i64 2156487386}
!195 = !{i64 2156487856}
!196 = !{i64 2156488284}
!197 = !{i64 2156489138}
!198 = !{i64 2156489540}
!199 = !{i64 2156490000}
!200 = !{i64 2156490428}
!201 = !{i64 2156458285}
!202 = !{i64 2156458687}
!203 = !{i64 2156459573}
!204 = !{i64 2156459975}
!205 = !{i64 2156448802}
!206 = !{i64 2156449642}
!207 = !{i64 2156346976}
!208 = !{i64 2156347876}
!209 = !{i64 2156348480}
!210 = !{i64 2156349380}
!211 = !{i64 2156349984}
!212 = !{i64 2156350884}
!213 = !{i64 2156351488}
!214 = !{i64 2156352388}
!215 = !{i64 2156352992}
!216 = !{i64 2156353892}
!217 = !{i64 2156354496}
!218 = !{i64 2156355396}
!219 = !{i64 2156356000}
!220 = !{i64 2156356900}
!221 = !{i64 2156357504}
!222 = !{i64 2156358404}
!223 = !{i64 2156359008}
!224 = !{i64 2156359908}
!225 = !{i64 2156360512}
!226 = !{i64 2156361412}
!227 = !{i64 2156449999}
!228 = !{i64 2156450853}
!229 = !{i64 2156451255}
!230 = !{i64 2156316677}
!231 = !{i64 2156317523}
!232 = !{i64 2156318127}
!233 = !{i64 2156319027}
!234 = !{i64 2156319628}
!235 = !{i64 2156320498}
!236 = !{i64 2156320983}
!237 = !{i64 2156321385}
!238 = !{i64 2156321989}
!239 = !{i64 2156322889}
!240 = !{i64 2156323481}
!241 = !{i64 2156324327}
!242 = !{i64 2156324919}
!243 = !{i64 2156325765}
!244 = !{i64 2156326357}
!245 = !{i64 2156327203}
!246 = !{i64 2156327560}
!247 = !{i64 2156327988}
!248 = !{i64 2156328416}
!249 = !{i64 2156328844}
!250 = !{i64 2156329272}
!251 = !{i64 2156329700}
!252 = !{i64 2156330128}
!253 = !{i64 2156330556}
!254 = !{i64 2156330984}
!255 = !{i64 2156331412}
!256 = !{i64 2156331840}
!257 = !{i64 2156332514}
!258 = !{i64 2156333395}
!259 = !{i64 2156334070}
!260 = !{i64 2156334885}
!261 = !{i64 2156335314}
!262 = !{i64 2156335733}
!263 = !{i64 2156336392}
!264 = !{i64 2156337207}
!265 = !{i64 2156337876}
!266 = !{i64 2156338691}
!267 = !{i64 2156339360}
!268 = !{i64 2156340175}
!269 = !{i64 2156340856}
!270 = !{i64 2156341737}
!271 = !{i64 2156342178}
!272 = !{i64 2156342606}
!273 = !{i64 2156343460}
!274 = !{i64 2156343862}
!275 = !{i64 2156344735}
!276 = !{i64 2156345137}
