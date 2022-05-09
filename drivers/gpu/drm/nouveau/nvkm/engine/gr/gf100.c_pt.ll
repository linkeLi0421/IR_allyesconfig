; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.nvkm_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [0 x %struct.nvkm_sclass] }
%struct.anon.137 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon.139, %struct.anon.140, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.141, %struct.anon.141, [0 x %struct.nvkm_sclass] }
%struct.anon.139 = type { ptr, i32 }
%struct.anon.140 = type { ptr, i32 }
%struct.anon.141 = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
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
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.fermi_a_zbc_color_v0 = type { i8, i8, i8, [5 x i8], [4 x i32], [4 x i32] }
%struct.fermi_a_zbc_depth_v0 = type { i8, i8, i8, [5 x i8], i32, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.164, %struct.anon.165, i8, ptr, ptr }
%struct.anon.164 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.165 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gf100_gr_chan = type { %struct.nvkm_object, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.178] }
%struct.anon.178 = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.gf100_gr_object = type { %struct.nvkm_object, ptr }

@gf100_gr_zbc = dso_local constant { %struct.gf100_gr_func_zbc, [16 x i8] } { %struct.gf100_gr_func_zbc { ptr @gf100_gr_zbc_clear_color, ptr @gf100_gr_zbc_clear_depth, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@gf100_fermi = dso_local constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr @gf100_fermi_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf100_gr_init_main_0 = dso_local constant { [12 x %struct.gf100_gr_init], [32 x i8] } { [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4194432, i8 1, i32 4, i32 3179458 }, %struct.gf100_gr_init { i32 4194440, i8 1, i32 4, i32 28647 }, %struct.gf100_gr_init { i32 4194444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194448, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4194620, i8 1, i32 4, i32 20513271 }, %struct.gf100_gr_init { i32 4194624, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4194628, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194632, i8 1, i32 4, i32 272 }, %struct.gf100_gr_init { i32 4194616, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194608, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194596, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_fe_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211056, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_pri_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211848, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_rstr2d_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4225032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_pd_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_ds_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_scc_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4227132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_prop_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293792, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_gpc_unk_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294148, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294420, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4293508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_setup_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294676, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_crstr_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_setup_1 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294856, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4294860, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294864, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4294868, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_zcull_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294928, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 4294932, i8 1, i32 4, i32 769 }, %struct.gf100_gr_init { i32 4294936, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4295040, i8 1, i32 4, i32 2004318064 }, %struct.gf100_gr_init { i32 4295044, i8 3, i32 4, i32 2004318071 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_gpm_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295684, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295816, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_gpc_unk_1 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 80 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_gcc_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4296716, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_tpccs_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300040, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300048, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_tex_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299452, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_pe_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298764, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298828, i8 1, i32 4, i32 23493 }, %struct.gf100_gr_init { i32 4298832, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_l1c_0 = dso_local constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299944, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4299956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299960, i8 1, i32 4, i32 35828 }, %struct.gf100_gr_init { i32 4299964, i8 1, i32 4, i32 672364038 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_wwdx_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299732, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4299740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_tpccs_1 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300076, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299788, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_be_0 = dso_local constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229392, i8 9, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229460, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4229508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229512, i8 1, i32 4, i32 134480385 }, %struct.gf100_gr_init { i32 4229516, i8 1, i32 4, i32 -2143281136 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_fe_1 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_pe_1 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298880, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__const.gf100_gr_zbc_init.one = private unnamed_addr constant [8 x i32] [i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@__const.gf100_gr_zbc_init.f32_1 = private unnamed_addr constant [8 x i32] [i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gf100_gr_wait_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1015, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: wait for idle timeout (en: %d, ctxsw: %d, busy: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gf100_gr_wait_idle\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_gr_wait_idle._entry_ptr = internal global ptr @gf100_gr_wait_idle._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STACK_ERROR\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"API_STACK_ERROR\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RET_EMPTY_STACK_ERROR\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PC_WRAP\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MISALIGNED_PC\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PC_OVERFLOW\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MISALIGNED_IMMC_ADDR\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MISALIGNED_REG\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ILLEGAL_INSTR_ENCODING\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ILLEGAL_SPH_INSTR_COMBO\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ILLEGAL_INSTR_PARAM\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INVALID_CONST_ADDR\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OOR_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OOR_ADDR\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MISALIGNED_ADDR\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INVALID_ADDR_SPACE\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ILLEGAL_INSTR_PARAM2\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INVALID_CONST_ADDR_LDC\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GEOMETRY_SM_ERROR\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DIVERGENT\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WARP_EXIT\00", [22 x i8] zeroinitializer }, align 32
@gf100_mp_warp_error = dso_local constant { [22 x %struct.nvkm_enum], [104 x i8] } { [22 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [104 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SM_TO_SM_FAULT\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"L1_ERROR\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MULTIPLE_WARP_ERRORS\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PHYSICAL_STACK_OVERFLOW\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BPT_INT\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BPT_PAUSE\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SINGLE_STEP_COMPLETE\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ECC_SEC_ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ECC_DED_ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TIMEOUT\00", [24 x i8] zeroinitializer }, align 32
@gf100_mp_global_error = dso_local constant { [11 x %struct.nvkm_bitfield], [40 x i8] } { [11 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.27 }, %struct.nvkm_bitfield { i32 2, ptr @.str.28 }, %struct.nvkm_bitfield { i32 4, ptr @.str.29 }, %struct.nvkm_bitfield { i32 8, ptr @.str.30 }, %struct.nvkm_bitfield { i32 16, ptr @.str.31 }, %struct.nvkm_bitfield { i32 32, ptr @.str.32 }, %struct.nvkm_bitfield { i32 64, ptr @.str.33 }, %struct.nvkm_bitfield { i32 536870912, ptr @.str.34 }, %struct.nvkm_bitfield { i32 1073741824, ptr @.str.35 }, %struct.nvkm_bitfield { i32 -2147483648, ptr @.str.36 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_mp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 1249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: GPC%i/TPC%i/MP trap: global %08x [%s] warp %04x [%s]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gf100_gr_trap_mp\00", [47 x i8] zeroinitializer }, align 32
@gf100_gr_trap_mp._entry_ptr = internal global ptr @gf100_gr_trap_mp._entry, section ".printk_index", align 4
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gf100_gr_ = internal constant { %struct.nvkm_gr_func, [40 x i8] } { %struct.nvkm_gr_func { ptr @gf100_gr_dtor, ptr @gf100_gr_oneinit, ptr @gf100_gr_init_, ptr @gf100_gr_fini, ptr @gf100_gr_intr, ptr null, ptr null, ptr @gf100_gr_chan_new, ptr @gf100_gr_object_get, ptr @gf100_gr_units, ptr @gf100_gr_chsw_load, %struct.anon.137 { ptr @gf100_gr_fecs_stop_ctxsw, ptr @gf100_gr_fecs_start_ctxsw, ptr @gf100_gr_ctxsw_inst }, [0 x %struct.nvkm_sclass] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Gr\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@gf100_gr_flcn = internal constant { %struct.nvkm_falcon_func, [56 x i8] } { %struct.nvkm_falcon_func { %struct.anon.139 zeroinitializer, %struct.anon.140 zeroinitializer, ptr null, ptr null, i32 0, i32 1536, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 0, ptr @nvkm_falcon_v1_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.141 zeroinitializer, %struct.anon.141 zeroinitializer, [0 x %struct.nvkm_sclass] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fecs\00", [27 x i8] zeroinitializer }, align 32
@gf100_gr_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gr->fecs.mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpccs\00", [26 x i8] zeroinitializer }, align 32
@gf100_grhub_data = internal global { [193 x i32], [220 x i8] } { [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], [220 x i8] zeroinitializer }, align 32
@gf100_gr_fecs_ucode = dso_local global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gf100_grhub_code, i32 3072 }, %struct.nvkm_blob { ptr @gf100_grhub_data, i32 772 } }, [16 x i8] zeroinitializer }, align 32
@gf100_gr_gpccs_ucode = dso_local global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gf100_grgpc_code, i32 1792 }, %struct.nvkm_blob { ptr @gf100_grgpc_data, i32 100 } }, [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NvGrUseFW\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fuc409c\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fuc409d\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fuc41ac\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fuc41ad\00", [24 x i8] zeroinitializer }, align 32
@gf100_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gf100_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gf100_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gf100_fermi_mthd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: fermi mthd %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gf100_fermi_mthd\00", [47 x i8] zeroinitializer }, align 32
@gf100_fermi_mthd._entry_ptr = internal global ptr @gf100_fermi_mthd._entry, section ".printk_index", align 4
@gf100_gr_ctxctl_debug_unit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 1480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %06x - done %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gf100_gr_ctxctl_debug_unit\00", [37 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_debug_unit._entry_ptr = internal global ptr @gf100_gr_ctxctl_debug_unit._entry, section ".printk_index", align 4
@gf100_gr_ctxctl_debug_unit._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str, i32 1485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: %06x - stat %08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_debug_unit._entry_ptr.57 = internal global ptr @gf100_gr_ctxctl_debug_unit._entry.55, section ".printk_index", align 4
@gf100_gr_ctxctl_debug_unit._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str, i32 1490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_debug_unit._entry_ptr.59 = internal global ptr @gf100_gr_ctxctl_debug_unit._entry.58, section ".printk_index", align 4
@gf100_gr_init_ctxctl_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str, i32 1770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to construct context\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gf100_gr_init_ctxctl_ext\00", [39 x i8] zeroinitializer }, align 32
@gf100_gr_init_ctxctl_ext._entry_ptr = internal global ptr @gf100_gr_init_ctxctl_ext._entry, section ".printk_index", align 4
@gf100_gr_init_ctxctl_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.62, ptr @.str, i32 1829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gf100_gr_init_ctxctl_int\00", [39 x i8] zeroinitializer }, align 32
@gf100_gr_init_ctxctl_int._entry_ptr = internal global ptr @gf100_gr_init_ctxctl_int._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NvGrResetWar\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gf100_gr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 1589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: ILLEGAL_MTHD ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gf100_gr_intr\00", [18 x i8] zeroinitializer }, align 32
@gf100_gr_intr._entry_ptr = internal global ptr @gf100_gr_intr._entry, section ".printk_index", align 4
@gf100_gr_intr._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str, i32 1598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: ILLEGAL_CLASS ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@gf100_gr_intr._entry_ptr.69 = internal global ptr @gf100_gr_intr._entry.67, section ".printk_index", align 4
@nv50_data_error_names = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gf100_gr_intr._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str, i32 1609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s: DATA_ERROR %08x [%s] ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@gf100_gr_intr._entry_ptr.72 = internal global ptr @gf100_gr_intr._entry.70, section ".printk_index", align 4
@gf100_gr_intr._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str, i32 1616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: TRAP ch %d [%010llx %s]\0A\00", [35 x i8] zeroinitializer }, align 32
@gf100_gr_intr._entry_ptr.75 = internal global ptr @gf100_gr_intr._entry.73, section ".printk_index", align 4
@gf100_gr_intr._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str, i32 1629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@gf100_gr_intr._entry_ptr.78 = internal global ptr @gf100_gr_intr._entry.76, section ".printk_index", align 4
@gf100_dispatch_error = internal constant { [4 x %struct.nvkm_bitfield], [32 x i8] } { [4 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.106 }, %struct.nvkm_bitfield { i32 2, ptr @.str.107 }, %struct.nvkm_bitfield { i32 4, ptr @.str.108 }, %struct.nvkm_bitfield zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str, i32 1362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DISPATCH %08x [%s]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gf100_gr_trap_intr\00", [45 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr = internal global ptr @gf100_gr_trap_intr._entry, section ".printk_index", align 4
@gf100_m2mf_error = internal constant { [3 x %struct.nvkm_bitfield], [40 x i8] } { [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.109 }, %struct.nvkm_bitfield { i32 2, ptr @.str.110 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str, i32 1373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: M2MF %08x [%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.83 = internal global ptr @gf100_gr_trap_intr._entry.81, section ".printk_index", align 4
@gf100_ccache_error = internal constant { [3 x %struct.nvkm_bitfield], [40 x i8] } { [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.111 }, %struct.nvkm_bitfield { i32 2, ptr @.str.112 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str, i32 1385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: CCACHE %08x [%s]\0A\00", [42 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.86 = internal global ptr @gf100_gr_trap_intr._entry.84, section ".printk_index", align 4
@gf100_gr_trap_intr._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str, i32 1394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: SHADER %08x, sph: 0x%06x, stage: 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.89 = internal global ptr @gf100_gr_trap_intr._entry.87, section ".printk_index", align 4
@gf100_unk6_error = internal constant { [2 x %struct.nvkm_bitfield], [16 x i8] } { [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.113 }, %struct.nvkm_bitfield zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str, i32 1405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: UNK6 %08x [%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.92 = internal global ptr @gf100_gr_trap_intr._entry.90, section ".printk_index", align 4
@gf100_macro_error = internal constant { [6 x %struct.nvkm_bitfield], [48 x i8] } { [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.114 }, %struct.nvkm_bitfield { i32 2, ptr @.str.115 }, %struct.nvkm_bitfield { i32 4, ptr @.str.116 }, %struct.nvkm_bitfield { i32 8, ptr @.str.117 }, %struct.nvkm_bitfield { i32 16, ptr @.str.118 }, %struct.nvkm_bitfield zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str, i32 1422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: MACRO %08x [%s], pc: 0x%03x%s, op: 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.95 = internal global ptr @gf100_gr_trap_intr._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (invalid)\00", [21 x i8] zeroinitializer }, align 32
@gk104_sked_error = internal constant { [15 x %struct.nvkm_bitfield], [40 x i8] } { [15 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 64, ptr @.str.119 }, %struct.nvkm_bitfield { i32 128, ptr @.str.120 }, %struct.nvkm_bitfield { i32 512, ptr @.str.121 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.122 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.123 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.124 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.125 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.126 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.127 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.128 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.129 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.130 }, %struct.nvkm_bitfield { i32 33554432, ptr @.str.131 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.132 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.80, ptr @.str, i32 1433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: SKED: %08x [%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.99 = internal global ptr @gf100_gr_trap_intr._entry.97, section ".printk_index", align 4
@gf100_gr_trap_intr._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.80, ptr @.str, i32 1460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: ROP%d %08x %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.102 = internal global ptr @gf100_gr_trap_intr._entry.100, section ".printk_index", align 4
@gf100_gr_trap_intr._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.80, ptr @.str, i32 1469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: TRAP UNHANDLED %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@gf100_gr_trap_intr._entry_ptr.105 = internal global ptr @gf100_gr_trap_intr._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INJECTED_BUNDLE_ERROR\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLASS_SUBCH_MISMATCH\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SUBCHSW_DURING_NOTIFY\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PUSH_TOO_MUCH_DATA\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUSH_NOT_ENOUGH_DATA\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTR\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LDCONST_OOB\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEMP_TOO_SMALL\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TOO_FEW_PARAMS\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TOO_MANY_PARAMS\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ILLEGAL_OPCODE\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DOUBLE_BRANCH\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WATCHDOG\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CTA_RESUME\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CONSTANT_BUFFER_SIZE\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LOCAL_MEMORY_SIZE_POS\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LOCAL_MEMORY_SIZE_NEG\00", [42 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WARP_CSTACK_SIZE\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TOTAL_TEMP_SIZE\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REGISTER_COUNT\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TOTAL_THREADS\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROGRAM_OFFSET\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SHARED_MEMORY_SIZE\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CTA_THREAD_DIMENSION_ZERO\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MEMORY_WINDOW_OVERLAP\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SHARED_CONFIG_TOO_SMALL\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TOTAL_REGISTER_COUNT\00", [43 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str, i32 1315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: GPC%d/ZCULL: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gf100_gr_trap_gpc\00", [46 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc._entry_ptr = internal global ptr @gf100_gr_trap_gpc._entry, section ".printk_index", align 4
@gf100_gr_trap_gpc._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str, i32 1322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: GPC%d/CCACHE: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc._entry_ptr.137 = internal global ptr @gf100_gr_trap_gpc._entry.135, section ".printk_index", align 4
@gf100_gr_trap_gpc._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str, i32 1329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: GPC%d/ESETUP: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc._entry_ptr.140 = internal global ptr @gf100_gr_trap_gpc._entry.138, section ".printk_index", align 4
@gf100_gr_trap_gpc._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.134, ptr @.str, i32 1344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: GPC%d/%08x: unknown\0A\00", [39 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc._entry_ptr.143 = internal global ptr @gf100_gr_trap_gpc._entry.141, section ".printk_index", align 4
@gf100_gpc_rop_error = internal constant { [7 x %struct.nvkm_bitfield], [40 x i8] } { [7 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 2, ptr @.str.146 }, %struct.nvkm_bitfield { i32 16, ptr @.str.147 }, %struct.nvkm_bitfield { i32 32, ptr @.str.148 }, %struct.nvkm_bitfield { i32 128, ptr @.str.149 }, %struct.nvkm_bitfield { i32 256, ptr @.str.150 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.151 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc_rop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str, i32 1191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: GPC%d/PROP trap: %08x [%s] x = %u, y = %u, format = %x, storage type = %x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gf100_gr_trap_gpc_rop\00", [42 x i8] zeroinitializer }, align 32
@gf100_gr_trap_gpc_rop._entry_ptr = internal global ptr @gf100_gr_trap_gpc_rop._entry, section ".printk_index", align 4
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RT_PITCH_OVERRUN\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RT_WIDTH_OVERRUN\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RT_HEIGHT_OVERRUN\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ZETA_STORAGE_TYPE_MISMATCH\00", [37 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT_STORAGE_TYPE_MISMATCH\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RT_LINEAR_MISMATCH\00", [45 x i8] zeroinitializer }, align 32
@gf100_gr_trap_tpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str, i32 1264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: GPC%d/TPC%d/TEX: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gf100_gr_trap_tpc\00", [46 x i8] zeroinitializer }, align 32
@gf100_gr_trap_tpc._entry_ptr = internal global ptr @gf100_gr_trap_tpc._entry, section ".printk_index", align 4
@gf100_gr_trap_tpc._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str, i32 1276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: GPC%d/TPC%d/POLY: %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@gf100_gr_trap_tpc._entry_ptr.156 = internal global ptr @gf100_gr_trap_tpc._entry.154, section ".printk_index", align 4
@gf100_gr_trap_tpc._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str, i32 1283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: GPC%d/TPC%d/L1C: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@gf100_gr_trap_tpc._entry_ptr.159 = internal global ptr @gf100_gr_trap_tpc._entry.157, section ".printk_index", align 4
@gf100_gr_trap_tpc._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.153, ptr @.str, i32 1290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: GPC%d/TPC%d/MPC: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@gf100_gr_trap_tpc._entry_ptr.162 = internal global ptr @gf100_gr_trap_tpc._entry.160, section ".printk_index", align 4
@gf100_gr_trap_tpc._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.153, ptr @.str, i32 1296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: GPC%d/TPC%d/%08x: unknown\0A\00", [33 x i8] zeroinitializer }, align 32
@gf100_gr_trap_tpc._entry_ptr.165 = internal global ptr @gf100_gr_trap_tpc._entry.163, section ".printk_index", align 4
@gf100_gr_ctxctl_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str, i32 1523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: FECS MTHD subc %d class %04x mthd %04x data %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gf100_gr_ctxctl_isr\00", [44 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_isr._entry_ptr = internal global ptr @gf100_gr_ctxctl_isr._entry, section ".printk_index", align 4
@gf100_gr_ctxctl_isr._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str, i32 1525, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: FECS ucode error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_isr._entry_ptr.170 = internal global ptr @gf100_gr_ctxctl_isr._entry.168, section ".printk_index", align 4
@gf100_gr_ctxctl_isr._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str, i32 1532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: FECS watchdog timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_isr._entry_ptr.173 = internal global ptr @gf100_gr_ctxctl_isr._entry.171, section ".printk_index", align 4
@gf100_gr_ctxctl_isr._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.167, ptr @.str, i32 1539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: FECS %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@gf100_gr_ctxctl_isr._entry_ptr.176 = internal global ptr @gf100_gr_ctxctl_isr._entry.174, section ".printk_index", align 4
@__const.gf100_gr_chan_new.args = private unnamed_addr constant %struct.gf100_vmm_map_v0 { i8 0, i8 0, i8 0, i8 1, i8 0 }, align 1
@gf100_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @gf100_gr_chan_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_chan_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf100_gr_object_func = internal constant { %struct.nvkm_object_func, [36 x i8] } zeroinitializer, align 32
@gf100_grhub_code = internal global { <{ [724 x i32], [44 x i32] }>, [768 x i8] } { <{ [724 x i32], [44 x i32] }> <{ [724 x i32] [i32 60493557, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 133234936, i32 66061568, i32 1036290, i32 -135265091, i32 520449, i32 50589703, i32 -1124069424, i32 -1124009980, i32 523780, i32 1107302385, i32 -822078480, i32 300351505, i32 347472137, i32 1375752, i32 -251516944, i32 -267255801, i32 47185923, i32 -251347712, i32 -33109993, i32 616366096, i32 117442545, i32 -805305360, i32 79495170, i32 537077745, i32 16779249, i32 -805239824, i32 79495170, i32 537143281, i32 17041393, i32 -805239824, i32 79495170, i32 537602033, i32 17303537, i32 -805239824, i32 79495170, i32 537667569, i32 18614257, i32 -805239824, i32 79495170, i32 -251591790, i32 -267845625, i32 63963907, i32 -251347712, i32 -259587033, i32 133234723, i32 66061312, i32 184320, i32 670041277, i32 520452, i32 258051, i32 -1124072752, i32 271709188, i32 -1778063375, i32 -197073936, i32 -21403615, i32 -1863203070, i32 -268238464, i32 260055028, i32 18345986, i32 -1241243717, i32 133234962, i32 66061056, i32 118785, i32 133235901, i32 66061312, i32 118785, i32 401671357, i32 -135266048, i32 287438082, i32 589427976, i32 284684296, i32 141566453, i32 -1744826728, i32 569704719, i32 345309520, i32 520456, i32 17035456, i32 -1124072240, i32 520452, i32 17035457, i32 -1124072240, i32 3192580, i32 2079507, i32 -251464266, i32 -254607353, i32 265289987, i32 -1241203456, i32 280365077, i32 135575041, i32 -184410183, i32 -1157442783, i32 60293151, i32 4714754, i32 1346629664, i32 134500000, i32 -201187399, i32 1319148833, i32 -188940020, i32 -1600314892, i32 -201259954, i32 1319148833, i32 -135266048, i32 -1658719230, i32 134237856, i32 -932699660, i32 200548351, i32 72261882, i32 1747055624, i32 -1224728645, i32 -1233125312, i32 468975922, i32 16249022, i32 141566453, i32 -184485904, i32 -251129567, i32 -268369913, i32 30409219, i32 -1123762944, i32 521793556, i32 134219761, i32 -805174288, i32 79495169, i32 -201316108, i32 -672137167, i32 958526480, i32 -1309408780, i32 -180354588, i32 -1124013797, i32 77197460, i32 251660273, i32 -805174288, i32 79495177, i32 -1073735695, i32 -821947408, i32 670105617, i32 602980608, i32 2281218, i32 -182512696, i32 -939489013, i32 200548131, i32 -1189021342, i32 -1799552494, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 838074674, i32 1143076098, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 553387197, i32 -1712286531, i32 520454, i32 33812495, i32 -1124070960, i32 20050948, i32 172237301, i32 -1712286531, i32 520454, i32 33812503, i32 -1124070960, i32 856617988, i32 314122489, i32 20116482, i32 -184405260, i32 -66436063, i32 520480, i32 33812672, i32 -1124072752, i32 319747076, i32 -199285816, i32 838077707, i32 36893697, i32 172237301, i32 -251582480, i32 -255655929, i32 47186435, i32 -1123762944, i32 77197460, i32 385878001, i32 -805174288, i32 79495177, i32 -15855883, i32 -201202512, i32 -222753509, i32 -735972094, i32 1175385097, i32 -201136976, i32 -1799540197, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 854851890, i32 1143076098, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 250873021, i32 284136465, i32 -184420880, i32 -184320479, i32 -1107379442, i32 522842148, i32 134219761, i32 -805174288, i32 79495170, i32 -22671627, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265286668, i32 -403631913, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 11581188, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16821220, i32 -267580428, i32 -403631913, i32 569655297, i32 11265028, i32 1812722692, i32 118024177, i32 -197073936, i32 -4626399, i32 520450, i32 33812484, i32 -1124069424, i32 82309380, i32 1088679943, i32 -1184357900, i32 133235455, i32 66061056, i32 1036290, i32 -20511555, i32 49189968, i32 117503985, i32 -1153371152, i32 569639151, i32 520552, i32 33812482, i32 -1124069424, i32 66580484, i32 58597877, i32 16824305, i32 -251478087, i32 -268352281, i32 569655523, i32 79163805, i32 -5194491, i32 200586411, i32 520463, i32 50589703, i32 -1124070448, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 -4652553, i32 1625813250, i32 1088680001, i32 -241360396, i32 -264150809, i32 569655523, i32 50313576, i32 -200998968, i32 16314379, i32 -4590403, i32 1625813250, i32 1088680001, i32 -123919884, i32 284553216, i32 -251461703, i32 -264146713, i32 569655523, i32 -251594595, i32 -264146713, i32 569655523, i32 50313576, i32 -200215312, i32 16314395, i32 33613809, i32 -264182288, i32 -437247771, i32 520464, i32 17035397, i32 -1124069680, i32 150466564, i32 -201198922, i32 -437125861, i32 -437189632, i32 133234944, i32 66094336, i32 970753, i32 16254141, i32 452986865, i32 -805174288, i32 79495183, i32 -251461703, i32 -259386137, i32 569655523, i32 50313629, i32 -1469257743, i32 -197008400, i32 16293153, i32 -2080372751, i32 -805174288, i32 79495183, i32 -2080311311, i32 -821890064, i32 -196353, i32 -216271867, i32 -1799552776, i32 -251291152, i32 -267452409, i32 164626947, i32 -268124928, i32 569642151, i32 -235618864, i32 -259457017, i32 265290243, i32 -251347712, i32 -255787001, i32 47186435, i32 -251347712, i32 -259850233, i32 47186435, i32 -268124928, i32 569706487, i32 133236888, i32 66109440, i32 184322, i32 201196733, i32 522907648, i32 -1241242442, i32 -1799552480, i32 -251094544, i32 -267452409, i32 164626947, i32 -251347712, i32 -259981305, i32 47186435, i32 -251347712, i32 -251658201, i32 -260046813, i32 133235237, i32 66095104, i32 184322, i32 401605821, i32 2617616, i32 35909634, i32 -133885190, i32 -258687741, i32 133236889, i32 66066176, i32 643074, i32 26739901, i32 404010625, i32 -1233124712, i32 318572581, i32 369197061, i32 -1712286531, i32 520457, i32 33812495, i32 -1124070960, i32 520452, i32 33812609, i32 -1124073008, i32 19394564, i32 -2013263887, i32 -805174288, i32 79495170, i32 16783345, i32 -100264976, i32 66585857, i32 -1712286531, i32 520457, i32 33812503, i32 -1124070960, i32 -258687740, i32 133236121, i32 66066176, i32 643074, i32 16254141, i32 131801589, i32 146153973, i32 -200497168, i32 -135213023, i32 -1742605051, i32 2225416, i32 -1744766968, i32 133251331, i32 66093312, i32 249858, i32 884802749, i32 -184601404, i32 1475415835, i32 1408238080, i32 87423494, i32 1318585336, i32 -2125490048, i32 -1231216140, i32 313919536, i32 -551816191, i32 -250215528, i32 -259981305, i32 63963651, i32 -2147173120, i32 401686528, i32 334496000, i32 100792838, i32 16253944, i32 -251336720, i32 -268304377, i32 248513283, i32 -251347712, i32 -268435225, i32 -288422941, i32 15003904, i32 -233049056, i32 -200928780, i32 -135261950, i32 1881273616, i32 -618531576, i32 470938631, i32 -184354832, i32 -184020703, i32 -184016095, i32 -1123534815, i32 287438324, i32 -1239288568, i32 369203208, i32 133244093, i32 66061568, i32 184321, i32 532219069, i32 15200514, i32 1105457317, i32 -258137612, i32 753926652, i32 19183106, i32 -1190792451, i32 -403635457, i32 -470768380, i32 -1658719167, i32 40509941, i32 133244093, i32 66078716, i32 184322, i32 753927357, i32 52475393, i32 1258031089, i32 -805174288, i32 79495170, i32 -268325648, i32 -1209006427, i32 825344, i32 -268366440, i32 569704679, i32 -1477443217, i32 270660872, i32 1579283713, i32 318895106, i32 -200497168, i32 -135213023, i32 -1742605051, i32 839054344, i32 -184354832, i32 -1123544799, i32 1881273844, i32 2132931848, i32 589427970, i32 -168510200, i32 -200797919, i32 26742801, i32 85065024, i32 -184087564, i32 -183898335, i32 -133693407], [44 x i32] zeroinitializer }>, [768 x i8] zeroinitializer }, align 32
@gf100_grgpc_code = internal global { <{ [402 x i32], [46 x i32] }>, [448 x i8] } { <{ [402 x i32], [46 x i32] }> <{ [402 x i32] [i32 60886773, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 -520552200, i32 -251461703, i32 -258468633, i32 569655523, i32 33026205, i32 -251461703, i32 -258204441, i32 569655523, i32 -119472995, i32 -251347712, i32 -264110057, i32 298778643, i32 152168192, i32 135575041, i32 -268430082, i32 133235239, i32 66064896, i32 184320, i32 401671357, i32 285082872, i32 520448, i32 258055, i32 -1124073264, i32 69726212, i32 67110897, i32 -805305360, i32 79495170, i32 -250596876, i32 -259915737, i32 583991587, i32 20443136, i32 -1155586832, i32 850789426, i32 84049921, i32 -251264128, i32 -259653593, i32 583991587, i32 67272704, i32 -250665802, i32 -255262713, i32 47186179, i32 -251347712, i32 -268369881, i32 583991843, i32 -1791705856, i32 133236773, i32 66109440, i32 380929, i32 133235901, i32 66109696, i32 380929, i32 244843709, i32 17799168, i32 22028789, i32 -1157615685, i32 244842559, i32 34576385, i32 22028789, i32 -50000232, i32 784007407, i32 4111104, i32 -251513418, i32 -254607353, i32 63963395, i32 -1241203456, i32 901122085, i32 18920966, i32 -1241435978, i32 884344868, i32 36681992, i32 47391221, i32 -1157615685, i32 133234751, i32 66060544, i32 249858, i32 616367293, i32 -249615888, i32 -267911161, i32 47186435, i32 -201016064, i32 838074408, i32 483913728, i32 -197582348, i32 -458165247, i32 504951812, i32 -268336642, i32 549258791, i32 -1241246979, i32 519897572, i32 1637893, i32 95691253, i32 -1797714188, i32 -168816401, i32 2116154625, i32 -871435261, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265548812, i32 -403628841, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16779249, i32 -805305360, i32 79495178, i32 -520294148, i32 -1325608708, i32 -1862491908, i32 -1996586756, i32 -58655744, i32 3339264, i32 -135265800, i32 68065281, i32 -1190854981, i32 -403635457, i32 -470772712, i32 -1658719168, i32 -135266056, i32 520480, i32 17035397, i32 -1124069424, i32 149417988, i32 -201203018, i32 -168690405, i32 -168753152, i32 133235200, i32 66094336, i32 1036289, i32 16254141, i32 -2130704399, i32 -805174288, i32 79495183, i32 -184086028, i32 -184187359, i32 -1123915231, i32 -66588380, i32 33812551, i32 -1124072752, i32 19722244, i32 -251453258, i32 -263521273, i32 47186435, i32 -268124928, i32 -1510997588, i32 12054786, i32 1353969664, i32 -1241248616, i32 -1128591420, i32 825344, i32 -268366440, i32 569704679, i32 -1393557137, i32 77983745, i32 1073788913, i32 -1739541520, i32 -994704372, i32 12368655, i32 -1744761704, i32 261620237, i32 15200518, i32 1864496392, i32 1579283713, i32 100791298, i32 -184085772, i32 -184385759, i32 -133861855], [46 x i32] zeroinitializer }>, [448 x i8] zeroinitializer }, align 32
@gf100_grgpc_data = internal global { <{ i32, i32, i32, i32, [21 x i32] }>, [60 x i8] } { <{ i32, i32, i32, i32, [21 x i32] }> <{ i32 100, i32 100, i32 100, i32 100, [21 x i32] zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nouveau/nv%02x_%s\00", [46 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nouveau/%s\00", [21 x i8] zeroinitializer }, align 32
@gf100_gr_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str, i32 2449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: failed to load %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gf100_gr_load_fw\00", [47 x i8] zeroinitializer }, align 32
@gf100_gr_load_fw._entry_ptr = internal global ptr @gf100_gr_load_fw._entry, section ".printk_index", align 4
@gf100_gr_pack_mmio = internal constant { [28 x %struct.gf100_gr_pack], [32 x i8] } { [28 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gf100_gr_init_vsc_stream_master, ptr @gf100_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr @gf100_gr_init_40601c, ptr null, ptr @gf100_gr_init_419cc0, ptr @gf100_gr_init_419eb4, ptr null, ptr null, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gf100_gr_pack_mmio, %struct.anon { ptr @gf100_gr_fecs_ucode }, %struct.anon.0 { ptr @gf100_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 0, ptr @gf100_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 36921, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37015, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37056, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gf100_gr_init_sm_0 = internal constant { [14 x %struct.gf100_gr_init], [32 x i8] } { [14 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 4352 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 286263042 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4300468, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300488, i8 1, i32 4, i32 101058072 }, %struct.gf100_gr_init { i32 4300496, i8 1, i32 4, i32 251596344 }, %struct.gf100_gr_init { i32 4300500, i8 1, i32 4, i32 17892593 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300544, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.185 = internal global [21 x i64] [i64 19, i64 8, i64 1, i64 2, i64 4, i64 8, i64 12, i64 16, i64 20, i64 22, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60, i64 64]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.187 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 5, i64 7, i64 10, i64 11, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 8, i64 151, i64 192]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.190 = private unnamed_addr constant [13 x i8] c"gf100_gr_zbc\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 145, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"gf100_fermi\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 246, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"gf100_gr_init_main_0\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 463, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_fe_0\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 479, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_pri_0\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 486, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [23 x i8] c"gf100_gr_init_rstr2d_0\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 492, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_pd_0\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 498, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_ds_0\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 504, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_scc_0\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 512, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"gf100_gr_init_prop_0\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 518, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [24 x i8] c"gf100_gr_init_gpc_unk_0\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 524, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"gf100_gr_init_setup_0\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 533, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [22 x i8] c"gf100_gr_init_crstr_0\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 539, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [22 x i8] c"gf100_gr_init_setup_1\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 545, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"gf100_gr_init_zcull_0\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 554, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_gpm_0\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 564, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant [24 x i8] c"gf100_gr_init_gpc_unk_1\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 571, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_gcc_0\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 580, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [22 x i8] c"gf100_gr_init_tpccs_0\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 587, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_tex_0\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 594, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_pe_0\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 602, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_l1c_0\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 611, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"gf100_gr_init_wwdx_0\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 622, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [22 x i8] c"gf100_gr_init_tpccs_1\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 629, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c"gf100_gr_init_mpc_0\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 635, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_be_0\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 659, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_fe_1\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 671, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_pe_1\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 677, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 782, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1013, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1196, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1197, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1198, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1199, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1200, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1201, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1202, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1203, i32 10 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1204, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1205, i32 10 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1206, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1207, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1208, i32 10 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1209, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1210, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1211, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1212, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1213, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1214, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1215, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1216, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c"gf100_mp_warp_error\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1195, i32 24 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1221, i32 16 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1222, i32 16 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1223, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1224, i32 16 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1225, i32 16 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1226, i32 16 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1227, i32 16 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1228, i32 16 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1229, i32 16 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1230, i32 16 }
@___asan_gen_.391 = private unnamed_addr constant [22 x i8] c"gf100_mp_global_error\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1220, i32 28 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1247, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [10 x i8] c"gf100_gr_\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2059, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2104, i32 9 }
@___asan_gen_.418 = private unnamed_addr constant [14 x i8] c"gf100_gr_flcn\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2075, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2111, i32 11 }
@___asan_gen_.424 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2115, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2118, i32 11 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"gf100_grhub_data\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 2, i32 17 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c"gf100_gr_fecs_ucode\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2377, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant [21 x i8] c"gf100_gr_gpccs_ucode\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2387, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2465, i32 36 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2468, i32 27 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2469, i32 27 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2470, i32 27 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2471, i32 27 }
@___asan_gen_.457 = private unnamed_addr constant [14 x i8] c"gf100_gr_fwif\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2479, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 233, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1479, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1481, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1486, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1770, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1829, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2003, i32 39 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1561, i32 21 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1586, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1596, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1606, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1615, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1629, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant [21 x i8] c"gf100_dispatch_error\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1112, i32 35 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1362, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [17 x i8] c"gf100_m2mf_error\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1119, i32 35 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1373, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant [19 x i8] c"gf100_ccache_error\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1130, i32 35 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1385, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1393, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant [17 x i8] c"gf100_unk6_error\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1125, i32 35 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1405, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant [18 x i8] c"gf100_macro_error\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1136, i32 35 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1419, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [17 x i8] c"gk104_sked_error\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1145, i32 35 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1433, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1459, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1469, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1113, i32 16 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1114, i32 16 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1115, i32 16 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1120, i32 16 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1121, i32 16 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1131, i32 16 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1132, i32 16 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1126, i32 16 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1137, i32 16 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1138, i32 16 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1139, i32 16 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1140, i32 16 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1141, i32 16 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1146, i32 16 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1147, i32 16 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1148, i32 16 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1149, i32 16 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1150, i32 16 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1151, i32 16 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1152, i32 16 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1153, i32 16 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1154, i32 16 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1155, i32 16 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1156, i32 16 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1157, i32 16 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1158, i32 16 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1159, i32 16 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1315, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1322, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1329, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1344, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant [20 x i8] c"gf100_gpc_rop_error\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1163, i32 35 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1188, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1164, i32 16 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1165, i32 16 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1166, i32 16 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1167, i32 16 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1168, i32 16 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1169, i32 16 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1264, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1276, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1283, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1290, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1296, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1521, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1525, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1532, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 1539, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant [14 x i8] c"gf100_gr_chan\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 372, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c"gf100_gr_object_func\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 278, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant [17 x i8] c"gf100_grhub_code\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgf100.fuc3.h\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 209, i32 17 }
@___asan_gen_.826 = private unnamed_addr constant [17 x i8] c"gf100_grgpc_code\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.830, i32 40, i32 17 }
@___asan_gen_.829 = private unnamed_addr constant [17 x i8] c"gf100_grgpc_data\00", align 1
@___asan_gen_.830 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgf100.fuc3.h\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.830, i32 2, i32 17 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2443, i32 25 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2446, i32 26 }
@___asan_gen_.838 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.844 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2449, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant [19 x i8] c"gf100_gr_pack_mmio\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 683, i32 1 }
@___asan_gen_.850 = private unnamed_addr constant [9 x i8] c"gf100_gr\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 2395, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant [19 x i8] c"gf100_gr_init_sm_0\00", align 1
@___asan_gen_.854 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.854, i32 641, i32 1 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @gf100_fermi_mthd._entry, ptr @gf100_fermi_mthd._entry_ptr, ptr @gf100_gr_ctxctl_debug_unit._entry, ptr @gf100_gr_ctxctl_debug_unit._entry.55, ptr @gf100_gr_ctxctl_debug_unit._entry.58, ptr @gf100_gr_ctxctl_debug_unit._entry_ptr, ptr @gf100_gr_ctxctl_debug_unit._entry_ptr.57, ptr @gf100_gr_ctxctl_debug_unit._entry_ptr.59, ptr @gf100_gr_ctxctl_isr._entry, ptr @gf100_gr_ctxctl_isr._entry.168, ptr @gf100_gr_ctxctl_isr._entry.171, ptr @gf100_gr_ctxctl_isr._entry.174, ptr @gf100_gr_ctxctl_isr._entry_ptr, ptr @gf100_gr_ctxctl_isr._entry_ptr.170, ptr @gf100_gr_ctxctl_isr._entry_ptr.173, ptr @gf100_gr_ctxctl_isr._entry_ptr.176, ptr @gf100_gr_init_ctxctl_ext._entry, ptr @gf100_gr_init_ctxctl_ext._entry_ptr, ptr @gf100_gr_init_ctxctl_int._entry, ptr @gf100_gr_init_ctxctl_int._entry_ptr, ptr @gf100_gr_intr._entry, ptr @gf100_gr_intr._entry.67, ptr @gf100_gr_intr._entry.70, ptr @gf100_gr_intr._entry.73, ptr @gf100_gr_intr._entry.76, ptr @gf100_gr_intr._entry_ptr, ptr @gf100_gr_intr._entry_ptr.69, ptr @gf100_gr_intr._entry_ptr.72, ptr @gf100_gr_intr._entry_ptr.75, ptr @gf100_gr_intr._entry_ptr.78, ptr @gf100_gr_load_fw._entry, ptr @gf100_gr_load_fw._entry_ptr, ptr @gf100_gr_trap_gpc._entry, ptr @gf100_gr_trap_gpc._entry.135, ptr @gf100_gr_trap_gpc._entry.138, ptr @gf100_gr_trap_gpc._entry.141, ptr @gf100_gr_trap_gpc._entry_ptr, ptr @gf100_gr_trap_gpc._entry_ptr.137, ptr @gf100_gr_trap_gpc._entry_ptr.140, ptr @gf100_gr_trap_gpc._entry_ptr.143, ptr @gf100_gr_trap_gpc_rop._entry, ptr @gf100_gr_trap_gpc_rop._entry_ptr, ptr @gf100_gr_trap_intr._entry, ptr @gf100_gr_trap_intr._entry.100, ptr @gf100_gr_trap_intr._entry.103, ptr @gf100_gr_trap_intr._entry.81, ptr @gf100_gr_trap_intr._entry.84, ptr @gf100_gr_trap_intr._entry.87, ptr @gf100_gr_trap_intr._entry.90, ptr @gf100_gr_trap_intr._entry.93, ptr @gf100_gr_trap_intr._entry.97, ptr @gf100_gr_trap_intr._entry_ptr, ptr @gf100_gr_trap_intr._entry_ptr.102, ptr @gf100_gr_trap_intr._entry_ptr.105, ptr @gf100_gr_trap_intr._entry_ptr.83, ptr @gf100_gr_trap_intr._entry_ptr.86, ptr @gf100_gr_trap_intr._entry_ptr.89, ptr @gf100_gr_trap_intr._entry_ptr.92, ptr @gf100_gr_trap_intr._entry_ptr.95, ptr @gf100_gr_trap_intr._entry_ptr.99, ptr @gf100_gr_trap_mp._entry, ptr @gf100_gr_trap_mp._entry_ptr, ptr @gf100_gr_trap_tpc._entry, ptr @gf100_gr_trap_tpc._entry.154, ptr @gf100_gr_trap_tpc._entry.157, ptr @gf100_gr_trap_tpc._entry.160, ptr @gf100_gr_trap_tpc._entry.163, ptr @gf100_gr_trap_tpc._entry_ptr, ptr @gf100_gr_trap_tpc._entry_ptr.156, ptr @gf100_gr_trap_tpc._entry_ptr.159, ptr @gf100_gr_trap_tpc._entry_ptr.162, ptr @gf100_gr_trap_tpc._entry_ptr.165, ptr @gf100_gr_wait_idle._entry, ptr @gf100_gr_wait_idle._entry_ptr, ptr @gf100_gr_zbc, ptr @gf100_fermi, ptr @gf100_gr_init_main_0, ptr @gf100_gr_init_fe_0, ptr @gf100_gr_init_pri_0, ptr @gf100_gr_init_rstr2d_0, ptr @gf100_gr_init_pd_0, ptr @gf100_gr_init_ds_0, ptr @gf100_gr_init_scc_0, ptr @gf100_gr_init_prop_0, ptr @gf100_gr_init_gpc_unk_0, ptr @gf100_gr_init_setup_0, ptr @gf100_gr_init_crstr_0, ptr @gf100_gr_init_setup_1, ptr @gf100_gr_init_zcull_0, ptr @gf100_gr_init_gpm_0, ptr @gf100_gr_init_gpc_unk_1, ptr @gf100_gr_init_gcc_0, ptr @gf100_gr_init_tpccs_0, ptr @gf100_gr_init_tex_0, ptr @gf100_gr_init_pe_0, ptr @gf100_gr_init_l1c_0, ptr @gf100_gr_init_wwdx_0, ptr @gf100_gr_init_tpccs_1, ptr @gf100_gr_init_mpc_0, ptr @gf100_gr_init_be_0, ptr @gf100_gr_init_fe_1, ptr @gf100_gr_init_pe_1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @gf100_mp_warp_error, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @gf100_mp_global_error, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @gf100_gr_, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @gf100_gr_flcn, ptr @.str.43, ptr @gf100_gr_new_.__key, ptr @.str.44, ptr @.str.45, ptr @gf100_grhub_data, ptr @gf100_gr_fecs_ucode, ptr @gf100_gr_gpccs_ucode, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @gf100_gr_fwif, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @gf100_dispatch_error, ptr @.str.79, ptr @.str.80, ptr @gf100_m2mf_error, ptr @.str.82, ptr @gf100_ccache_error, ptr @.str.85, ptr @.str.88, ptr @gf100_unk6_error, ptr @.str.91, ptr @gf100_macro_error, ptr @.str.94, ptr @.str.96, ptr @gk104_sked_error, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @gf100_gpc_rop_error, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @gf100_gr_chan, ptr @gf100_gr_object_func, ptr @gf100_grhub_code, ptr @gf100_grgpc_code, ptr @gf100_grgpc_data, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @gf100_gr_pack_mmio, ptr @gf100_gr, ptr @gf100_gr_init_sm_0], section "llvm.metadata"
@0 = internal global [222 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_zbc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fermi to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_main_0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_fe_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_pri_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_rstr2d_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_pd_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_ds_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_scc_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_prop_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_gpc_unk_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_setup_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_crstr_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_setup_1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_zcull_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_gpm_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_gpc_unk_1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_gcc_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_tpccs_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_tex_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_pe_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_l1c_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_wwdx_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_tpccs_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_mpc_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_be_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_fe_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_pe_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_wait_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_mp_warp_error to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_mp_global_error to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_mp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_flcn to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grhub_data to i32), i32 772, i32 992, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_fecs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_gpccs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fermi_mthd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_debug_unit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_debug_unit._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_debug_unit._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_ctxctl_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_ctxctl_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_intr._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_intr._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_intr._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_intr._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_dispatch_error to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_m2mf_error to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ccache_error to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_unk6_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_macro_error to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_sked_error to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_intr._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_gpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_gpc._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_gpc._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_gpc._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gpc_rop_error to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_gpc_rop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_tpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_tpc._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_tpc._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_tpc._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_trap_tpc._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_isr._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_isr._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_ctxctl_isr._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_object_func to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grhub_code to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grgpc_code to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grgpc_data to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_pack_mmio to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_gr_init_sm_0 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_gr_zbc_clear_color(ptr nocapture noundef readonly %gr, i32 noundef %zbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body32_crit_edge, label %do.body

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !436
  tail call void @arm_heavy_mb() #14
  %ds = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc, i32 1
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4216836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !438
  tail call void @arm_heavy_mb() #14
  %arrayidx11 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 4216840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !439
  tail call void @arm_heavy_mb() #14
  %arrayidx20 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 4216844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %13) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !440
  tail call void @arm_heavy_mb() #14
  %arrayidx29 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx29, align 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 4216848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %17) #14, !srcloc !437
  br label %do.body32

do.body32:                                        ; preds = %do.body, %entry.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !441
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %pri38 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %pri38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri38, align 4
  %add.ptr39 = getelementptr i8, ptr %23, i32 4216852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %21) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !442
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %pri38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri38, align 4
  %add.ptr44 = getelementptr i8, ptr %25, i32 4216864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %zbc) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !443
  tail call void @arm_heavy_mb() #14
  %26 = ptrtoint ptr %pri38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri38, align 4
  %add.ptr49 = getelementptr i8, ptr %27, i32 4216868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 4) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_gr_zbc_clear_depth(ptr nocapture noundef readonly %gr, i32 noundef %zbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %zbc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %do.body

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !444
  tail call void @arm_heavy_mb() #14
  %ds = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %zbc, i32 1
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4216856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #14, !srcloc !437
  br label %do.body4

do.body4:                                         ; preds = %do.body, %entry.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !445
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pri10 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %pri10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri10, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 4216860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !446
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %pri10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri10, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 4216864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %zbc) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !447
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %pri10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri10, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 4216868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 5) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fermi_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %mthd) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %if.end
  %engine.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %9 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %10, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %size)
  %cmp4.i = icmp ugt i32 %size, 39
  br i1 %cmp4.i, label %land.lhs.true8.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true8.i:                                 ; preds = %sw.bb
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp11.i = icmp eq i8 %12, 0
  br i1 %cmp11.i, label %if.then.i, label %land.lhs.true8.i.return_crit_edge

land.lhs.true8.i.return_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 40
  br i1 %tobool.not.i, label %if.then18.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then18.i:                                      ; preds = %if.then.i
  %format.i = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %format.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %format.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %14, label %if.then18.i.return_crit_edge [
    i8 1, label %if.then18.i.sw.bb.i_crit_edge
    i8 2, label %if.then18.i.sw.bb.i_crit_edge29
    i8 4, label %if.then18.i.sw.bb.i_crit_edge30
    i8 8, label %if.then18.i.sw.bb.i_crit_edge31
    i8 12, label %if.then18.i.sw.bb.i_crit_edge32
    i8 16, label %if.then18.i.sw.bb.i_crit_edge33
    i8 20, label %if.then18.i.sw.bb.i_crit_edge34
    i8 22, label %if.then18.i.sw.bb.i_crit_edge35
    i8 24, label %if.then18.i.sw.bb.i_crit_edge36
    i8 28, label %if.then18.i.sw.bb.i_crit_edge37
    i8 32, label %if.then18.i.sw.bb.i_crit_edge38
    i8 36, label %if.then18.i.sw.bb.i_crit_edge39
    i8 40, label %if.then18.i.sw.bb.i_crit_edge40
    i8 44, label %if.then18.i.sw.bb.i_crit_edge41
    i8 48, label %if.then18.i.sw.bb.i_crit_edge42
    i8 52, label %if.then18.i.sw.bb.i_crit_edge43
    i8 56, label %if.then18.i.sw.bb.i_crit_edge44
    i8 60, label %if.then18.i.sw.bb.i_crit_edge45
    i8 64, label %if.then18.i.sw.bb.i_crit_edge46
  ]

if.then18.i.sw.bb.i_crit_edge46:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge45:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge44:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge43:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge42:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge41:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge40:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge39:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge38:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge37:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge36:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge35:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge34:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge33:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge32:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge31:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge30:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge29:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.sw.bb.i_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then18.i.return_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb.i:                                          ; preds = %if.then18.i.sw.bb.i_crit_edge, %if.then18.i.sw.bb.i_crit_edge29, %if.then18.i.sw.bb.i_crit_edge30, %if.then18.i.sw.bb.i_crit_edge31, %if.then18.i.sw.bb.i_crit_edge32, %if.then18.i.sw.bb.i_crit_edge33, %if.then18.i.sw.bb.i_crit_edge34, %if.then18.i.sw.bb.i_crit_edge35, %if.then18.i.sw.bb.i_crit_edge36, %if.then18.i.sw.bb.i_crit_edge37, %if.then18.i.sw.bb.i_crit_edge38, %if.then18.i.sw.bb.i_crit_edge39, %if.then18.i.sw.bb.i_crit_edge40, %if.then18.i.sw.bb.i_crit_edge41, %if.then18.i.sw.bb.i_crit_edge42, %if.then18.i.sw.bb.i_crit_edge43, %if.then18.i.sw.bb.i_crit_edge44, %if.then18.i.sw.bb.i_crit_edge45, %if.then18.i.sw.bb.i_crit_edge46
  %conv21.i = zext i8 %14 to i32
  %ds.i = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %data, i32 0, i32 4
  %l2.i = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %data, i32 0, i32 5
  %call.i = tail call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %add.ptr3.i, i32 noundef %conv21.i, ptr noundef %ds.i, ptr noundef %l2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp23.i = icmp sgt i32 %call.i, -1
  br i1 %cmp23.i, label %if.then25.i, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then25.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv26.i = trunc i32 %call.i to i8
  %index.i = getelementptr inbounds %struct.fermi_a_zbc_color_v0, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26.i, ptr %index.i, align 2
  br label %return

sw.bb5:                                           ; preds = %if.end
  %engine.i15 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %17 = ptrtoint ptr %engine.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %engine.i15, align 8
  %add.ptr3.i16 = getelementptr i8, ptr %18, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp4.i17 = icmp ugt i32 %size, 15
  br i1 %cmp4.i17, label %land.lhs.true8.i19, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true8.i19:                               ; preds = %sw.bb5
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp11.i18 = icmp eq i8 %20, 0
  br i1 %cmp11.i18, label %if.then.i21, label %land.lhs.true8.i19.return_crit_edge

land.lhs.true8.i19.return_crit_edge:              ; preds = %land.lhs.true8.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i21:                                      ; preds = %land.lhs.true8.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %tobool.not.i20 = icmp eq i32 %size, 16
  br i1 %tobool.not.i20, label %if.then18.i23, label %if.then.i21.return_crit_edge

if.then.i21.return_crit_edge:                     ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then18.i23:                                    ; preds = %if.then.i21
  %format.i22 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %format.i22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %format.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cond28.i = icmp eq i8 %22, 1
  br i1 %cond28.i, label %sw.bb.i27, label %if.then18.i23.return_crit_edge

if.then18.i23.return_crit_edge:                   ; preds = %if.then18.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb.i27:                                        ; preds = %if.then18.i23
  call void @__sanitizer_cov_trace_pc() #16
  %ds.i24 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %ds.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ds.i24, align 4
  %l2.i25 = getelementptr inbounds %struct.fermi_a_zbc_depth_v0, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %l2.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %l2.i25, align 4
  %call.i26 = tail call fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %add.ptr3.i16, i32 noundef %24, i32 noundef %26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp22.inv.i = icmp slt i32 %call.i26, 0
  %cond24.i = select i1 %cmp22.inv.i, i32 -28, i32 0
  br label %return

return:                                           ; preds = %sw.bb.i27, %if.then18.i23.return_crit_edge, %if.then.i21.return_crit_edge, %land.lhs.true8.i19.return_crit_edge, %sw.bb5.return_crit_edge, %if.then25.i, %sw.bb.i.return_crit_edge, %if.then18.i.return_crit_edge, %if.then.i.return_crit_edge, %land.lhs.true8.i.return_crit_edge, %sw.bb.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.return_crit_edge ], [ 0, %if.then25.i ], [ -22, %if.then18.i.return_crit_edge ], [ %call.i, %sw.bb.i.return_crit_edge ], [ -38, %sw.bb.return_crit_edge ], [ -38, %land.lhs.true8.i.return_crit_edge ], [ -7, %if.then.i.return_crit_edge ], [ %cond24.i, %sw.bb.i27 ], [ -22, %if.then18.i23.return_crit_edge ], [ -38, %sw.bb5.return_crit_edge ], [ -38, %land.lhs.true8.i19.return_crit_edge ], [ -7, %if.then.i21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_fecs_bind_pointer(ptr nocapture noundef readonly %gr, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !448
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4233280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 48) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !449
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 4232448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %inst) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 4232452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 3) #14, !srcloc !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #14
  %8 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #14
  br label %do.body12

do.body12:                                        ; preds = %do.cond19.do.body12_crit_edge, %entry
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 4233216
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %do.body12.cleanup56.thread_crit_edge

do.body12.cleanup56.thread_crit_edge:             ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup56.thread

cleanup:                                          ; preds = %do.body12
  %and15 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.cond19, label %cleanup.cleanup56.thread_crit_edge

cleanup.cleanup56.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup56.thread

do.cond19:                                        ; preds = %cleanup
  %call20 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #14
  %cmp = icmp sgt i64 %call20, -1
  br i1 %cmp, label %do.cond19.do.body12_crit_edge, label %do.end32

do.cond19.do.body12_crit_edge:                    ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12

do.end32:                                         ; preds = %do.cond19
  %12 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_wait, align 8
  %device34 = getelementptr inbounds %struct.nvkm_timer, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device34, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %17) #14
  %18 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_wait, align 8
  %device38 = getelementptr inbounds %struct.nvkm_timer, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device38, align 4
  %dev39 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev39, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end32._crit_edge

do.end32._crit_edge:                              ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %28

if.end.i:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %28

cleanup56.thread:                                 ; preds = %cleanup.cleanup56.thread_crit_edge, %do.body12.cleanup56.thread_crit_edge
  %retval.174.ph = phi i32 [ 0, %cleanup.cleanup56.thread_crit_edge ], [ -5, %do.body12.cleanup56.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #14
  br label %29

28:                                               ; preds = %if.end.i, %do.end32._crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %do.end32._crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 788, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call35, ptr noundef %retval.0.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #14
  br label %29

29:                                               ; preds = %28, %cleanup56.thread
  %30 = phi i32 [ -110, %28 ], [ %retval.174.ph, %cleanup56.thread ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_rops(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4232708
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %and = lshr i32 %4, 16
  %shr = and i32 %and, 31
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_zbc_init(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  %zero = alloca [8 x i32], align 4
  %one = alloca [8 x i32], align 4
  %f32_0 = alloca [8 x i32], align 4
  %f32_1 = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %zero) #14
  %0 = call ptr @memset(ptr %zero, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %one) #14
  %1 = call ptr @memcpy(ptr %one, ptr @__const.gf100_gr_zbc_init.one, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f32_0) #14
  %2 = call ptr @memset(ptr %f32_0, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f32_1) #14
  %3 = call ptr @memcpy(ptr %f32_1, ptr @__const.gf100_gr_zbc_init.f32_1, i32 32)
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %ltc1 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %ltc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltc1, align 4
  %zbc_min = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %zbc_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zbc_min, align 4
  %zbc_color = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 9
  %10 = ptrtoint ptr %zbc_color to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zbc_color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then:                                          ; preds = %entry
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %zero, i32 0, i32 4
  %call = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %gr, i32 noundef 1, ptr noundef nonnull %zero, ptr noundef %arrayidx5)
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr %one, i32 0, i32 4
  %call8 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %gr, i32 noundef 2, ptr noundef nonnull %one, ptr noundef %arrayidx7)
  %inc9 = add i32 %9, 2
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %f32_0, i32 0, i32 4
  %call12 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %gr, i32 noundef 4, ptr noundef nonnull %f32_0, ptr noundef %arrayidx11)
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %f32_1, i32 0, i32 4
  %call16 = call fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %gr, i32 noundef 4, ptr noundef nonnull %f32_1, ptr noundef %arrayidx15)
  %inc17 = add i32 %9, 4
  %12 = call fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %gr, i32 noundef 0, i32 noundef 0)
  %13 = call fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %gr, i32 noundef 1065353216, i32 noundef 1065353216)
  %14 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gr, align 4
  %zbc = getelementptr inbounds %struct.gf100_gr_func, ptr %15, i32 0, i32 38
  %16 = ptrtoint ptr %zbc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %zbc, align 4
  %stencil_get = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %stencil_get to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stencil_get, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.then.if.end39_crit_edge, label %if.then23

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %inc13 = add i32 %9, 3
  %call27 = call i32 %19(ptr noundef %gr, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %20 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gr, align 4
  %zbc30 = getelementptr inbounds %struct.gf100_gr_func, ptr %21, i32 0, i32 38
  %22 = ptrtoint ptr %zbc30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %zbc30, align 4
  %stencil_get31 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %stencil_get31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stencil_get31, align 4
  %call32 = call i32 %25(ptr noundef %gr, i32 noundef 1, i32 noundef 1, i32 noundef 1) #14
  %26 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gr, align 4
  %zbc35 = getelementptr inbounds %struct.gf100_gr_func, ptr %27, i32 0, i32 38
  %28 = ptrtoint ptr %zbc35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %zbc35, align 4
  %stencil_get36 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %stencil_get36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stencil_get36, align 4
  %call37 = call i32 %31(ptr noundef %gr, i32 noundef 1, i32 noundef 255, i32 noundef 255) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then23, %if.then.if.end39_crit_edge, %entry.if.end39_crit_edge
  %c.0 = phi i32 [ %9, %entry.if.end39_crit_edge ], [ %inc17, %if.then23 ], [ %inc17, %if.then.if.end39_crit_edge ]
  %d.0 = phi i32 [ %9, %entry.if.end39_crit_edge ], [ %inc9, %if.then23 ], [ %inc9, %if.then.if.end39_crit_edge ]
  %s.0 = phi i32 [ %9, %entry.if.end39_crit_edge ], [ %inc13, %if.then23 ], [ %9, %if.then.if.end39_crit_edge ]
  %zbc_max = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 9
  %32 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %33)
  %cmp.not110 = icmp sgt i32 %c.0, %33
  br i1 %cmp.not110, label %if.end39.for.cond43.preheader_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

if.end39.for.cond43.preheader_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.body.for.cond43.preheader_crit_edge, %if.end39.for.cond43.preheader_crit_edge
  %34 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %d.0, i32 %35)
  %cmp45.not112 = icmp sgt i32 %d.0, %35
  br i1 %cmp45.not112, label %for.cond43.preheader.for.end51_crit_edge, label %for.cond43.preheader.for.body46_crit_edge

for.cond43.preheader.for.body46_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body46

for.cond43.preheader.for.end51_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end51

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end39.for.body_crit_edge
  %index.0111 = phi i32 [ %inc42, %for.body.for.body_crit_edge ], [ %c.0, %if.end39.for.body_crit_edge ]
  %36 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gr, align 4
  %zbc41 = getelementptr inbounds %struct.gf100_gr_func, ptr %37, i32 0, i32 38
  %38 = ptrtoint ptr %zbc41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %zbc41, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void %41(ptr noundef %gr, i32 noundef %index.0111) #14
  %inc42 = add i32 %index.0111, 1
  %42 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %zbc_max, align 4
  %cmp.not = icmp sgt i32 %inc42, %43
  br i1 %cmp.not, label %for.body.for.cond43.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.cond43.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond43.preheader

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.cond43.preheader.for.body46_crit_edge
  %index.1113 = phi i32 [ %inc50, %for.body46.for.body46_crit_edge ], [ %d.0, %for.cond43.preheader.for.body46_crit_edge ]
  %44 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gr, align 4
  %zbc48 = getelementptr inbounds %struct.gf100_gr_func, ptr %45, i32 0, i32 38
  %46 = ptrtoint ptr %zbc48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %zbc48, align 4
  %clear_depth = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %clear_depth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clear_depth, align 4
  call void %49(ptr noundef %gr, i32 noundef %index.1113) #14
  %inc50 = add i32 %index.1113, 1
  %50 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %zbc_max, align 4
  %cmp45.not = icmp sgt i32 %inc50, %51
  br i1 %cmp45.not, label %for.body46.for.end51_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body46

for.body46.for.end51_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end51

for.end51:                                        ; preds = %for.body46.for.end51_crit_edge, %for.cond43.preheader.for.end51_crit_edge
  %52 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gr, align 4
  %zbc53 = getelementptr inbounds %struct.gf100_gr_func, ptr %53, i32 0, i32 38
  %54 = ptrtoint ptr %zbc53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %zbc53, align 4
  %clear_stencil = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %clear_stencil to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clear_stencil, align 4
  %tobool54.not = icmp eq ptr %57, null
  br i1 %tobool54.not, label %for.end51.if.end66_crit_edge, label %for.cond56.preheader

for.end51.if.end66_crit_edge:                     ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

for.cond56.preheader:                             ; preds = %for.end51
  %58 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %s.0, i32 %59)
  %cmp58.not114 = icmp sgt i32 %s.0, %59
  br i1 %cmp58.not114, label %for.cond56.preheader.if.end66_crit_edge, label %for.cond56.preheader.for.body59_crit_edge

for.cond56.preheader.for.body59_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body59

for.cond56.preheader.if.end66_crit_edge:          ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.cond56.preheader.for.body59_crit_edge
  %index.2115 = phi i32 [ %inc64, %for.body59.for.body59_crit_edge ], [ %s.0, %for.cond56.preheader.for.body59_crit_edge ]
  %60 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gr, align 4
  %zbc61 = getelementptr inbounds %struct.gf100_gr_func, ptr %61, i32 0, i32 38
  %62 = ptrtoint ptr %zbc61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %zbc61, align 4
  %clear_stencil62 = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %clear_stencil62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clear_stencil62, align 4
  call void %65(ptr noundef %gr, i32 noundef %index.2115) #14
  %inc64 = add i32 %index.2115, 1
  %66 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %zbc_max, align 4
  %cmp58.not = icmp sgt i32 %inc64, %67
  br i1 %cmp58.not, label %for.body59.if.end66_crit_edge, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body59

for.body59.if.end66_crit_edge:                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.end66:                                         ; preds = %for.body59.if.end66_crit_edge, %for.cond56.preheader.if.end66_crit_edge, %for.end51.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f32_1) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f32_0) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %one) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %zero) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_zbc_color_get(ptr noundef %gr, i32 noundef %format, ptr nocapture noundef readonly %ds, ptr noundef %l2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %ltc1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %ltc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltc1, align 4
  %zbc_min = getelementptr inbounds %struct.nvkm_ltc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %zbc_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zbc_min, align 4
  %zbc_max = getelementptr inbounds %struct.nvkm_ltc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not94 = icmp sgt i32 %5, %7
  br i1 %cmp.not94, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %zbc.095 = phi i32 [ %zbc.1, %for.inc.for.body_crit_edge ], [ -28, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %i.096
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %format)
  %cmp6.not = icmp eq i32 %9, %format
  br i1 %cmp6.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %if.then
  %ds10 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %i.096, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ds10, ptr noundef dereferenceable(16) %ds, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %l216 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %i.096, i32 2
  %bcmp91 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %l216, ptr noundef dereferenceable(16) %l2, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp91)
  %tobool19.not = icmp eq i32 %bcmp91, 0
  br i1 %tobool19.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbc.095)
  %cmp39 = icmp slt i32 %zbc.095, 0
  %i.0.zbc.0 = select i1 %cmp39, i32 %i.096, i32 %zbc.095
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %zbc.1 = phi i32 [ %zbc.095, %if.then.for.inc_crit_edge ], [ %zbc.095, %if.end.for.inc_crit_edge ], [ %i.0.zbc.0, %if.else ]
  %inc = add i32 %i.096, 1
  %cmp.not = icmp sgt i32 %inc, %7
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbc.1)
  %cmp41 = icmp slt i32 %zbc.1, 0
  br i1 %cmp41, label %for.end.cleanup_crit_edge, label %if.end43

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx45 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc.1
  %ds46 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc.1, i32 1
  %10 = call ptr @memcpy(ptr %ds46, ptr %ds, i32 16)
  %l250 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 9, i32 %zbc.1, i32 2
  %11 = call ptr @memcpy(ptr %l250, ptr %l2, i32 16)
  %12 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %format, ptr %arrayidx45, align 4
  %call55 = tail call i32 @nvkm_ltc_zbc_color_get(ptr noundef %3, i32 noundef %zbc.1, ptr noundef %l2) #14
  %13 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gr, align 4
  %zbc56 = getelementptr inbounds %struct.gf100_gr_func, ptr %14, i32 0, i32 38
  %15 = ptrtoint ptr %zbc56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zbc56, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %gr, i32 noundef %zbc.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %for.end.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %zbc.1, %if.end43 ], [ %i.096, %if.end13.cleanup_crit_edge ], [ %zbc.1, %for.end.cleanup_crit_edge ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_zbc_depth_get(ptr noundef %gr, i32 noundef %ds, i32 noundef %l2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %ltc1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %ltc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltc1, align 4
  %zbc_min = getelementptr inbounds %struct.nvkm_ltc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %zbc_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zbc_min, align 4
  %zbc_max = getelementptr inbounds %struct.nvkm_ltc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not3 = icmp sgt i32 %5, %7
  br i1 %cmp.not3, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %zbc.04 = phi i32 [ %zbc.1, %for.inc.for.body_crit_edge ], [ -28, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %i.05
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %9, label %for.body.for.inc_crit_edge [
    i32 0, label %if.else
    i32 1, label %if.end
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %ds10 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %i.05, i32 1
  %11 = ptrtoint ptr %ds10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ds10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %ds)
  %cmp11.not = icmp eq i32 %12, %ds
  br i1 %cmp11.not, label %if.end13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %l216 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %i.05, i32 2
  %13 = ptrtoint ptr %l216 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l216, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %l2)
  %cmp17.not = icmp eq i32 %14, %l2
  br i1 %cmp17.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbc.04)
  %cmp37 = icmp slt i32 %zbc.04, 0
  %i.0.zbc.0 = select i1 %cmp37, i32 %i.05, i32 %zbc.04
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %zbc.1 = phi i32 [ %zbc.04, %if.end.for.inc_crit_edge ], [ %i.0.zbc.0, %if.else ], [ %zbc.04, %for.body.for.inc_crit_edge ]
  %inc = add i32 %i.05, 1
  %cmp.not = icmp sgt i32 %inc, %7
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbc.1)
  %cmp39 = icmp slt i32 %zbc.1, 0
  br i1 %cmp39, label %for.end.cleanup_crit_edge, label %if.end41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx43 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %zbc.1
  %15 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx43, align 4
  %ds47 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %zbc.1, i32 1
  %16 = ptrtoint ptr %ds47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ds, ptr %ds47, align 4
  %l250 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 10, i32 %zbc.1, i32 2
  %17 = ptrtoint ptr %l250 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %l2, ptr %l250, align 4
  %call = tail call i32 @nvkm_ltc_zbc_depth_get(ptr noundef %3, i32 noundef %zbc.1, i32 noundef %l2) #14
  %18 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gr, align 4
  %zbc51 = getelementptr inbounds %struct.gf100_gr_func, ptr %19, i32 0, i32 38
  %20 = ptrtoint ptr %zbc51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zbc51, align 4
  %clear_depth = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %clear_depth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clear_depth, align 4
  tail call void %23(ptr noundef %gr, i32 noundef %zbc.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %for.end.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %zbc.1, %if.end41 ], [ %i.05, %if.end13.cleanup_crit_edge ], [ %zbc.1, %for.end.cleanup_crit_edge ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_wait_idle(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %add.neg = sub i32 -200, %2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4196096
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !454
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 512
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !455
  %and = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 9792
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !456
  %and14 = and i32 %11, 32768
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 4195852
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !457
  %and22 = and i32 %14, 1
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %lor.lhs.false

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp ne i32 %and22, 0
  %brmerge = select i1 %tobool23.not, i1 true, i1 %tobool15.not
  br i1 %brmerge, label %do.cond, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.cond:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %15
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.body28

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body28:                                        ; preds = %do.cond
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not = icmp eq i32 %17, 0
  br i1 %cmp29.not, label %do.body28.cleanup_crit_edge, label %do.end33

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  %and14.lobit = lshr exact i32 %and14, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef 1, i32 noundef %and14.lobit, i32 noundef %and22) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.body28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end33 ], [ -11, %do.body28.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_mmio(ptr nocapture noundef readonly %gr, ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not39 = icmp eq ptr %p, null
  br i1 %tobool.not39, label %entry.for.end20_crit_edge, label %land.rhs.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end20

land.rhs.lr.ph:                                   ; preds = %entry
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc18.land.rhs_crit_edge, %land.rhs.lr.ph
  %pack.040 = phi ptr [ %p, %land.rhs.lr.ph ], [ %incdec.ptr19, %for.inc18.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %pack.040 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pack.040, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.rhs.for.end20_crit_edge, label %land.rhs.land.rhs7_crit_edge

land.rhs.land.rhs7_crit_edge:                     ; preds = %land.rhs
  br label %land.rhs7

land.rhs.for.end20_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end20

land.rhs7:                                        ; preds = %while.end.land.rhs7_crit_edge, %land.rhs.land.rhs7_crit_edge
  %init.037 = phi ptr [ %incdec.ptr, %while.end.land.rhs7_crit_edge ], [ %3, %land.rhs.land.rhs7_crit_edge ]
  %count = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %land.rhs7.for.inc18_crit_edge, label %for.body10

land.rhs7.for.inc18_crit_edge:                    ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.body10:                                       ; preds = %land.rhs7
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %init.037 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init.037, align 4
  %pitch = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037, i32 0, i32 2
  %8 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pitch, align 4
  %mul = mul i32 %9, %conv
  %add = add i32 %mul, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp34 = icmp ult i32 %7, %add
  br i1 %cmp34, label %do.body.lr.ph, label %for.body10.while.end_crit_edge

for.body10.while.end_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.body.lr.ph:                                    ; preds = %for.body10
  %data = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %addr13.035 = phi i32 [ %7, %do.body.lr.ph ], [ %add17, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !458
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %addr13.035
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #14, !srcloc !437
  %14 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pitch, align 4
  %add17 = add i32 %15, %addr13.035
  %cmp = icmp ult i32 %add17, %add
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %for.body10.while.end_crit_edge
  %incdec.ptr = getelementptr %struct.gf100_gr_init, ptr %init.037, i32 1
  %tobool6.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool6.not, label %while.end.for.inc18_crit_edge, label %while.end.land.rhs7_crit_edge

while.end.land.rhs7_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs7

while.end.for.inc18_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.inc18:                                        ; preds = %while.end.for.inc18_crit_edge, %land.rhs7.for.inc18_crit_edge
  %incdec.ptr19 = getelementptr %struct.gf100_gr_pack, ptr %pack.040, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr19, null
  br i1 %tobool.not, label %for.inc18.for.end20_crit_edge, label %for.inc18.land.rhs_crit_edge

for.inc18.land.rhs_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end20

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %land.rhs.for.end20_crit_edge, %entry.for.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_icmd(ptr noundef %gr, ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !459
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4194824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #14, !srcloc !437
  %tobool.not139 = icmp eq ptr %p, null
  br i1 %tobool.not139, label %entry.do.body95_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body95

land.rhs:                                         ; preds = %for.inc92.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %pack.0141 = phi ptr [ %incdec.ptr93, %for.inc92.land.rhs_crit_edge ], [ %p, %entry.land.rhs_crit_edge ]
  %data.0140 = phi i32 [ %data.1.lcssa, %for.inc92.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %pack.0141 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pack.0141, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.rhs.do.body95_crit_edge, label %for.cond5.preheader

land.rhs.do.body95_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body95

for.cond5.preheader:                              ; preds = %land.rhs
  %cmp = icmp eq ptr %pack.0141, %p
  br label %land.rhs7

land.rhs7:                                        ; preds = %while.end.land.rhs7_crit_edge, %for.cond5.preheader
  %init.0134 = phi ptr [ %5, %for.cond5.preheader ], [ %incdec.ptr, %while.end.land.rhs7_crit_edge ]
  %data.1133 = phi i32 [ %data.0140, %for.cond5.preheader ], [ %data.2, %while.end.land.rhs7_crit_edge ]
  %count = getelementptr inbounds %struct.gf100_gr_init, ptr %init.0134, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %land.rhs7.for.inc92_crit_edge, label %for.body10

land.rhs7.for.inc92_crit_edge:                    ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc92

for.body10:                                       ; preds = %land.rhs7
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %init.0134 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init.0134, align 4
  %pitch = getelementptr inbounds %struct.gf100_gr_init, ptr %init.0134, i32 0, i32 2
  %10 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pitch, align 4
  %mul = mul i32 %11, %conv
  %add = add i32 %mul, %9
  br i1 %cmp, label %land.lhs.true, label %for.body10.lor.lhs.false_crit_edge

for.body10.lor.lhs.false_crit_edge:               ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body10
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 4
  %cmp17 = icmp eq ptr %init.0134, %13
  br i1 %cmp17, label %land.lhs.true.do.body22_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true.do.body22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body22

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.body10.lor.lhs.false_crit_edge
  %data19 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.0134, i32 0, i32 3
  %14 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data.1133, i32 %15)
  %cmp20.not = icmp eq i32 %data.1133, %15
  br i1 %cmp20.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.body22_crit_edge

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body22

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body22:                                        ; preds = %lor.lhs.false.do.body22_crit_edge, %land.lhs.true.do.body22_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !460
  call void @arm_heavy_mb() #14
  %data25 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.0134, i32 0, i32 3
  %16 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data25, align 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 4194820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %17) #14, !srcloc !437
  %20 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data25, align 4
  br label %if.end

if.end:                                           ; preds = %do.body22, %lor.lhs.false.if.end_crit_edge
  %data.2 = phi i32 [ %21, %do.body22 ], [ %data.1133, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp29130 = icmp ult i32 %9, %add
  br i1 %cmp29130, label %if.end.do.body31_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.do.body31_crit_edge:                       ; preds = %if.end
  br label %do.body31

do.body31:                                        ; preds = %if.end88.do.body31_crit_edge, %if.end.do.body31_crit_edge
  %addr13.0131 = phi i32 [ %add91, %if.end88.do.body31_crit_edge ], [ %9, %if.end.do.body31_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !461
  call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %23, i32 4194816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %addr13.0131) #14, !srcloc !437
  %and = and i32 %addr13.0131, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %and)
  %cmp36 = icmp eq i32 %and, 57600
  br i1 %cmp36, label %if.then38, label %do.body31.if.end39_crit_edge

do.body31.if.end39_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  %call = call i32 @gf100_gr_wait_idle(ptr noundef %gr)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.body31.if.end39_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #14
  %24 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #14
  br label %do.body40

do.body40:                                        ; preds = %do.cond48.do.body40_crit_edge, %if.end39
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %26, i32 4196096
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  %and44 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body40.if.end88_crit_edge, label %do.cond48

do.body40.if.end88_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

do.cond48:                                        ; preds = %do.body40
  %call49 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #14
  %cmp50 = icmp sgt i64 %call49, -1
  br i1 %cmp50, label %do.cond48.do.body40_crit_edge, label %do.end66

do.cond48.do.body40_crit_edge:                    ; preds = %do.cond48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

do.end66:                                         ; preds = %do.cond48
  %28 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_wait, align 8
  %device68 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device68, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %call69 = call ptr @dev_driver_string(ptr noundef %33) #14
  %34 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_wait, align 8
  %device72 = getelementptr inbounds %struct.nvkm_timer, ptr %35, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %device72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device72, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev73, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end66.dev_name.exit_crit_edge

do.end66.dev_name.exit_crit_edge:                 ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end66.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %43, %if.end.i ], [ %41, %do.end66.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1066, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call69, ptr noundef %retval.0.i) #14
  br label %if.end88

if.end88:                                         ; preds = %dev_name.exit, %do.body40.if.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #14
  %44 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pitch, align 4
  %add91 = add i32 %45, %addr13.0131
  %cmp29 = icmp ult i32 %add91, %add
  br i1 %cmp29, label %if.end88.do.body31_crit_edge, label %if.end88.while.end_crit_edge

if.end88.while.end_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end88.do.body31_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

while.end:                                        ; preds = %if.end88.while.end_crit_edge, %if.end.while.end_crit_edge
  %incdec.ptr = getelementptr %struct.gf100_gr_init, ptr %init.0134, i32 1
  %tobool6.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool6.not, label %while.end.for.inc92_crit_edge, label %while.end.land.rhs7_crit_edge

while.end.land.rhs7_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs7

while.end.for.inc92_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc92

for.inc92:                                        ; preds = %while.end.for.inc92_crit_edge, %land.rhs7.for.inc92_crit_edge
  %data.1.lcssa = phi i32 [ %data.1133, %land.rhs7.for.inc92_crit_edge ], [ %data.2, %while.end.for.inc92_crit_edge ]
  %incdec.ptr93 = getelementptr %struct.gf100_gr_pack, ptr %pack.0141, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr93, null
  br i1 %tobool.not, label %for.inc92.do.body95_crit_edge, label %for.inc92.land.rhs_crit_edge

for.inc92.land.rhs_crit_edge:                     ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.inc92.do.body95_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body95

do.body95:                                        ; preds = %for.inc92.do.body95_crit_edge, %land.rhs.do.body95_crit_edge, %entry.do.body95_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !463
  call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %47, i32 4194824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 0) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_mthd(ptr nocapture noundef readonly %gr, ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not67 = icmp eq ptr %p, null
  br i1 %tobool.not67, label %entry.for.end36_crit_edge, label %land.rhs.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

land.rhs.lr.ph:                                   ; preds = %entry
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc34.land.rhs_crit_edge, %land.rhs.lr.ph
  %data.069 = phi i32 [ 0, %land.rhs.lr.ph ], [ %data.1.lcssa, %for.inc34.land.rhs_crit_edge ]
  %pack.068 = phi ptr [ %p, %land.rhs.lr.ph ], [ %incdec.ptr35, %for.inc34.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %pack.068 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pack.068, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.rhs.for.end36_crit_edge, label %for.cond5.preheader

land.rhs.for.end36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.cond5.preheader:                              ; preds = %land.rhs
  %type = getelementptr inbounds %struct.gf100_gr_pack, ptr %pack.068, i32 0, i32 1
  %cmp = icmp eq ptr %pack.068, %p
  br label %land.rhs7

land.rhs7:                                        ; preds = %while.end.land.rhs7_crit_edge, %for.cond5.preheader
  %data.165 = phi i32 [ %data.069, %for.cond5.preheader ], [ %data.2, %while.end.land.rhs7_crit_edge ]
  %init.061 = phi ptr [ %3, %for.cond5.preheader ], [ %incdec.ptr, %while.end.land.rhs7_crit_edge ]
  %count = getelementptr inbounds %struct.gf100_gr_init, ptr %init.061, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %land.rhs7.for.inc34_crit_edge, label %for.body10

land.rhs7.for.inc34_crit_edge:                    ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc34

for.body10:                                       ; preds = %land.rhs7
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = ptrtoint ptr %init.061 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init.061, align 4
  %pitch = getelementptr inbounds %struct.gf100_gr_init, ptr %init.061, i32 0, i32 2
  %10 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pitch, align 4
  %mul = mul i32 %11, %conv
  %add = add i32 %mul, %9
  br i1 %cmp, label %land.lhs.true, label %for.body10.lor.lhs.false_crit_edge

for.body10.lor.lhs.false_crit_edge:               ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body10
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 4
  %cmp17 = icmp eq ptr %init.061, %13
  br i1 %cmp17, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.body10.lor.lhs.false_crit_edge
  %data19 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.061, i32 0, i32 3
  %14 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data.165, i32 %15)
  %cmp20.not = icmp eq i32 %data.165, %15
  br i1 %cmp20.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !464
  tail call void @arm_heavy_mb() #14
  %data22 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.061, i32 0, i32 3
  %16 = ptrtoint ptr %data22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data22, align 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 4211852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #14, !srcloc !437
  %20 = ptrtoint ptr %data22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data22, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %lor.lhs.false.if.end_crit_edge
  %data.2 = phi i32 [ %21, %do.body ], [ %data.165, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp2458 = icmp ult i32 %9, %add
  br i1 %cmp2458, label %if.end.do.body26_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.do.body26_crit_edge:                       ; preds = %if.end
  br label %do.body26

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %if.end.do.body26_crit_edge
  %addr13.059 = phi i32 [ %add33, %do.body26.do.body26_crit_edge ], [ %9, %if.end.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !465
  tail call void @arm_heavy_mb() #14
  %shl = shl i32 %addr13.059, 14
  %or = or i32 %7, %shl
  %or29 = or i32 %or, -2147483648
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 4211848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %or29) #14, !srcloc !437
  %24 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pitch, align 4
  %add33 = add i32 %25, %addr13.059
  %cmp24 = icmp ult i32 %add33, %add
  br i1 %cmp24, label %do.body26.do.body26_crit_edge, label %do.body26.while.end_crit_edge

do.body26.while.end_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

while.end:                                        ; preds = %do.body26.while.end_crit_edge, %if.end.while.end_crit_edge
  %incdec.ptr = getelementptr %struct.gf100_gr_init, ptr %init.061, i32 1
  %tobool6.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool6.not, label %while.end.for.inc34_crit_edge, label %while.end.land.rhs7_crit_edge

while.end.land.rhs7_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs7

while.end.for.inc34_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc34

for.inc34:                                        ; preds = %while.end.for.inc34_crit_edge, %land.rhs7.for.inc34_crit_edge
  %data.1.lcssa = phi i32 [ %data.165, %land.rhs7.for.inc34_crit_edge ], [ %data.2, %while.end.for.inc34_crit_edge ]
  %incdec.ptr35 = getelementptr %struct.gf100_gr_pack, ptr %pack.068, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr35, null
  br i1 %tobool.not, label %for.inc34.for.end36_crit_edge, label %for.inc34.land.rhs_crit_edge

for.inc34.land.rhs_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %land.rhs.for.end36_crit_edge, %entry.for.end36_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @gf100_gr_units(ptr nocapture noundef readonly %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gpc_nr = getelementptr i8, ptr %base, i32 2217
  %0 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpc_nr, align 1
  %conv1 = zext i8 %1 to i64
  %tpc_total = getelementptr i8, ptr %base, i32 2251
  %2 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tpc_total, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %conv3 = zext i32 %shl to i64
  %or = or i64 %conv3, %conv1
  %rop_nr = getelementptr i8, ptr %base, i32 2216
  %4 = ptrtoint ptr %rop_nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rop_nr, align 4
  %conv4 = zext i8 %5 to i64
  %shl5 = shl nuw nsw i64 %conv4, 32
  %or6 = or i64 %or, %shl5
  ret i64 %or6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_trap_mp(ptr noundef %gr, i32 noundef %gpc, i32 noundef %tpc) #0 align 64 {
entry:
  %glob = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add = add i32 %mul, 5259264
  %mul3 = shl i32 %tpc, 11
  %add4 = add i32 %add, %mul3
  %add5 = or i32 %add4, 1608
  %add.ptr = getelementptr i8, ptr %3, i32 %add5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !466
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add12 = or i32 %add4, 1616
  %add.ptr13 = getelementptr i8, ptr %6, i32 %add12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %glob) #14
  %8 = call ptr @memset(ptr %glob, i32 255, i32 128)
  call void @nvkm_snprintbf(ptr noundef nonnull %glob, i32 noundef 128, ptr noundef nonnull @gf100_mp_global_error, i32 noundef %7) #14
  %and = and i32 %4, 65535
  %call16 = call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_mp_warp_error, i32 noundef %and) #14
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %name21 = getelementptr inbounds %struct.nvkm_enum, ptr %call16, i32 0, i32 1
  %15 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %16, %cond.true ], [ @.str.39, %do.end.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %gpc, i32 noundef %tpc, i32 noundef %7, ptr noundef nonnull %glob, i32 noundef %4, ptr noundef %cond) #17
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !468
  call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %18, i32 %add5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !469
  call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %20, i32 %add12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %7) #14, !srcloc !437
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %glob) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_ctxctl_debug(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4232708
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !470
  %and = and i32 %4, 65535
  tail call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %gr, i32 noundef 4231168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %gpc.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %gpc.07, 15
  %add = add nuw i32 %mul, 5251072
  tail call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %gr, i32 noundef %add)
  %inc = add nuw nsw i32 %gpc.07, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %gr, i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end83_crit_edge, label %if.end

entry.if.end83_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add = add i32 %base, 1024
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !471
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.53, ptr noundef %name, i32 noundef %base, i32 noundef %8) #17
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp11.not = icmp eq i32 %.pr, 0
  br i1 %cmp11.not, label %if.end.if.end83_crit_edge, label %if.end44

if.end.if.end83_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.end44:                                         ; preds = %if.end
  %10 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device3, align 4
  %dev17 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 8
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add22 = add i32 %base, 2048
  %add.ptr23 = getelementptr i8, ptr %15, i32 %add22
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !472
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add28 = add i32 %base, 2052
  %add.ptr29 = getelementptr i8, ptr %18, i32 %add28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !473
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add34 = add i32 %base, 2056
  %add.ptr35 = getelementptr i8, ptr %21, i32 %add34
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !474
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add40 = add i32 %base, 2060
  %add.ptr41 = getelementptr i8, ptr %24, i32 %add40
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !475
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.56, ptr noundef %name, i32 noundef %base, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25) #17
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr115 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr115)
  %cmp50.not = icmp eq i32 %.pr115, 0
  br i1 %cmp50.not, label %if.end44.if.end83_crit_edge, label %do.end54

if.end44.if.end83_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device3, align 4
  %dev56 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev56, align 8
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add61 = add i32 %base, 2064
  %add.ptr62 = getelementptr i8, ptr %32, i32 %add61
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !476
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add67 = add i32 %base, 2068
  %add.ptr68 = getelementptr i8, ptr %35, i32 %add67
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !477
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add73 = add i32 %base, 2072
  %add.ptr74 = getelementptr i8, ptr %38, i32 %add73
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !478
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add79 = add i32 %base, 2076
  %add.ptr80 = getelementptr i8, ptr %41, i32 %add79
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !479
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.56, ptr noundef %name, i32 noundef %base, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42) #17
  br label %if.end83

if.end83:                                         ; preds = %do.end54, %if.end44.if.end83_crit_edge, %if.end.if.end83_crit_edge, %entry.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_init_ctxctl(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  %_wait.i4 = alloca %struct.nvkm_timer_wait, align 8
  %_wait.i193.i = alloca %struct.nvkm_timer_wait, align 8
  %_wait.i169.i = alloca %struct.nvkm_timer_wait, align 8
  %_wait.i.i = alloca %struct.nvkm_timer_wait, align 8
  %_wait.i = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %firmware, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %device2.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2.i, align 4
  tail call void @nvkm_mc_unk260(ptr noundef %3, i32 noundef 0) #14
  %call.i = tail call zeroext i1 @nvkm_acr_managed_falcon(ptr noundef %3, i32 noundef 2) #14
  br i1 %call.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %fecs.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2
  %inst.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 1
  %data.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %size.i.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 2, i32 1
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %fecs.i, ptr noundef %5, i32 noundef 0, i32 noundef %7, i8 noundef zeroext 0) #14
  %8 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inst.i, align 4
  %size3.i.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %size3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size3.i.i, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %fecs.i, ptr noundef %9, i32 noundef 0, i32 noundef %11, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %lsf_mask.0.i = phi i32 [ 0, %if.then.i ], [ 4, %if.then.if.end.i_crit_edge ]
  %call5.i = tail call zeroext i1 @nvkm_acr_managed_falcon(ptr noundef %3, i32 noundef 3) #14
  br i1 %call5.i, label %if.end14.thread.i, label %if.end14.i

if.end14.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %or13.i = or i32 %lsf_mask.0.i, 8
  br label %if.then15.i

if.end14.i:                                       ; preds = %if.end.i
  %gpccs.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3
  %inst9.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 1
  %data11.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %data11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data11.i, align 4
  %size.i161.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 2, i32 1
  %14 = ptrtoint ptr %size.i161.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i161.i, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %gpccs.i, ptr noundef %13, i32 noundef 0, i32 noundef %15, i8 noundef zeroext 0) #14
  %16 = ptrtoint ptr %inst9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inst9.i, align 4
  %size3.i162.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %size3.i162.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size3.i162.i, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %gpccs.i, ptr noundef %17, i32 noundef 0, i32 noundef %19, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  br i1 %call.i, label %if.end14.i.if.then15.i_crit_edge, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end14.i.if.then15.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end14.i.if.then15.i_crit_edge, %if.end14.thread.i
  %lsf_mask.1219.i = phi i32 [ %or13.i, %if.end14.thread.i ], [ %lsf_mask.0.i, %if.end14.i.if.then15.i_crit_edge ]
  %call16.i = tail call i32 @nvkm_acr_bootstrap_falcons(ptr noundef %3, i32 noundef %lsf_mask.1219.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then15.i.if.end20.i_crit_edge, label %if.then15.i.if.end_crit_edge

if.then15.i.if.end_crit_edge:                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then15.i.if.end20.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i.if.end20.i_crit_edge, %if.end14.i.if.end20.i_crit_edge
  tail call void @nvkm_mc_unk260(ptr noundef %3, i32 noundef 1) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !481
  tail call void @arm_heavy_mb() #14
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4233280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !482
  tail call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %23, i32 4301068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !483
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %25, i32 4231436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #14, !srcloc !437
  %gpccs31.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3
  tail call void @nvkm_falcon_start(ptr noundef %gpccs31.i) #14
  %fecs33.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2
  tail call void @nvkm_falcon_start(ptr noundef %fecs33.i) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #14
  %26 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait.i) #14
  br label %do.body35.i

do.body35.i:                                      ; preds = %do.cond42.i.do.body35.i_crit_edge, %if.end20.i
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %28, i32 4233216
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !484
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %do.cond42.i, label %if.end81.i

do.cond42.i:                                      ; preds = %do.body35.i
  %call43.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i) #14
  %cmp.i = icmp sgt i64 %call43.i, -1
  br i1 %cmp.i, label %do.cond42.i.do.body35.i_crit_edge, label %do.end55.i

do.cond42.i.do.body35.i_crit_edge:                ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i

do.end55.i:                                       ; preds = %do.cond42.i
  %30 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_wait.i, align 8
  %device57.i = getelementptr inbounds %struct.nvkm_timer, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %device57.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device57.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  %call58.i = call ptr @dev_driver_string(ptr noundef %35) #14
  %36 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_wait.i, align 8
  %device61.i = getelementptr inbounds %struct.nvkm_timer, ptr %37, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %device61.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device61.i, align 4
  %dev62.i = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev62.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev62.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end55.i.if.end77.i_crit_edge

do.end55.i.if.end77.i_crit_edge:                  ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77.i

if.end.i.i:                                       ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end.i.i, %do.end55.i.if.end77.i_crit_edge
  %retval.0.i.i = phi ptr [ %45, %if.end.i.i ], [ %43, %do.end55.i.if.end77.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1734, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call58.i, ptr noundef %retval.0.i.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #14
  br label %if.end

if.end81.i:                                       ; preds = %do.body35.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #14
  %46 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !485
  call void @arm_heavy_mb() #14
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 4233280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !486
  call void @arm_heavy_mb() #14
  %50 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %51, i32 4232448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 2147483647) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !487
  call void @arm_heavy_mb() #14
  %52 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %53, i32 4232452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 33) #14, !srcloc !437
  %size.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 29
  %54 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !488
  call void @arm_heavy_mb() #14
  %pri.i164.i = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %pri.i164.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i164.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %57, i32 4233280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 -1) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !489
  call void @arm_heavy_mb() #14
  %58 = ptrtoint ptr %pri.i164.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i164.i, align 4
  %add.ptr6.i166.i = getelementptr i8, ptr %59, i32 4232448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i166.i, i32 0) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !490
  call void @arm_heavy_mb() #14
  %60 = ptrtoint ptr %pri.i164.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri.i164.i, align 4
  %add.ptr11.i167.i = getelementptr i8, ptr %61, i32 4232452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i167.i, i32 16) #14, !srcloc !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i.i) #14
  %62 = call ptr @memset(ptr %_wait.i.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %55, i64 noundef 2000000000, ptr noundef nonnull %_wait.i.i) #14
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %do.cond15.i.i.do.body12.i.i_crit_edge, %if.end81.i
  %63 = ptrtoint ptr %pri.i164.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri.i164.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %64, i32 4233216
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !491
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i168.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i168.i, label %do.cond15.i.i, label %if.end85.i

do.cond15.i.i:                                    ; preds = %do.body12.i.i
  %call16.i.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i.i) #14
  %cmp.i.i = icmp sgt i64 %call16.i.i, -1
  br i1 %cmp.i.i, label %do.cond15.i.i.do.body12.i.i_crit_edge, label %do.end28.i.i

do.cond15.i.i.do.body12.i.i_crit_edge:            ; preds = %do.cond15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i.i

do.end28.i.i:                                     ; preds = %do.cond15.i.i
  %67 = ptrtoint ptr %_wait.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_wait.i.i, align 8
  %device30.i.i = getelementptr inbounds %struct.nvkm_timer, ptr %68, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %device30.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device30.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i, align 8
  %call31.i.i = call ptr @dev_driver_string(ptr noundef %72) #14
  %73 = ptrtoint ptr %_wait.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_wait.i.i, align 8
  %device34.i.i = getelementptr inbounds %struct.nvkm_timer, ptr %74, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %device34.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device34.i.i, align 4
  %dev35.i.i = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev35.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev35.i.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end28.i.i.gf100_gr_fecs_discover_image_size.exit.i_crit_edge

do.end28.i.i.gf100_gr_fecs_discover_image_size.exit.i_crit_edge: ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_fecs_discover_image_size.exit.i

if.end.i.i.i:                                     ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  br label %gf100_gr_fecs_discover_image_size.exit.i

gf100_gr_fecs_discover_image_size.exit.i:         ; preds = %if.end.i.i.i, %do.end28.i.i.gf100_gr_fecs_discover_image_size.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %82, %if.end.i.i.i ], [ %80, %do.end28.i.i.gf100_gr_fecs_discover_image_size.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 908, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call31.i.i, ptr noundef %retval.0.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i.i) #14
  br label %if.end

if.end85.i:                                       ; preds = %do.body12.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i.i) #14
  %size_zcull.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 31
  %83 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !492
  call void @arm_heavy_mb() #14
  %pri.i171.i = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %pri.i171.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri.i171.i, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %86, i32 4233280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 -1) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !493
  call void @arm_heavy_mb() #14
  %87 = ptrtoint ptr %pri.i171.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i171.i, align 4
  %add.ptr6.i173.i = getelementptr i8, ptr %88, i32 4232448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i173.i, i32 0) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  call void @arm_heavy_mb() #14
  %89 = ptrtoint ptr %pri.i171.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri.i171.i, align 4
  %add.ptr11.i174.i = getelementptr i8, ptr %90, i32 4232452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i174.i, i32 22) #14, !srcloc !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i169.i) #14
  %91 = call ptr @memset(ptr %_wait.i169.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %84, i64 noundef 2000000000, ptr noundef nonnull %_wait.i169.i) #14
  br label %do.body12.i177.i

do.body12.i177.i:                                 ; preds = %do.cond15.i180.i.do.body12.i177.i_crit_edge, %if.end85.i
  %92 = ptrtoint ptr %pri.i171.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri.i171.i, align 4
  %add.ptr14.i175.i = getelementptr i8, ptr %93, i32 4233216
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i175.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !495
  %95 = ptrtoint ptr %size_zcull.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %size_zcull.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i176.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i176.i, label %do.cond15.i180.i, label %if.end89.i

do.cond15.i180.i:                                 ; preds = %do.body12.i177.i
  %call16.i178.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i169.i) #14
  %cmp.i179.i = icmp sgt i64 %call16.i178.i, -1
  br i1 %cmp.i179.i, label %do.cond15.i180.i.do.body12.i177.i_crit_edge, label %do.end28.i188.i

do.cond15.i180.i.do.body12.i177.i_crit_edge:      ; preds = %do.cond15.i180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i177.i

do.end28.i188.i:                                  ; preds = %do.cond15.i180.i
  %96 = ptrtoint ptr %_wait.i169.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %_wait.i169.i, align 8
  %device30.i181.i = getelementptr inbounds %struct.nvkm_timer, ptr %97, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %device30.i181.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device30.i181.i, align 4
  %dev.i182.i = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev.i182.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i182.i, align 8
  %call31.i183.i = call ptr @dev_driver_string(ptr noundef %101) #14
  %102 = ptrtoint ptr %_wait.i169.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %_wait.i169.i, align 8
  %device34.i184.i = getelementptr inbounds %struct.nvkm_timer, ptr %103, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %device34.i184.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device34.i184.i, align 4
  %dev35.i185.i = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %dev35.i185.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev35.i185.i, align 8
  %init_name.i.i186.i = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %init_name.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i.i186.i, align 8
  %tobool.not.i.i187.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i187.i, label %if.end.i.i189.i, label %do.end28.i188.i.gf100_gr_fecs_discover_zcull_image_size.exit.i_crit_edge

do.end28.i188.i.gf100_gr_fecs_discover_zcull_image_size.exit.i_crit_edge: ; preds = %do.end28.i188.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_fecs_discover_zcull_image_size.exit.i

if.end.i.i189.i:                                  ; preds = %do.end28.i188.i
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  br label %gf100_gr_fecs_discover_zcull_image_size.exit.i

gf100_gr_fecs_discover_zcull_image_size.exit.i:   ; preds = %if.end.i.i189.i, %do.end28.i188.i.gf100_gr_fecs_discover_zcull_image_size.exit.i_crit_edge
  %retval.0.i.i190.i = phi ptr [ %111, %if.end.i.i189.i ], [ %109, %do.end28.i188.i.gf100_gr_fecs_discover_zcull_image_size.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call31.i183.i, ptr noundef %retval.0.i.i190.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i169.i) #14
  br label %if.end

if.end89.i:                                       ; preds = %do.body12.i177.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i169.i) #14
  %size_pm.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 32
  %112 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !496
  call void @arm_heavy_mb() #14
  %pri.i195.i = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %pri.i195.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri.i195.i, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %115, i32 4233280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196.i, i32 -1) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !497
  call void @arm_heavy_mb() #14
  %116 = ptrtoint ptr %pri.i195.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri.i195.i, align 4
  %add.ptr6.i197.i = getelementptr i8, ptr %117, i32 4232448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i197.i, i32 0) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !498
  call void @arm_heavy_mb() #14
  %118 = ptrtoint ptr %pri.i195.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri.i195.i, align 4
  %add.ptr11.i198.i = getelementptr i8, ptr %119, i32 4232452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i198.i, i32 37) #14, !srcloc !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i193.i) #14
  %120 = call ptr @memset(ptr %_wait.i193.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %113, i64 noundef 2000000000, ptr noundef nonnull %_wait.i193.i) #14
  br label %do.body12.i201.i

do.body12.i201.i:                                 ; preds = %do.cond15.i204.i.do.body12.i201.i_crit_edge, %if.end89.i
  %121 = ptrtoint ptr %pri.i195.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pri.i195.i, align 4
  %add.ptr14.i199.i = getelementptr i8, ptr %122, i32 4233216
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i199.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !499
  %124 = ptrtoint ptr %size_pm.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %size_pm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i200.i = icmp eq i32 %123, 0
  br i1 %tobool.not.i200.i, label %do.cond15.i204.i, label %if.end93.i

do.cond15.i204.i:                                 ; preds = %do.body12.i201.i
  %call16.i202.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i193.i) #14
  %cmp.i203.i = icmp sgt i64 %call16.i202.i, -1
  br i1 %cmp.i203.i, label %do.cond15.i204.i.do.body12.i201.i_crit_edge, label %do.end28.i212.i

do.cond15.i204.i.do.body12.i201.i_crit_edge:      ; preds = %do.cond15.i204.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i201.i

do.end28.i212.i:                                  ; preds = %do.cond15.i204.i
  %125 = ptrtoint ptr %_wait.i193.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %_wait.i193.i, align 8
  %device30.i205.i = getelementptr inbounds %struct.nvkm_timer, ptr %126, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %device30.i205.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device30.i205.i, align 4
  %dev.i206.i = getelementptr inbounds %struct.nvkm_device, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %dev.i206.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i206.i, align 8
  %call31.i207.i = call ptr @dev_driver_string(ptr noundef %130) #14
  %131 = ptrtoint ptr %_wait.i193.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %_wait.i193.i, align 8
  %device34.i208.i = getelementptr inbounds %struct.nvkm_timer, ptr %132, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %device34.i208.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %device34.i208.i, align 4
  %dev35.i209.i = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %dev35.i209.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev35.i209.i, align 8
  %init_name.i.i210.i = getelementptr inbounds %struct.device, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %init_name.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i210.i, align 8
  %tobool.not.i.i211.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i211.i, label %if.end.i.i213.i, label %do.end28.i212.i.gf100_gr_fecs_discover_pm_image_size.exit.i_crit_edge

do.end28.i212.i.gf100_gr_fecs_discover_pm_image_size.exit.i_crit_edge: ; preds = %do.end28.i212.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_fecs_discover_pm_image_size.exit.i

if.end.i.i213.i:                                  ; preds = %do.end28.i212.i
  call void @__sanitizer_cov_trace_pc() #16
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %136, align 4
  br label %gf100_gr_fecs_discover_pm_image_size.exit.i

gf100_gr_fecs_discover_pm_image_size.exit.i:      ; preds = %if.end.i.i213.i, %do.end28.i212.i.gf100_gr_fecs_discover_pm_image_size.exit.i_crit_edge
  %retval.0.i.i214.i = phi ptr [ %140, %if.end.i.i213.i ], [ %138, %do.end28.i212.i.gf100_gr_fecs_discover_pm_image_size.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 876, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call31.i207.i, ptr noundef %retval.0.i.i214.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i193.i) #14
  br label %if.end

if.end93.i:                                       ; preds = %do.body12.i201.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i193.i) #14
  %data94.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 30
  %141 = ptrtoint ptr %data94.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data94.i, align 4
  %cmp95.i = icmp eq ptr %142, null
  br i1 %cmp95.i, label %if.then96.i, label %if.end93.i.if.end_crit_edge

if.end93.i.if.end_crit_edge:                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then96.i:                                      ; preds = %if.end93.i
  %call98.i = call i32 @gf100_grctx_generate(ptr noundef %gr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.then96.i.if.end_crit_edge, label %do.body101.i

if.then96.i.if.end_crit_edge:                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body101.i:                                     ; preds = %if.then96.i
  %debug.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %143 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp102.not.i = icmp eq i32 %144, 0
  br i1 %cmp102.not.i, label %do.body101.i.if.end_crit_edge, label %do.end106.i

do.body101.i.if.end_crit_edge:                    ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end106.i:                                      ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #16
  %145 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device2.i, align 4
  %dev108.i = getelementptr inbounds %struct.nvkm_device, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %dev108.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev108.i, align 8
  %name.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.60, ptr noundef %name.i) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %149 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %gr, align 4
  %device3.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %fecs.i5 = getelementptr inbounds %struct.gf100_gr_func, ptr %150, i32 0, i32 30
  %151 = ptrtoint ptr %fecs.i5 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fecs.i5, align 4
  %tobool.not.i = icmp eq ptr %152, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i11

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i11:                                       ; preds = %if.else
  %153 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device3.i, align 4
  %grctx1.i = getelementptr inbounds %struct.gf100_gr_func, ptr %150, i32 0, i32 36
  %155 = ptrtoint ptr %grctx1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %grctx1.i, align 4
  tail call void @nvkm_mc_unk260(ptr noundef %154, i32 noundef 0) #14
  %fecs5.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2
  %157 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %gr, align 4
  %fecs7.i = getelementptr inbounds %struct.gf100_gr_func, ptr %158, i32 0, i32 30
  %159 = ptrtoint ptr %fecs7.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fecs7.i, align 4
  %data.i6 = getelementptr inbounds %struct.gf100_gr_ucode, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %data.i6 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data.i6, align 4
  %size.i7 = getelementptr inbounds %struct.gf100_gr_ucode, ptr %160, i32 0, i32 1, i32 1
  %163 = ptrtoint ptr %size.i7 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %size.i7, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %fecs5.i, ptr noundef %162, i32 noundef 0, i32 noundef %164, i8 noundef zeroext 0) #14
  %165 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %gr, align 4
  %fecs17.i = getelementptr inbounds %struct.gf100_gr_func, ptr %166, i32 0, i32 30
  %167 = ptrtoint ptr %fecs17.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fecs17.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %size24.i = getelementptr inbounds %struct.nvkm_blob, ptr %168, i32 0, i32 1
  %171 = ptrtoint ptr %size24.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %size24.i, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %fecs5.i, ptr noundef %170, i32 noundef 0, i32 noundef %172, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  %gpccs.i8 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3
  %173 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %gr, align 4
  %gpccs27.i = getelementptr inbounds %struct.gf100_gr_func, ptr %174, i32 0, i32 31
  %175 = ptrtoint ptr %gpccs27.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %gpccs27.i, align 4
  %data29.i = getelementptr inbounds %struct.gf100_gr_ucode, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %data29.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data29.i, align 4
  %size35.i = getelementptr inbounds %struct.gf100_gr_ucode, ptr %176, i32 0, i32 1, i32 1
  %179 = ptrtoint ptr %size35.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %size35.i, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %gpccs.i8, ptr noundef %178, i32 noundef 0, i32 noundef %180, i8 noundef zeroext 0) #14
  %181 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %gr, align 4
  %gpccs39.i = getelementptr inbounds %struct.gf100_gr_func, ptr %182, i32 0, i32 31
  %183 = ptrtoint ptr %gpccs39.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %gpccs39.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %size47.i = getelementptr inbounds %struct.nvkm_blob, ptr %184, i32 0, i32 1
  %187 = ptrtoint ptr %size47.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %size47.i, align 4
  tail call void @nvkm_falcon_load_imem(ptr noundef %gpccs.i8, ptr noundef %186, i32 noundef 0, i32 noundef %188, i16 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  tail call void @nvkm_mc_unk260(ptr noundef %154, i32 noundef 1) #14
  %hub.i = getelementptr inbounds %struct.gf100_grctx_func, ptr %156, i32 0, i32 3
  %189 = ptrtoint ptr %hub.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hub.i, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %gr, ptr noundef %190, i32 noundef 4231168, i32 noundef 0, i32 noundef 0) #14
  %gpc_0.i = getelementptr inbounds %struct.gf100_grctx_func, ptr %156, i32 0, i32 4
  %191 = ptrtoint ptr %gpc_0.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %gpc_0.i, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %gr, ptr noundef %192, i32 noundef 4300800, i32 noundef 0, i32 noundef 4292608) #14
  %gpc_1.i = getelementptr inbounds %struct.gf100_grctx_func, ptr %156, i32 0, i32 5
  %193 = ptrtoint ptr %gpc_1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %gpc_1.i, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %gr, ptr noundef %194, i32 noundef 4300800, i32 noundef 0, i32 noundef 4292608) #14
  %tpc.i = getelementptr inbounds %struct.gf100_grctx_func, ptr %156, i32 0, i32 7
  %195 = ptrtoint ptr %tpc.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tpc.i, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %gr, ptr noundef %196, i32 noundef 4300800, i32 noundef 4, i32 noundef 4298752) #14
  %ppc.i = getelementptr inbounds %struct.gf100_grctx_func, ptr %156, i32 0, i32 8
  %197 = ptrtoint ptr %ppc.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ppc.i, align 4
  tail call fastcc void @gf100_gr_init_csdata(ptr noundef %gr, ptr noundef %198, i32 noundef 4300800, i32 noundef 8, i32 noundef 4308480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !500
  tail call void @arm_heavy_mb() #14
  %pri.i9 = getelementptr inbounds %struct.nvkm_device, ptr %154, i32 0, i32 11
  %199 = ptrtoint ptr %pri.i9 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pri.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %200, i32 4231436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !501
  tail call void @arm_heavy_mb() #14
  %201 = ptrtoint ptr %pri.i9 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pri.i9, align 4
  %add.ptr52.i = getelementptr i8, ptr %202, i32 4231424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 2) #14, !srcloc !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i4) #14
  %203 = call ptr @memset(ptr %_wait.i4, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %154, i64 noundef 2000000000, ptr noundef nonnull %_wait.i4) #14
  br label %do.body53.i

do.body53.i:                                      ; preds = %do.cond59.i.do.body53.i_crit_edge, %if.end.i11
  %204 = ptrtoint ptr %pri.i9 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pri.i9, align 4
  %add.ptr55.i = getelementptr i8, ptr %205, i32 4233216
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !502
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %206)
  %tobool56.not.i = icmp sgt i32 %206, -1
  br i1 %tobool56.not.i, label %do.cond59.i, label %if.end98.i

do.cond59.i:                                      ; preds = %do.body53.i
  %call60.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i4) #14
  %cmp.i12 = icmp sgt i64 %call60.i, -1
  br i1 %cmp.i12, label %do.cond59.i.do.body53.i_crit_edge, label %do.end72.i

do.cond59.i.do.body53.i_crit_edge:                ; preds = %do.cond59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53.i

do.end72.i:                                       ; preds = %do.cond59.i
  %207 = ptrtoint ptr %_wait.i4 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %_wait.i4, align 8
  %device74.i = getelementptr inbounds %struct.nvkm_timer, ptr %208, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %device74.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %device74.i, align 4
  %dev.i13 = getelementptr inbounds %struct.nvkm_device, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %dev.i13 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i13, align 8
  %call75.i = call ptr @dev_driver_string(ptr noundef %212) #14
  %213 = ptrtoint ptr %_wait.i4 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %_wait.i4, align 8
  %device78.i = getelementptr inbounds %struct.nvkm_timer, ptr %214, i32 0, i32 1, i32 1
  %215 = ptrtoint ptr %device78.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %device78.i, align 4
  %dev79.i = getelementptr inbounds %struct.nvkm_device, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev79.i, align 8
  %init_name.i.i14 = getelementptr inbounds %struct.device, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %init_name.i.i14 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i.i14, align 8
  %tobool.not.i.i15 = icmp eq ptr %220, null
  br i1 %tobool.not.i.i15, label %if.end.i.i16, label %do.end72.i.if.then97.i_crit_edge

do.end72.i.if.then97.i_crit_edge:                 ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97.i

if.end.i.i16:                                     ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %218, align 4
  br label %if.then97.i

if.then97.i:                                      ; preds = %if.end.i.i16, %do.end72.i.if.then97.i_crit_edge
  %retval.0.i.i17 = phi ptr [ %222, %if.end.i.i16 ], [ %220, %do.end72.i.if.then97.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1820, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call75.i, ptr noundef %retval.0.i.i17) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i4) #14
  %223 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device3.i, align 4
  %pri.i.i18 = getelementptr inbounds %struct.nvkm_device, ptr %224, i32 0, i32 11
  %225 = ptrtoint ptr %pri.i.i18 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pri.i.i18, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %226, i32 4232708
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !470
  %and.i.i = and i32 %227, 65535
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %gr, i32 noundef 4231168) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp6.not.i.i, label %if.then97.i.if.end_crit_edge, label %if.then97.i.for.body.i.i_crit_edge

if.then97.i.for.body.i.i_crit_edge:               ; preds = %if.then97.i
  br label %for.body.i.i

if.then97.i.if.end_crit_edge:                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then97.i.for.body.i.i_crit_edge
  %gpc.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then97.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %gpc.07.i.i, 15
  %add.i.i = add nuw i32 %mul.i.i, 5251072
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %gr, i32 noundef %add.i.i) #14
  %inc.i.i = add nuw nsw i32 %gpc.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %and.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end98.i:                                       ; preds = %do.body53.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i4) #14
  %228 = ptrtoint ptr %pri.i9 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %pri.i9, align 4
  %add.ptr101.i = getelementptr i8, ptr %229, i32 4233220
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !503
  %size104.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 29
  %231 = ptrtoint ptr %size104.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %size104.i, align 4
  %data105.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 30
  %232 = ptrtoint ptr %data105.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %data105.i, align 4
  %cmp106.i = icmp eq ptr %233, null
  br i1 %cmp106.i, label %if.then107.i, label %if.end98.i.if.end_crit_edge

if.end98.i.if.end_crit_edge:                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then107.i:                                     ; preds = %if.end98.i
  %call108.i = call i32 @gf100_grctx_generate(ptr noundef %gr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.then107.i.if.end_crit_edge, label %do.body111.i

if.then107.i.if.end_crit_edge:                    ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body111.i:                                     ; preds = %if.then107.i
  %debug.i20 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %234 = ptrtoint ptr %debug.i20 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %debug.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp112.not.i = icmp eq i32 %235, 0
  br i1 %cmp112.not.i, label %do.body111.i.if.end_crit_edge, label %do.end116.i

do.body111.i.if.end_crit_edge:                    ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end116.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #16
  %236 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %device3.i, align 4
  %dev118.i = getelementptr inbounds %struct.nvkm_device, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %dev118.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev118.i, align 8
  %name.i21 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.60, ptr noundef %name.i21) #17
  br label %if.end

if.end:                                           ; preds = %do.end116.i, %do.body111.i.if.end_crit_edge, %if.then107.i.if.end_crit_edge, %if.end98.i.if.end_crit_edge, %for.body.i.i.if.end_crit_edge, %if.then97.i.if.end_crit_edge, %if.else.if.end_crit_edge, %do.end106.i, %do.body101.i.if.end_crit_edge, %if.then96.i.if.end_crit_edge, %if.end93.i.if.end_crit_edge, %gf100_gr_fecs_discover_pm_image_size.exit.i, %gf100_gr_fecs_discover_zcull_image_size.exit.i, %gf100_gr_fecs_discover_image_size.exit.i, %if.end77.i, %if.then15.i.if.end_crit_edge
  %ret.0 = phi i32 [ %call16.i, %if.then15.i.if.end_crit_edge ], [ -16, %if.end77.i ], [ -110, %gf100_gr_fecs_discover_image_size.exit.i ], [ -110, %gf100_gr_fecs_discover_zcull_image_size.exit.i ], [ -110, %gf100_gr_fecs_discover_pm_image_size.exit.i ], [ %call98.i, %do.end106.i ], [ 0, %if.end93.i.if.end_crit_edge ], [ %call98.i, %do.body101.i.if.end_crit_edge ], [ 0, %if.then96.i.if.end_crit_edge ], [ -38, %if.else.if.end_crit_edge ], [ %call108.i, %do.end116.i ], [ 0, %if.end98.i.if.end_crit_edge ], [ %call108.i, %do.body111.i.if.end_crit_edge ], [ 0, %if.then107.i.if.end_crit_edge ], [ -16, %if.then97.i.if.end_crit_edge ], [ -16, %for.body.i.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_oneinit_sm_id(ptr nocapture noundef %gr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tpc_max = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 15
  %0 = ptrtoint ptr %tpc_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tpc_max, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp40.not = icmp eq i8 %1, 0
  br i1 %cmp40.not, label %entry.for.end23_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %2 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpc_nr, align 1
  %conv3 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp437.not = icmp eq i8 %3, 0
  %sm_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 26
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc21.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %tpc.041 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc22, %for.inc21.for.cond2.preheader_crit_edge ]
  br i1 %cmp437.not, label %for.cond2.preheader.for.inc21_crit_edge, label %for.body6.lr.ph

for.cond2.preheader.for.inc21_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc21

for.body6.lr.ph:                                  ; preds = %for.cond2.preheader
  %conv13 = trunc i32 %tpc.041 to i8
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %gpc.038 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc20, %for.inc.for.body6_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc.038
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tpc.041, i32 %conv7)
  %cmp8 = icmp ult i32 %tpc.041, %conv7
  br i1 %cmp8, label %if.then, label %for.body6.for.inc_crit_edge

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #16
  %conv10 = trunc i32 %gpc.038 to i8
  %6 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sm_nr, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx11 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %arrayidx11, align 1
  %tpc18 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %tpc18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv13, ptr %tpc18, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr %sm_nr, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body6.for.inc_crit_edge
  %inc20 = add nuw nsw i32 %gpc.038, 1
  %exitcond.not = icmp eq i32 %inc20, %conv3
  br i1 %exitcond.not, label %for.inc.for.inc21_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6

for.inc.for.inc21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc21

for.inc21:                                        ; preds = %for.inc.for.inc21_crit_edge, %for.cond2.preheader.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %tpc.041, 1
  %exitcond43.not = icmp eq i32 %inc22, %conv
  br i1 %exitcond43.not, label %for.inc21.for.end23_crit_edge, label %for.inc21.for.cond2.preheader_crit_edge

for.inc21.for.cond2.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %entry.for.end23_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_oneinit_tiles(ptr nocapture noundef %gr) #6 align 64 {
entry:
  %init_frac = alloca [32 x i32], align 4
  %run_err = alloca [32 x i32], align 4
  %gpc_map = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %init_frac) #14
  %0 = call ptr @memset(ptr %init_frac, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %run_err) #14
  %1 = call ptr @memset(ptr %run_err, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gpc_map) #14
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %2 = call ptr @memset(ptr %gpc_map, i32 255, i32 32)
  %3 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tpc_total, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %4, label %sw.default [
    i8 15, label %sw.bb
    i8 14, label %sw.bb1
    i8 13, label %sw.bb3
    i8 11, label %sw.bb5
    i8 10, label %sw.bb7
    i8 7, label %entry.sw.bb9_crit_edge
    i8 5, label %entry.sw.bb9_crit_edge225
    i8 3, label %sw.bb11
    i8 2, label %entry.sw.bb13_crit_edge
    i8 1, label %entry.sw.bb13_crit_edge226
  ]

entry.sw.bb13_crit_edge226:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb13

entry.sw.bb9_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %6 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %screen_tile_row_offset, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %screen_tile_row_offset2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %7 = ptrtoint ptr %screen_tile_row_offset2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %screen_tile_row_offset2, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %screen_tile_row_offset4 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %8 = ptrtoint ptr %screen_tile_row_offset4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %screen_tile_row_offset4, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %screen_tile_row_offset6 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %9 = ptrtoint ptr %screen_tile_row_offset6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %screen_tile_row_offset6, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %screen_tile_row_offset8 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %10 = ptrtoint ptr %screen_tile_row_offset8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %screen_tile_row_offset8, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge225
  %screen_tile_row_offset10 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %11 = ptrtoint ptr %screen_tile_row_offset10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %screen_tile_row_offset10, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %screen_tile_row_offset12 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %12 = ptrtoint ptr %screen_tile_row_offset12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %screen_tile_row_offset12, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge226
  %screen_tile_row_offset14 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %13 = ptrtoint ptr %screen_tile_row_offset14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %screen_tile_row_offset14, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %screen_tile_row_offset15 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %14 = ptrtoint ptr %screen_tile_row_offset15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %screen_tile_row_offset15, align 2
  %15 = urem i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %for.cond, label %sw.default.if.then_crit_edge

sw.default.if.then_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond:                                         ; preds = %sw.default
  %16 = urem i8 %4, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.1 = icmp eq i8 %16, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.then_crit_edge

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %17 = urem i8 %4, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.2 = icmp eq i8 %17, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.then_crit_edge

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %18 = urem i8 %4, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.3 = icmp eq i8 %18, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.if.then_crit_edge

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %19 = urem i8 %4, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.4 = icmp eq i8 %19, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.if.then_crit_edge

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %20 = urem i8 %4, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.5 = icmp eq i8 %20, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.if.then_crit_edge

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %21 = urem i8 %4, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.6 = icmp eq i8 %21, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.if.then_crit_edge

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %22 = urem i8 %4, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.7 = icmp eq i8 %22, 0
  br i1 %tobool.not.7, label %for.cond.7, label %for.cond.6.if.then_crit_edge

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %23 = urem i8 %4, 29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.8 = icmp eq i8 %23, 0
  br i1 %tobool.not.8, label %for.cond.8, label %for.cond.7.if.then_crit_edge

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  %24 = urem i8 %4, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.9 = icmp eq i8 %24, 0
  br i1 %tobool.not.9, label %for.cond.9, label %for.cond.8.if.then_crit_edge

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.9:                                       ; preds = %for.cond.8
  %25 = urem i8 %4, 37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.10 = icmp eq i8 %25, 0
  br i1 %tobool.not.10, label %for.cond.10, label %for.cond.9.if.then_crit_edge

for.cond.9.if.then_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.10:                                      ; preds = %for.cond.9
  %26 = urem i8 %4, 41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.11 = icmp eq i8 %26, 0
  br i1 %tobool.not.11, label %for.cond.11, label %for.cond.10.if.then_crit_edge

for.cond.10.if.then_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.11:                                      ; preds = %for.cond.10
  %27 = urem i8 %4, 43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.12 = icmp eq i8 %27, 0
  br i1 %tobool.not.12, label %for.cond.12, label %for.cond.11.if.then_crit_edge

for.cond.11.if.then_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.12:                                      ; preds = %for.cond.11
  %28 = urem i8 %4, 47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.13 = icmp eq i8 %28, 0
  br i1 %tobool.not.13, label %for.cond.13, label %for.cond.12.if.then_crit_edge

for.cond.12.if.then_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.13:                                      ; preds = %for.cond.12
  %29 = urem i8 %4, 53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.14 = icmp eq i8 %29, 0
  br i1 %tobool.not.14, label %for.cond.14, label %for.cond.13.if.then_crit_edge

for.cond.13.if.then_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.14:                                      ; preds = %for.cond.13
  %30 = urem i8 %4, 59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.15 = icmp eq i8 %30, 0
  br i1 %tobool.not.15, label %for.cond.15, label %for.cond.14.if.then_crit_edge

for.cond.14.if.then_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.15:                                      ; preds = %for.cond.14
  %31 = urem i8 %4, 61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.16 = icmp eq i8 %31, 0
  br i1 %tobool.not.16, label %for.cond.15.sw.epilog_crit_edge, label %for.cond.15.if.then_crit_edge

for.cond.15.if.then_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.15.sw.epilog_crit_edge:                  ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %for.cond.15.if.then_crit_edge, %for.cond.14.if.then_crit_edge, %for.cond.13.if.then_crit_edge, %for.cond.12.if.then_crit_edge, %for.cond.11.if.then_crit_edge, %for.cond.10.if.then_crit_edge, %for.cond.9.if.then_crit_edge, %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %sw.default.if.then_crit_edge
  %.lcssa = phi i8 [ 3, %sw.default.if.then_crit_edge ], [ 5, %for.cond.if.then_crit_edge ], [ 7, %for.cond.1.if.then_crit_edge ], [ 11, %for.cond.2.if.then_crit_edge ], [ 13, %for.cond.3.if.then_crit_edge ], [ 17, %for.cond.4.if.then_crit_edge ], [ 19, %for.cond.5.if.then_crit_edge ], [ 23, %for.cond.6.if.then_crit_edge ], [ 29, %for.cond.7.if.then_crit_edge ], [ 31, %for.cond.8.if.then_crit_edge ], [ 37, %for.cond.9.if.then_crit_edge ], [ 41, %for.cond.10.if.then_crit_edge ], [ 43, %for.cond.11.if.then_crit_edge ], [ 47, %for.cond.12.if.then_crit_edge ], [ 53, %for.cond.13.if.then_crit_edge ], [ 59, %for.cond.14.if.then_crit_edge ], [ 61, %for.cond.15.if.then_crit_edge ]
  %32 = ptrtoint ptr %screen_tile_row_offset15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.lcssa, ptr %screen_tile_row_offset15, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %for.cond.15.sw.epilog_crit_edge, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %33 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %gpc_nr, align 1
  %conv23 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp24203.not = icmp eq i8 %34, 0
  br i1 %cmp24203.not, label %sw.epilog.while.body.preheader_crit_edge, label %sw.epilog.for.body26_crit_edge

sw.epilog.for.body26_crit_edge:                   ; preds = %sw.epilog
  br label %for.body26

sw.epilog.while.body.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.body26.while.body.preheader_crit_edge, %sw.epilog.while.body.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp36205 = icmp ugt i8 %34, 1
  %35 = add nsw i32 %conv23, -2
  br i1 %cmp36205, label %for.body38.preheader, label %while.body.preheader.while.end_crit_edge

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.body38.preheader:                             ; preds = %while.body.preheader
  %cmp36205.not = xor i1 %cmp36205, true
  br label %for.body38

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %sw.epilog.for.body26_crit_edge
  %i.1204 = phi i32 [ %inc30, %for.body26.for.body26_crit_edge ], [ 0, %sw.epilog.for.body26_crit_edge ]
  %conv27 = trunc i32 %i.1204 to i8
  %arrayidx28 = getelementptr [32 x i8], ptr %gpc_map, i32 0, i32 %i.1204
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv27, ptr %arrayidx28, align 1
  %inc30 = add nuw nsw i32 %i.1204, 1
  %exitcond.not = icmp eq i32 %inc30, %conv23
  br i1 %exitcond.not, label %for.body26.while.body.preheader_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

for.body26.while.body.preheader_crit_edge:        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader

while.cond:                                       ; preds = %for.inc59
  %37 = and i8 %sorted.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %extract.t.not = icmp ne i8 %37, 0
  %brmerge = select i1 %extract.t.not, i1 true, i1 %cmp36205.not
  br i1 %brmerge, label %while.cond.while.end_crit_edge, label %while.cond.for.body38.backedge_crit_edge

while.cond.for.body38.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body38.backedge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.body38:                                       ; preds = %for.body38.backedge, %for.body38.preheader
  %i.2207 = phi i32 [ 0, %for.body38.preheader ], [ %i.2207.be, %for.body38.backedge ]
  %sorted.1206 = phi i8 [ 1, %for.body38.preheader ], [ %sorted.1206.be, %for.body38.backedge ]
  %add = add nuw nsw i32 %i.2207, 1
  %arrayidx39 = getelementptr [32 x i8], ptr %gpc_map, i32 0, i32 %add
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx39, align 1
  %idxprom = zext i8 %39 to i32
  %arrayidx40 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %idxprom
  %40 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx40, align 1
  %arrayidx44 = getelementptr [32 x i8], ptr %gpc_map, i32 0, i32 %i.2207
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx44, align 1
  %idxprom45 = zext i8 %43 to i32
  %arrayidx46 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %idxprom45
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %45)
  %cmp48 = icmp ugt i8 %41, %45
  br i1 %cmp48, label %if.then50, label %for.body38.for.inc59_crit_edge

for.body38.for.inc59_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

if.then50:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %39, ptr %arrayidx44, align 1
  %47 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %43, ptr %arrayidx39, align 1
  br label %for.inc59

for.inc59:                                        ; preds = %if.then50, %for.body38.for.inc59_crit_edge
  %sorted.2 = phi i8 [ 0, %if.then50 ], [ %sorted.1206, %for.body38.for.inc59_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2207, i32 %35)
  %exitcond221.not = icmp eq i32 %i.2207, %35
  br i1 %exitcond221.not, label %while.cond, label %for.inc59.for.body38.backedge_crit_edge

for.inc59.for.body38.backedge_crit_edge:          ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body38.backedge

for.body38.backedge:                              ; preds = %for.inc59.for.body38.backedge_crit_edge, %while.cond.for.body38.backedge_crit_edge
  %i.2207.be = phi i32 [ %add, %for.inc59.for.body38.backedge_crit_edge ], [ 0, %while.cond.for.body38.backedge_crit_edge ]
  %sorted.1206.be = phi i8 [ %sorted.2, %for.inc59.for.body38.backedge_crit_edge ], [ 1, %while.cond.for.body38.backedge_crit_edge ]
  br label %for.body38

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.body.preheader.while.end_crit_edge
  %tpc_max = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 15
  %48 = ptrtoint ptr %tpc_max to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tpc_max, align 2
  %conv64 = zext i8 %49 to i32
  %mul = mul nuw nsw i32 %conv64, %conv23
  %and = and i32 %mul, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  %. = select i1 %tobool65.not, i32 1, i32 2
  %mul73 = mul nuw nsw i32 %., %mul
  br i1 %cmp24203.not, label %while.end.for.cond103.preheader_crit_edge, label %for.body79.lr.ph

while.end.for.cond103.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond103.preheader

for.body79.lr.ph:                                 ; preds = %while.end
  %mul87 = mul nuw nsw i32 %., %conv23
  %mul92 = mul nuw nsw i32 %., %conv64
  %div200 = lshr i32 %mul73, 1
  br label %for.body79

for.cond103.preheader:                            ; preds = %for.body79.for.cond103.preheader_crit_edge, %while.end.for.cond103.preheader_crit_edge
  %50 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tpc_total, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp106218.not = icmp eq i8 %51, 0
  br i1 %cmp106218.not, label %for.cond103.preheader.for.end135_crit_edge, label %for.cond103.preheader.for.cond109.preheader_crit_edge

for.cond103.preheader.for.cond109.preheader_crit_edge: ; preds = %for.cond103.preheader
  br label %for.cond109.preheader

for.cond103.preheader.for.end135_crit_edge:       ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end135

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.body79.lr.ph
  %i.3210 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc101, %for.body79.for.body79_crit_edge ]
  %arrayidx81 = getelementptr [32 x i8], ptr %gpc_map, i32 0, i32 %i.3210
  %52 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx81, align 1
  %idxprom82 = zext i8 %53 to i32
  %arrayidx83 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %idxprom82
  %54 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %55 to i32
  %mul88 = mul nuw nsw i32 %mul87, %conv84
  %arrayidx89 = getelementptr [32 x i32], ptr %init_frac, i32 0, i32 %i.3210
  %56 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul88, ptr %arrayidx89, align 4
  %mul93 = mul nuw nsw i32 %mul92, %i.3210
  %sub94 = sub nsw i32 %mul93, %div200
  %add98 = add i32 %sub94, %mul88
  %arrayidx99 = getelementptr [32 x i32], ptr %run_err, i32 0, i32 %i.3210
  %57 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add98, ptr %arrayidx99, align 4
  %inc101 = add nuw nsw i32 %i.3210, 1
  %exitcond222.not = icmp eq i32 %inc101, %conv23
  br i1 %exitcond222.not, label %for.body79.for.cond103.preheader_crit_edge, label %for.body79.for.body79_crit_edge

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body79

for.body79.for.cond103.preheader_crit_edge:       ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond103.preheader

for.cond103.loopexit:                             ; preds = %for.inc132.for.cond103.loopexit_crit_edge, %for.cond109.preheader.for.cond103.loopexit_crit_edge
  %i.5.lcssa = phi i32 [ %i.4219, %for.cond109.preheader.for.cond103.loopexit_crit_edge ], [ %i.6, %for.inc132.for.cond103.loopexit_crit_edge ]
  %58 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tpc_total, align 1
  %conv105 = zext i8 %59 to i32
  %cmp106 = icmp slt i32 %i.5.lcssa, %conv105
  br i1 %cmp106, label %for.cond103.loopexit.for.cond109.preheader_crit_edge, label %for.cond103.loopexit.for.end135_crit_edge

for.cond103.loopexit.for.end135_crit_edge:        ; preds = %for.cond103.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end135

for.cond103.loopexit.for.cond109.preheader_crit_edge: ; preds = %for.cond103.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.cond103.loopexit.for.cond109.preheader_crit_edge, %for.cond103.preheader.for.cond109.preheader_crit_edge
  %i.4219 = phi i32 [ %i.5.lcssa, %for.cond103.loopexit.for.cond109.preheader_crit_edge ], [ 0, %for.cond103.preheader.for.cond109.preheader_crit_edge ]
  %60 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp112212.not = icmp eq i8 %61, 0
  br i1 %cmp112212.not, label %for.cond109.preheader.for.cond103.loopexit_crit_edge, label %for.cond109.preheader.for.body114_crit_edge

for.cond109.preheader.for.body114_crit_edge:      ; preds = %for.cond109.preheader
  br label %for.body114

for.cond109.preheader.for.cond103.loopexit_crit_edge: ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond103.loopexit

for.body114:                                      ; preds = %for.inc132.for.body114_crit_edge, %for.cond109.preheader.for.body114_crit_edge
  %i.5215 = phi i32 [ %i.6, %for.inc132.for.body114_crit_edge ], [ %i.4219, %for.cond109.preheader.for.body114_crit_edge ]
  %j.0213 = phi i32 [ %inc133, %for.inc132.for.body114_crit_edge ], [ 0, %for.cond109.preheader.for.body114_crit_edge ]
  %arrayidx115 = getelementptr [32 x i32], ptr %run_err, i32 0, i32 %j.0213
  %62 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx115, align 4
  %mul116 = shl i32 %63, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul116, i32 %mul73)
  %cmp117.not = icmp ult i32 %mul116, %mul73
  br i1 %cmp117.not, label %if.else127, label %if.then119

if.then119:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx120 = getelementptr [32 x i8], ptr %gpc_map, i32 0, i32 %j.0213
  %64 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx120, align 1
  %inc121 = add i32 %i.5215, 1
  %arrayidx122 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %i.5215
  %66 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx122, align 1
  %arrayidx123 = getelementptr [32 x i32], ptr %init_frac, i32 0, i32 %j.0213
  %67 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx123, align 4
  %sub124 = sub i32 %68, %mul73
  br label %for.inc132

if.else127:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx128 = getelementptr [32 x i32], ptr %init_frac, i32 0, i32 %j.0213
  %69 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx128, align 4
  br label %for.inc132

for.inc132:                                       ; preds = %if.else127, %if.then119
  %.pn = phi i32 [ %70, %if.else127 ], [ %sub124, %if.then119 ]
  %i.6 = phi i32 [ %i.5215, %if.else127 ], [ %inc121, %if.then119 ]
  %storemerge = add i32 %.pn, %63
  %71 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %storemerge, ptr %arrayidx115, align 4
  %inc133 = add nuw nsw i32 %j.0213, 1
  %72 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %gpc_nr, align 1
  %conv111 = zext i8 %73 to i32
  %cmp112 = icmp ult i32 %inc133, %conv111
  br i1 %cmp112, label %for.inc132.for.body114_crit_edge, label %for.inc132.for.cond103.loopexit_crit_edge

for.inc132.for.cond103.loopexit_crit_edge:        ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond103.loopexit

for.inc132.for.body114_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body114

for.end135:                                       ; preds = %for.cond103.loopexit.for.end135_crit_edge, %for.cond103.preheader.for.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gpc_map) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %run_err) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %init_frac) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_new_(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11604, i32 noundef 3520, i32 noundef 2) #19
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.gf100_gr, ptr %call1.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %base, ptr %pgr, align 4
  %call2 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @gf100_gr_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %base) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %subdev = getelementptr inbounds %struct.gf100_gr, ptr %call1.i.i.i, i32 0, i32 1, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #14
  %1 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40)
  %device8 = getelementptr inbounds %struct.gf100_gr, ptr %call1.i.i.i, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device8, align 16
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgopt, align 4
  %call10 = call i32 @nvkm_longopt(ptr noundef %5, ptr noundef nonnull %_option, i32 noundef -2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call10)
  %cmp = icmp sgt i32 %call10, -2
  br i1 %cmp, label %if.end5.land.rhs_crit_edge, label %12

if.end5.land.rhs_crit_edge:                       ; preds = %if.end5
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end5.land.rhs_crit_edge
  %_next.0153 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %fwif, %if.end5.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.gf100_gr_fwif, ptr %_next.0153, i32 0, i32 1
  %6 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %load, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %land.rhs.if.then56_crit_edge, label %for.body

land.rhs.if.then56_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.body:                                         ; preds = %land.rhs
  %8 = ptrtoint ptr %_next.0153 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_next.0153, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call10)
  %cmp14 = icmp ne i32 %9, %call10
  %incdec.ptr = getelementptr %struct.gf100_gr_fwif, ptr %_next.0153, i32 1
  %tobool12.not160 = icmp eq ptr %_next.0153, null
  %tobool12.not = select i1 %cmp14, i1 true, i1 %tobool12.not160
  br i1 %tobool12.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40)
  %10 = ptrtoint ptr %_next.0153 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_next.0153, align 4
  br label %13

12:                                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call22130 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40)
  br label %13

13:                                               ; preds = %12, %cond.end
  %.sink176 = phi i32 [ %11, %cond.end ], [ -1, %12 ]
  %_fwif.2128138 = phi ptr [ %_next.0153, %cond.end ], [ null, %12 ]
  %14 = phi ptr [ %_next.0153, %cond.end ], [ %fwif, %12 ]
  %15 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device8, align 16
  %cfgopt27 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %cfgopt27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfgopt27, align 4
  %call29 = call i32 @nvkm_longopt(ptr noundef %18, ptr noundef nonnull %_option, i32 noundef %.sink176) #14
  %load36154 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %load36154 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %load36154, align 4
  %tobool37.not155 = icmp eq ptr %20, null
  br i1 %tobool37.not155, label %.if.end58_crit_edge, label %for.body38.lr.ph

.if.end58_crit_edge:                              ; preds = %13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

for.body38.lr.ph:                                 ; preds = %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp39 = icmp sgt i32 %call29, -1
  br label %for.body38

for.body38:                                       ; preds = %for.inc51.for.body38_crit_edge, %for.body38.lr.ph
  %21 = phi ptr [ %20, %for.body38.lr.ph ], [ %25, %for.inc51.for.body38_crit_edge ]
  %_next.1156 = phi ptr [ %14, %for.body38.lr.ph ], [ %incdec.ptr52, %for.inc51.for.body38_crit_edge ]
  br i1 %cmp39, label %if.end54, label %cond.end43

cond.end43:                                       ; preds = %for.body38
  %22 = ptrtoint ptr %_next.1156 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_next.1156, align 4
  %call46 = call i32 %21(ptr noundef nonnull %call1.i.i.i, i32 noundef %23, ptr noundef %_next.1156) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %cond.end43.if.end58_crit_edge, label %for.inc51

cond.end43.if.end58_crit_edge:                    ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

for.inc51:                                        ; preds = %cond.end43
  %incdec.ptr52 = getelementptr %struct.gf100_gr_fwif, ptr %_next.1156, i32 1
  %load36 = getelementptr %struct.gf100_gr_fwif, ptr %_next.1156, i32 1, i32 1
  %24 = ptrtoint ptr %load36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %load36, align 4
  %tobool37.not = icmp eq ptr %25, null
  br i1 %tobool37.not, label %for.inc51.if.then56_crit_edge, label %for.inc51.for.body38_crit_edge

for.inc51.for.body38_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body38

for.inc51.if.then56_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.end54:                                         ; preds = %for.body38
  %call46143 = call i32 %20(ptr noundef nonnull %call1.i.i.i, i32 noundef %call29, ptr noundef %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46143)
  %tobool55.not = icmp eq i32 %call46143, 0
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %if.end54.if.then56_crit_edge

if.end54.if.then56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then56:                                        ; preds = %if.end54.if.then56_crit_edge, %for.inc51.if.then56_crit_edge, %land.rhs.if.then56_crit_edge
  %_ret.2149 = phi i32 [ %call46143, %if.end54.if.then56_crit_edge ], [ %call46, %for.inc51.if.then56_crit_edge ], [ -22, %land.rhs.if.then56_crit_edge ]
  %26 = inttoptr i32 %_ret.2149 to ptr
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge, %cond.end43.if.end58_crit_edge, %.if.end58_crit_edge
  %_fwif.4 = phi ptr [ %26, %if.then56 ], [ %14, %if.end54.if.end58_crit_edge ], [ %_fwif.2128138, %.if.end58_crit_edge ], [ %_next.1156, %cond.end43.if.end58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #14
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %func = getelementptr inbounds %struct.gf100_gr_fwif, ptr %_fwif.4, i32 0, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func, align 4
  %30 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call1.i.i.i, align 4096
  %fecs = getelementptr inbounds %struct.gf100_gr, ptr %call1.i.i.i, i32 0, i32 2
  %call67 = call i32 @nvkm_falcon_ctor(ptr noundef nonnull @gf100_gr_flcn, ptr noundef %subdev, ptr noundef nonnull @.str.43, i32 noundef 4231168, ptr noundef %fecs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr inbounds %struct.gf100_gr, ptr %call1.i.i.i, i32 0, i32 2, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.44, ptr noundef nonnull @gf100_gr_new_.__key) #14
  %gpccs = getelementptr inbounds %struct.gf100_gr, ptr %call1.i.i.i, i32 0, i32 3
  %call76 = call i32 @nvkm_falcon_ctor(ptr noundef nonnull @gf100_gr_flcn, ptr noundef %subdev, ptr noundef nonnull @.str.45, i32 noundef 4300800, ptr noundef %gpccs) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end62.cleanup_crit_edge, %if.then60, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then60 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call67, %if.end62.cleanup_crit_edge ], [ %call76, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_num_tpc_per_gpc(ptr nocapture noundef readonly %gr, i1 noundef zeroext %pd, i1 noundef zeroext %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc21.for.cond3.preheader_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21.for.cond3.preheader_crit_edge ]
  %gpc.039 = phi i32 [ 0, %entry ], [ %gpc.1.lcssa, %for.inc21.for.cond3.preheader_crit_edge ]
  %2 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %3 to i32
  %smax = call i32 @llvm.smax.i32(i32 %gpc.039, i32 %conv)
  %4 = sub i32 %smax, %gpc.039
  call void @__sanitizer_cov_trace_cmp4(i32 %gpc.039, i32 %conv)
  %exitcond.not.not = icmp slt i32 %gpc.039, %conv
  br i1 %exitcond.not.not, label %for.body7, label %for.cond3.preheader.for.end_crit_edge

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7:                                        ; preds = %for.cond3.preheader
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc.039
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %6 to i32
  %inc9 = add nsw i32 %gpc.039, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %exitcond.1.not = icmp eq i32 %4, 1
  br i1 %exitcond.1.not, label %for.body7.for.end_crit_edge, label %for.body7.1

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.1:                                      ; preds = %for.body7
  %arrayidx.1 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %conv8.1 = zext i8 %8 to i32
  %shl.1 = shl nuw nsw i32 %conv8.1, 4
  %or.1 = or i32 %shl.1, %conv8
  %inc9.1 = add nsw i32 %gpc.039, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %exitcond.2.not = icmp eq i32 %4, 2
  br i1 %exitcond.2.not, label %for.body7.1.for.end_crit_edge, label %for.body7.2

for.body7.1.for.end_crit_edge:                    ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.2:                                      ; preds = %for.body7.1
  %arrayidx.2 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9.1
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  %conv8.2 = zext i8 %10 to i32
  %shl.2 = shl nuw nsw i32 %conv8.2, 8
  %or.2 = or i32 %shl.2, %or.1
  %inc9.2 = add nsw i32 %gpc.039, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %exitcond.3.not = icmp eq i32 %4, 3
  br i1 %exitcond.3.not, label %for.body7.2.for.end_crit_edge, label %for.body7.3

for.body7.2.for.end_crit_edge:                    ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.3:                                      ; preds = %for.body7.2
  %arrayidx.3 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9.2
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv8.3 = zext i8 %12 to i32
  %shl.3 = shl nuw nsw i32 %conv8.3, 12
  %or.3 = or i32 %shl.3, %or.2
  %inc9.3 = add nsw i32 %gpc.039, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %exitcond.4.not = icmp eq i32 %4, 4
  br i1 %exitcond.4.not, label %for.body7.3.for.end_crit_edge, label %for.body7.4

for.body7.3.for.end_crit_edge:                    ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.4:                                      ; preds = %for.body7.3
  %arrayidx.4 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9.3
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.4, align 1
  %conv8.4 = zext i8 %14 to i32
  %shl.4 = shl nuw nsw i32 %conv8.4, 16
  %or.4 = or i32 %shl.4, %or.3
  %inc9.4 = add nsw i32 %gpc.039, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %exitcond.5.not = icmp eq i32 %4, 5
  br i1 %exitcond.5.not, label %for.body7.4.for.end_crit_edge, label %for.body7.5

for.body7.4.for.end_crit_edge:                    ; preds = %for.body7.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.5:                                      ; preds = %for.body7.4
  %arrayidx.5 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9.4
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.5, align 1
  %conv8.5 = zext i8 %16 to i32
  %shl.5 = shl nuw nsw i32 %conv8.5, 20
  %or.5 = or i32 %shl.5, %or.4
  %inc9.5 = add nsw i32 %gpc.039, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %exitcond.6.not = icmp eq i32 %4, 6
  br i1 %exitcond.6.not, label %for.body7.5.for.end_crit_edge, label %for.body7.6

for.body7.5.for.end_crit_edge:                    ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.6:                                      ; preds = %for.body7.5
  %arrayidx.6 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9.5
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.6, align 1
  %conv8.6 = zext i8 %18 to i32
  %shl.6 = shl nuw i32 %conv8.6, 24
  %or.6 = or i32 %shl.6, %or.5
  %inc9.6 = add nsw i32 %gpc.039, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %exitcond.7.not = icmp eq i32 %4, 7
  br i1 %exitcond.7.not, label %for.body7.6.for.end_crit_edge, label %for.body7.7

for.body7.6.for.end_crit_edge:                    ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.7:                                      ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.7 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %inc9.6
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.7, align 1
  %conv8.7 = zext i8 %20 to i32
  %shl.7 = shl i32 %conv8.7, 28
  %or.7 = or i32 %shl.7, %or.6
  %inc9.7 = add nsw i32 %gpc.039, 8
  br label %for.end

for.end:                                          ; preds = %for.body7.7, %for.body7.6.for.end_crit_edge, %for.body7.5.for.end_crit_edge, %for.body7.4.for.end_crit_edge, %for.body7.3.for.end_crit_edge, %for.body7.2.for.end_crit_edge, %for.body7.1.for.end_crit_edge, %for.body7.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %gpc.1.lcssa = phi i32 [ %gpc.039, %for.cond3.preheader.for.end_crit_edge ], [ %inc9, %for.body7.for.end_crit_edge ], [ %inc9.1, %for.body7.1.for.end_crit_edge ], [ %inc9.2, %for.body7.2.for.end_crit_edge ], [ %inc9.3, %for.body7.3.for.end_crit_edge ], [ %inc9.4, %for.body7.4.for.end_crit_edge ], [ %inc9.5, %for.body7.5.for.end_crit_edge ], [ %inc9.6, %for.body7.6.for.end_crit_edge ], [ %inc9.7, %for.body7.7 ]
  %data.0.lcssa = phi i32 [ 0, %for.cond3.preheader.for.end_crit_edge ], [ %conv8, %for.body7.for.end_crit_edge ], [ %or.1, %for.body7.1.for.end_crit_edge ], [ %or.2, %for.body7.2.for.end_crit_edge ], [ %or.3, %for.body7.3.for.end_crit_edge ], [ %or.4, %for.body7.4.for.end_crit_edge ], [ %or.5, %for.body7.5.for.end_crit_edge ], [ %or.6, %for.body7.6.for.end_crit_edge ], [ %or.7, %for.body7.7 ]
  br i1 %pd, label %do.body, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !504
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %mul10 = shl i32 %i.040, 2
  %add = add nuw nsw i32 %mul10, 4218920
  %add.ptr = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data.0.lcssa) #14, !srcloc !437
  br label %if.end

if.end:                                           ; preds = %do.body, %for.end.if.end_crit_edge
  br i1 %ds, label %do.body13, label %if.end.for.inc21_crit_edge

if.end.for.inc21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc21

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !505
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %mul17 = shl i32 %i.040, 2
  %add18 = add nuw nsw i32 %mul17, 4216944
  %add.ptr19 = getelementptr i8, ptr %24, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %data.0.lcssa) #14, !srcloc !437
  br label %for.inc21

for.inc21:                                        ; preds = %do.body13, %if.end.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %i.040, 1
  %exitcond43.not = icmp eq i32 %inc22, 4
  br i1 %exitcond43.not, label %for.end23, label %for.inc21.for.cond3.preheader_crit_edge

for.inc21.for.cond3.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond3.preheader

for.end23:                                        ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_400054(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !506
  tail call void @arm_heavy_mb() #14
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4194388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 885929060) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_shader_exceptions(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !507
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add = add i32 %mul, 5259264
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %add, %mul2
  %add4 = or i32 %add3, 1604
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097150) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !508
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add13 = or i32 %add3, 1612
  %add.ptr14 = getelementptr i8, ptr %5, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 15) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_tex_hww_esr(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !509
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %mul, 5259812
  %add4 = add i32 %add3, %mul2
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_419eb4(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !510
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !511
  tail call void @arm_heavy_mb() #14
  %or = or i32 %4, 4096
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4300468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_419cc0(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4299968
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !513
  tail call void @arm_heavy_mb() #14
  %or = or i32 %4, 8
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4299968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #14, !srcloc !437
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %7 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp37.not = icmp eq i8 %8, 0
  br i1 %cmp37.not, label %entry.for.end21_crit_edge, label %entry.for.cond6.preheader_crit_edge

entry.for.cond6.preheader_crit_edge:              ; preds = %entry
  br label %for.cond6.preheader

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end21

for.cond6.preheader:                              ; preds = %for.inc19.for.cond6.preheader_crit_edge, %entry.for.cond6.preheader_crit_edge
  %gpc.038 = phi i32 [ %inc20, %for.inc19.for.cond6.preheader_crit_edge ], [ 0, %entry.for.cond6.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc.038
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp834.not = icmp eq i8 %10, 0
  br i1 %cmp834.not, label %for.cond6.preheader.for.inc19_crit_edge, label %do.body11.lr.ph

for.cond6.preheader.for.inc19_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19

do.body11.lr.ph:                                  ; preds = %for.cond6.preheader
  %mul = shl i32 %gpc.038, 15
  %add16 = add nuw nsw i32 %mul, 5260428
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %do.body11.lr.ph
  %tpc.035 = phi i32 [ 0, %do.body11.lr.ph ], [ %inc, %do.body11.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !514
  tail call void @arm_heavy_mb() #14
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %mul15 = shl i32 %tpc.035, 11
  %add17 = add nuw nsw i32 %add16, %mul15
  %add.ptr18 = getelementptr i8, ptr %12, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1073741824) #14, !srcloc !437
  %inc = add nuw nsw i32 %tpc.035, 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %14 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %do.body11.do.body11_crit_edge, label %do.body11.for.inc19_crit_edge

do.body11.for.inc19_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

for.inc19:                                        ; preds = %do.body11.for.inc19_crit_edge, %for.cond6.preheader.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %gpc.038, 1
  %15 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc20, %conv
  br i1 %cmp, label %for.inc19.for.cond6.preheader_crit_edge, label %for.inc19.for.end21_crit_edge

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end21

for.inc19.for.cond6.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond6.preheader

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %entry.for.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_40601c(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !515
  tail call void @arm_heavy_mb() #14
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4218908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_fecs_exceptions(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %firmware, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 917505, i32 917504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !516
  tail call void @arm_heavy_mb() #14
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4234276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_gpc_mmu(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fb2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !517
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1051776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !518
  %and = and i32 %6, 1
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 4294784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !519
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 4294820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 50331648) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !520
  tail call void @arm_heavy_mb() #14
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 4294792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !521
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 4294796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !522
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 4294800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !523
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 4294804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !524
  tail call void @arm_heavy_mb() #14
  %mmu_wr = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %mmu_wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmu_wr, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr, align 4
  %call34 = tail call i64 %24(ptr noundef %20) #14
  %shr = lshr i64 %call34, 8
  %conv = trunc i64 %shr to i32
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %26, i32 4294836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %conv) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !525
  tail call void @arm_heavy_mb() #14
  %mmu_rd = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %mmu_rd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmu_rd, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %addr41 = getelementptr inbounds %struct.nvkm_memory_func, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %addr41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr41, align 4
  %call43 = tail call i64 %32(ptr noundef %28) #14
  %shr44 = lshr i64 %call43, 8
  %conv45 = trunc i64 %shr44 to i32
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %34, i32 4294840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %conv45) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_num_active_ltcs(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !526
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1050624
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !527
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4294828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_zcull(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %bank = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %2 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %3 to i32
  %sub = add nuw nsw i32 %conv, 8388607
  %div = udiv i32 %sub, %conv
  %add6 = add i8 %3, 31
  %and = and i8 %add6, -32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bank) #14
  %4 = call ptr @memset(ptr %bank, i32 0, i32 32)
  %conv9 = zext i8 %and to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp132.not = icmp eq i8 %and, 0
  br i1 %cmp132.not, label %entry.for.cond47.preheader_crit_edge, label %for.cond11.preheader.lr.ph

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond47.preheader

for.cond11.preheader.lr.ph:                       ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %do.body.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %conv8134 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %conv8, %do.body.for.cond11.preheader_crit_edge ]
  %i.0133 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %add44, %do.body.for.cond11.preheader_crit_edge ]
  %5 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tpc_total, align 1
  %conv19 = zext i8 %6 to i32
  %7 = call i32 @llvm.usub.sat.i32(i32 %conv19, i32 %conv8134)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8134, i32 %conv19)
  %exitcond.not.not = icmp ult i32 %conv8134, %conv19
  br i1 %exitcond.not.not, label %for.body22, label %for.cond11.preheader.do.body_crit_edge

for.cond11.preheader.do.body_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.cond47.preheader:                             ; preds = %do.body.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %8 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp50135.not = icmp eq i8 %9, 0
  br i1 %cmp50135.not, label %for.cond47.preheader.do.body92_crit_edge, label %do.body53.lr.ph

for.cond47.preheader.do.body92_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body92

do.body53.lr.ph:                                  ; preds = %for.cond47.preheader
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %pri62 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body53

for.body22:                                       ; preds = %for.cond11.preheader
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %conv8134
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx26 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %inc = add i8 %13, 1
  store i8 %inc, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %exitcond.1.not = icmp eq i32 %7, 1
  br i1 %exitcond.1.not, label %for.body22.do.body_crit_edge, label %for.body22.1

for.body22.do.body_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.1:                                     ; preds = %for.body22
  %add17.1 = add nuw nsw i32 %conv8134, 1
  %arrayidx.1 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  %idxprom.1 = zext i8 %15 to i32
  %arrayidx26.1 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.1
  %16 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26.1, align 1
  %conv27.1 = zext i8 %17 to i32
  %shl.1 = shl nuw nsw i32 %conv27.1, 4
  %or.1 = or i32 %shl.1, %conv27
  %inc.1 = add i8 %17, 1
  store i8 %inc.1, ptr %arrayidx26.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond.2.not = icmp eq i32 %7, 2
  br i1 %exitcond.2.not, label %for.body22.1.do.body_crit_edge, label %for.body22.2

for.body22.1.do.body_crit_edge:                   ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.2:                                     ; preds = %for.body22.1
  %add17.2 = add nuw nsw i32 %conv8134, 2
  %arrayidx.2 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %idxprom.2 = zext i8 %19 to i32
  %arrayidx26.2 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.2
  %20 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26.2, align 1
  %conv27.2 = zext i8 %21 to i32
  %shl.2 = shl nuw nsw i32 %conv27.2, 8
  %or.2 = or i32 %shl.2, %or.1
  %inc.2 = add i8 %21, 1
  store i8 %inc.2, ptr %arrayidx26.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %exitcond.3.not = icmp eq i32 %7, 3
  br i1 %exitcond.3.not, label %for.body22.2.do.body_crit_edge, label %for.body22.3

for.body22.2.do.body_crit_edge:                   ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.3:                                     ; preds = %for.body22.2
  %add17.3 = add nuw nsw i32 %conv8134, 3
  %arrayidx.3 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %idxprom.3 = zext i8 %23 to i32
  %arrayidx26.3 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.3
  %24 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx26.3, align 1
  %conv27.3 = zext i8 %25 to i32
  %shl.3 = shl nuw nsw i32 %conv27.3, 12
  %or.3 = or i32 %shl.3, %or.2
  %inc.3 = add i8 %25, 1
  store i8 %inc.3, ptr %arrayidx26.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %exitcond.4.not = icmp eq i32 %7, 4
  br i1 %exitcond.4.not, label %for.body22.3.do.body_crit_edge, label %for.body22.4

for.body22.3.do.body_crit_edge:                   ; preds = %for.body22.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.4:                                     ; preds = %for.body22.3
  %add17.4 = add nuw nsw i32 %conv8134, 4
  %arrayidx.4 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4, align 1
  %idxprom.4 = zext i8 %27 to i32
  %arrayidx26.4 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.4
  %28 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx26.4, align 1
  %conv27.4 = zext i8 %29 to i32
  %shl.4 = shl nuw nsw i32 %conv27.4, 16
  %or.4 = or i32 %shl.4, %or.3
  %inc.4 = add i8 %29, 1
  store i8 %inc.4, ptr %arrayidx26.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %exitcond.5.not = icmp eq i32 %7, 5
  br i1 %exitcond.5.not, label %for.body22.4.do.body_crit_edge, label %for.body22.5

for.body22.4.do.body_crit_edge:                   ; preds = %for.body22.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.5:                                     ; preds = %for.body22.4
  %add17.5 = add nuw nsw i32 %conv8134, 5
  %arrayidx.5 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %idxprom.5 = zext i8 %31 to i32
  %arrayidx26.5 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.5
  %32 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx26.5, align 1
  %conv27.5 = zext i8 %33 to i32
  %shl.5 = shl nuw nsw i32 %conv27.5, 20
  %or.5 = or i32 %shl.5, %or.4
  %inc.5 = add i8 %33, 1
  store i8 %inc.5, ptr %arrayidx26.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %exitcond.6.not = icmp eq i32 %7, 6
  br i1 %exitcond.6.not, label %for.body22.5.do.body_crit_edge, label %for.body22.6

for.body22.5.do.body_crit_edge:                   ; preds = %for.body22.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.6:                                     ; preds = %for.body22.5
  %add17.6 = add nuw nsw i32 %conv8134, 6
  %arrayidx.6 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.6, align 1
  %idxprom.6 = zext i8 %35 to i32
  %arrayidx26.6 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.6
  %36 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx26.6, align 1
  %conv27.6 = zext i8 %37 to i32
  %shl.6 = shl nuw i32 %conv27.6, 24
  %or.6 = or i32 %shl.6, %or.5
  %inc.6 = add i8 %37, 1
  store i8 %inc.6, ptr %arrayidx26.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %exitcond.7.not = icmp eq i32 %7, 7
  br i1 %exitcond.7.not, label %for.body22.6.do.body_crit_edge, label %for.body22.7

for.body22.6.do.body_crit_edge:                   ; preds = %for.body22.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body22.7:                                     ; preds = %for.body22.6
  call void @__sanitizer_cov_trace_pc() #16
  %add17.7 = add nuw nsw i32 %conv8134, 7
  %arrayidx.7 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.7
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.7, align 1
  %idxprom.7 = zext i8 %39 to i32
  %arrayidx26.7 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.7
  %40 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx26.7, align 1
  %conv27.7 = zext i8 %41 to i32
  %shl.7 = shl i32 %conv27.7, 28
  %or.7 = or i32 %shl.7, %or.6
  %inc.7 = add i8 %41, 1
  store i8 %inc.7, ptr %arrayidx26.7, align 1
  br label %do.body

do.body:                                          ; preds = %for.body22.7, %for.body22.6.do.body_crit_edge, %for.body22.5.do.body_crit_edge, %for.body22.4.do.body_crit_edge, %for.body22.3.do.body_crit_edge, %for.body22.2.do.body_crit_edge, %for.body22.1.do.body_crit_edge, %for.body22.do.body_crit_edge, %for.cond11.preheader.do.body_crit_edge
  %data.0.lcssa = phi i32 [ 0, %for.cond11.preheader.do.body_crit_edge ], [ %conv27, %for.body22.do.body_crit_edge ], [ %or.1, %for.body22.1.do.body_crit_edge ], [ %or.2, %for.body22.2.do.body_crit_edge ], [ %or.3, %for.body22.3.do.body_crit_edge ], [ %or.4, %for.body22.4.do.body_crit_edge ], [ %or.5, %for.body22.5.do.body_crit_edge ], [ %or.6, %for.body22.6.do.body_crit_edge ], [ %or.7, %for.body22.7 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !528
  tail call void @arm_heavy_mb() #14
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %44 = lshr i32 %i.0133, 1
  %mul39 = and i32 %44, 124
  %add41 = or i32 %mul39, 4295040
  %add.ptr = getelementptr i8, ptr %43, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data.0.lcssa) #14, !srcloc !437
  %add44 = add nuw nsw i32 %conv8134, 8
  %conv8 = and i32 %add44, 255
  %cmp = icmp ult i32 %conv8, %conv9
  br i1 %cmp, label %do.body.for.cond11.preheader_crit_edge, label %do.body.for.cond47.preheader_crit_edge

do.body.for.cond47.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond47.preheader

do.body.for.cond11.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond11.preheader

do.body53:                                        ; preds = %do.body53.do.body53_crit_edge, %do.body53.lr.ph
  %indvars.iv = phi i32 [ 0, %do.body53.lr.ph ], [ %indvars.iv.next, %do.body53.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !529
  tail call void @arm_heavy_mb() #14
  %45 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %screen_tile_row_offset, align 2
  %conv56 = zext i8 %46 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %arrayidx59 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %indvars.iv
  %47 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %48 to i32
  %or61 = or i32 %shl57, %conv60
  %49 = ptrtoint ptr %pri62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri62, align 4
  %mul64 = shl nuw nsw i32 %indvars.iv, 15
  %add66 = add nuw nsw i32 %mul64, 5245204
  %add.ptr67 = getelementptr i8, ptr %50, i32 %add66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or61) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !530
  tail call void @arm_heavy_mb() #14
  %51 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tpc_total, align 1
  %conv72 = zext i8 %52 to i32
  %or73 = or i32 %conv72, 262144
  %53 = ptrtoint ptr %pri62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri62, align 4
  %add78 = add nuw nsw i32 %mul64, 5245200
  %add.ptr79 = getelementptr i8, ptr %54, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %or73) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !531
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %pri62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri62, align 4
  %add87 = add nuw nsw i32 %mul64, 5245208
  %add.ptr88 = getelementptr i8, ptr %56, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %div) #14, !srcloc !437
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %57 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %gpc_nr, align 1
  %59 = zext i8 %58 to i32
  %cmp50 = icmp ult i32 %indvars.iv.next, %59
  br i1 %cmp50, label %do.body53.do.body53_crit_edge, label %do.body53.do.body92_crit_edge

do.body53.do.body92_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body92

do.body53.do.body53_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

do.body92:                                        ; preds = %do.body53.do.body92_crit_edge, %for.cond47.preheader.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !532
  tail call void @arm_heavy_mb() #14
  %pri95 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %pri95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri95, align 4
  %add.ptr96 = getelementptr i8, ptr %61, i32 4299732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %div) #14, !srcloc !437
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bank) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_gr_init_vsc_stream_master(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5259356
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !534
  tail call void @arm_heavy_mb() #14
  %or = or i32 %4, 1
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 5259356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #14, !srcloc !437
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_init(ptr noundef %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gr, align 4
  %init_419bd8 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_419bd8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_419bd8, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %5(ptr noundef %gr) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gr, align 4
  %init_gpc_mmu = getelementptr inbounds %struct.gf100_gr_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %init_gpc_mmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_gpc_mmu, align 4
  tail call void %9(ptr noundef %gr) #14
  %sw_nonctx = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 5
  %10 = ptrtoint ptr %sw_nonctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw_nonctx, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.else, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %12 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc18.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %pack.040.i = phi ptr [ %11, %land.rhs.lr.ph.i ], [ %incdec.ptr19.i, %for.inc18.i.land.rhs.i_crit_edge ]
  %14 = ptrtoint ptr %pack.040.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pack.040.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %land.rhs.i.if.end9_crit_edge, label %land.rhs.i.land.rhs7.i_crit_edge

land.rhs.i.land.rhs7.i_crit_edge:                 ; preds = %land.rhs.i
  br label %land.rhs7.i

land.rhs.i.if.end9_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.rhs7.i:                                      ; preds = %while.end.i.land.rhs7.i_crit_edge, %land.rhs.i.land.rhs7.i_crit_edge
  %init.037.i = phi ptr [ %incdec.ptr.i, %while.end.i.land.rhs7.i_crit_edge ], [ %15, %land.rhs.i.land.rhs7.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037.i, i32 0, i32 1
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %land.rhs7.i.for.inc18.i_crit_edge, label %for.body10.i

land.rhs7.i.for.inc18.i_crit_edge:                ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18.i

for.body10.i:                                     ; preds = %land.rhs7.i
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %init.037.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %init.037.i, align 4
  %pitch.i = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037.i, i32 0, i32 2
  %20 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pitch.i, align 4
  %mul.i = mul i32 %21, %conv.i
  %add.i = add i32 %mul.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add.i)
  %cmp34.i = icmp ult i32 %19, %add.i
  br i1 %cmp34.i, label %do.body.lr.ph.i, label %for.body10.i.while.end.i_crit_edge

for.body10.i.while.end.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.body.lr.ph.i:                                  ; preds = %for.body10.i
  %data.i = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037.i, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %addr13.035.i = phi i32 [ %19, %do.body.lr.ph.i ], [ %add17.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !458
  tail call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.i, align 4
  %24 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %addr13.035.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #14, !srcloc !437
  %26 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pitch.i, align 4
  %add17.i = add i32 %27, %addr13.035.i
  %cmp.i = icmp ult i32 %add17.i, %add.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.while.end.i_crit_edge

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

while.end.i:                                      ; preds = %do.body.i.while.end.i_crit_edge, %for.body10.i.while.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.gf100_gr_init, ptr %init.037.i, i32 1
  %tobool6.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool6.not.i, label %while.end.i.for.inc18.i_crit_edge, label %while.end.i.land.rhs7.i_crit_edge

while.end.i.land.rhs7.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs7.i

while.end.i.for.inc18.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %while.end.i.for.inc18.i_crit_edge, %land.rhs7.i.for.inc18.i_crit_edge
  %incdec.ptr19.i = getelementptr %struct.gf100_gr_pack, ptr %pack.040.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr19.i, null
  br i1 %tobool.not.i, label %for.inc18.i.if.end9_crit_edge, label %for.inc18.i.land.rhs.i_crit_edge

for.inc18.i.land.rhs.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.inc18.i.if.end9_crit_edge:                    ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.else:                                          ; preds = %if.end
  %28 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gr, align 4
  %mmio = getelementptr inbounds %struct.gf100_gr_func, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %tobool.not39.i483 = icmp eq ptr %31, null
  br i1 %tobool.not39.i483, label %if.else.if.end9_crit_edge, label %land.rhs.lr.ph.i486

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.rhs.lr.ph.i486:                              ; preds = %if.else
  %32 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device1, align 4
  %pri.i485 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  br label %land.rhs.i489

land.rhs.i489:                                    ; preds = %for.inc18.i512.land.rhs.i489_crit_edge, %land.rhs.lr.ph.i486
  %pack.040.i487 = phi ptr [ %31, %land.rhs.lr.ph.i486 ], [ %incdec.ptr19.i510, %for.inc18.i512.land.rhs.i489_crit_edge ]
  %34 = ptrtoint ptr %pack.040.i487 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pack.040.i487, align 4
  %tobool3.not.i488 = icmp eq ptr %35, null
  br i1 %tobool3.not.i488, label %land.rhs.i489.if.end9_crit_edge, label %land.rhs.i489.land.rhs7.i493_crit_edge

land.rhs.i489.land.rhs7.i493_crit_edge:           ; preds = %land.rhs.i489
  br label %land.rhs7.i493

land.rhs.i489.if.end9_crit_edge:                  ; preds = %land.rhs.i489
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.rhs7.i493:                                   ; preds = %while.end.i509.land.rhs7.i493_crit_edge, %land.rhs.i489.land.rhs7.i493_crit_edge
  %init.037.i490 = phi ptr [ %incdec.ptr.i507, %while.end.i509.land.rhs7.i493_crit_edge ], [ %35, %land.rhs.i489.land.rhs7.i493_crit_edge ]
  %count.i491 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037.i490, i32 0, i32 1
  %36 = ptrtoint ptr %count.i491 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %count.i491, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool8.not.i492 = icmp eq i8 %37, 0
  br i1 %tobool8.not.i492, label %land.rhs7.i493.for.inc18.i512_crit_edge, label %for.body10.i499

land.rhs7.i493.for.inc18.i512_crit_edge:          ; preds = %land.rhs7.i493
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18.i512

for.body10.i499:                                  ; preds = %land.rhs7.i493
  %conv.i494 = zext i8 %37 to i32
  %38 = ptrtoint ptr %init.037.i490 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %init.037.i490, align 4
  %pitch.i495 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037.i490, i32 0, i32 2
  %40 = ptrtoint ptr %pitch.i495 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pitch.i495, align 4
  %mul.i496 = mul i32 %41, %conv.i494
  %add.i497 = add i32 %mul.i496, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add.i497)
  %cmp34.i498 = icmp ult i32 %39, %add.i497
  br i1 %cmp34.i498, label %do.body.lr.ph.i501, label %for.body10.i499.while.end.i509_crit_edge

for.body10.i499.while.end.i509_crit_edge:         ; preds = %for.body10.i499
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i509

do.body.lr.ph.i501:                               ; preds = %for.body10.i499
  %data.i500 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.037.i490, i32 0, i32 3
  br label %do.body.i506

do.body.i506:                                     ; preds = %do.body.i506.do.body.i506_crit_edge, %do.body.lr.ph.i501
  %addr13.035.i502 = phi i32 [ %39, %do.body.lr.ph.i501 ], [ %add17.i504, %do.body.i506.do.body.i506_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !458
  tail call void @arm_heavy_mb() #14
  %42 = ptrtoint ptr %data.i500 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.i500, align 4
  %44 = ptrtoint ptr %pri.i485 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i485, align 4
  %add.ptr.i503 = getelementptr i8, ptr %45, i32 %addr13.035.i502
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i503, i32 %43) #14, !srcloc !437
  %46 = ptrtoint ptr %pitch.i495 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pitch.i495, align 4
  %add17.i504 = add i32 %47, %addr13.035.i502
  %cmp.i505 = icmp ult i32 %add17.i504, %add.i497
  br i1 %cmp.i505, label %do.body.i506.do.body.i506_crit_edge, label %do.body.i506.while.end.i509_crit_edge

do.body.i506.while.end.i509_crit_edge:            ; preds = %do.body.i506
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i509

do.body.i506.do.body.i506_crit_edge:              ; preds = %do.body.i506
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i506

while.end.i509:                                   ; preds = %do.body.i506.while.end.i509_crit_edge, %for.body10.i499.while.end.i509_crit_edge
  %incdec.ptr.i507 = getelementptr %struct.gf100_gr_init, ptr %init.037.i490, i32 1
  %tobool6.not.i508 = icmp eq ptr %incdec.ptr.i507, null
  br i1 %tobool6.not.i508, label %while.end.i509.for.inc18.i512_crit_edge, label %while.end.i509.land.rhs7.i493_crit_edge

while.end.i509.land.rhs7.i493_crit_edge:          ; preds = %while.end.i509
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs7.i493

while.end.i509.for.inc18.i512_crit_edge:          ; preds = %while.end.i509
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18.i512

for.inc18.i512:                                   ; preds = %while.end.i509.for.inc18.i512_crit_edge, %land.rhs7.i493.for.inc18.i512_crit_edge
  %incdec.ptr19.i510 = getelementptr %struct.gf100_gr_pack, ptr %pack.040.i487, i32 1
  %tobool.not.i511 = icmp eq ptr %incdec.ptr19.i510, null
  br i1 %tobool.not.i511, label %for.inc18.i512.if.end9_crit_edge, label %for.inc18.i512.land.rhs.i489_crit_edge

for.inc18.i512.land.rhs.i489_crit_edge:           ; preds = %for.inc18.i512
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i489

for.inc18.i512.if.end9_crit_edge:                 ; preds = %for.inc18.i512
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %for.inc18.i512.if.end9_crit_edge, %land.rhs.i489.if.end9_crit_edge, %if.else.if.end9_crit_edge, %for.inc18.i.if.end9_crit_edge, %land.rhs.i.if.end9_crit_edge
  %call = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr)
  %48 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gr, align 4
  %init_r405a14 = getelementptr inbounds %struct.gf100_gr_func, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %init_r405a14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_r405a14, align 4
  %tobool11.not = icmp eq ptr %51, null
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %51(ptr noundef %gr) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %52 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gr, align 4
  %clkgate_pack = getelementptr inbounds %struct.gf100_gr_func, ptr %53, i32 0, i32 37
  %54 = ptrtoint ptr %clkgate_pack to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clkgate_pack, align 4
  %tobool17.not = icmp eq ptr %55, null
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %therm = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 42
  %56 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %therm, align 4
  tail call void @nvkm_therm_clkgate_init(ptr noundef %57, ptr noundef nonnull %55) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %58 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gr, align 4
  %init_bios = getelementptr inbounds %struct.gf100_gr_func, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %init_bios to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_bios, align 4
  %tobool23.not = icmp eq ptr %61, null
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %61(ptr noundef %gr) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %62 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gr, align 4
  %init_vsc_stream_master = getelementptr inbounds %struct.gf100_gr_func, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %init_vsc_stream_master to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_vsc_stream_master, align 4
  tail call void %65(ptr noundef %gr) #14
  %66 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gr, align 4
  %init_zcull = getelementptr inbounds %struct.gf100_gr_func, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %init_zcull to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_zcull, align 4
  tail call void %69(ptr noundef %gr) #14
  %70 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gr, align 4
  %init_num_active_ltcs = getelementptr inbounds %struct.gf100_gr_func, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %init_num_active_ltcs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_num_active_ltcs, align 4
  tail call void %73(ptr noundef %gr) #14
  %74 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gr, align 4
  %init_rop_active_fbps = getelementptr inbounds %struct.gf100_gr_func, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %init_rop_active_fbps to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_rop_active_fbps, align 4
  %tobool32.not = icmp eq ptr %77, null
  br i1 %tobool32.not, label %if.end27.if.end36_crit_edge, label %if.then33

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %77(ptr noundef %gr) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end27.if.end36_crit_edge
  %78 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gr, align 4
  %init_bios_2 = getelementptr inbounds %struct.gf100_gr_func, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %init_bios_2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_bios_2, align 4
  %tobool38.not = icmp eq ptr %81, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %81(ptr noundef %gr) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %82 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gr, align 4
  %init_swdx_pes_mask = getelementptr inbounds %struct.gf100_gr_func, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %init_swdx_pes_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init_swdx_pes_mask, align 4
  %tobool44.not = icmp eq ptr %85, null
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %85(ptr noundef %gr) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %86 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gr, align 4
  %init_fs = getelementptr inbounds %struct.gf100_gr_func, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %init_fs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_fs, align 4
  %tobool50.not = icmp eq ptr %89, null
  br i1 %tobool50.not, label %if.end48.do.body_crit_edge, label %if.then51

if.end48.do.body_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %89(ptr noundef %gr) #14
  br label %do.body

do.body:                                          ; preds = %if.then51, %if.end48.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !535
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %91, i32 4195584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65537) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !536
  tail call void @arm_heavy_mb() #14
  %92 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri, align 4
  %add.ptr59 = getelementptr i8, ptr %93, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  tail call void @arm_heavy_mb() #14
  %94 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %95, i32 4194620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !538
  tail call void @arm_heavy_mb() #14
  %96 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri, align 4
  %add.ptr69 = getelementptr i8, ptr %97, i32 4194596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 2) #14, !srcloc !437
  %98 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gr, align 4
  %init_fecs_exceptions = getelementptr inbounds %struct.gf100_gr_func, ptr %99, i32 0, i32 14
  %100 = ptrtoint ptr %init_fecs_exceptions to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_fecs_exceptions, align 4
  tail call void %101(ptr noundef %gr) #14
  %102 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %gr, align 4
  %init_ds_hww_esr_2 = getelementptr inbounds %struct.gf100_gr_func, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %init_ds_hww_esr_2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_ds_hww_esr_2, align 4
  %tobool72.not = icmp eq ptr %105, null
  br i1 %tobool72.not, label %do.body.do.body77_crit_edge, label %if.then73

do.body.do.body77_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body77

if.then73:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %105(ptr noundef %gr) #14
  br label %do.body77

do.body77:                                        ; preds = %if.then73, %do.body.do.body77_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  tail call void @arm_heavy_mb() #14
  %106 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri, align 4
  %add.ptr81 = getelementptr i8, ptr %107, i32 4210688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr86 = getelementptr i8, ptr %109, i32 4212224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %110 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri, align 4
  %add.ptr91 = getelementptr i8, ptr %111, i32 4227120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 -1073741824) #14, !srcloc !437
  %112 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %gr, align 4
  %init_40601c = getelementptr inbounds %struct.gf100_gr_func, ptr %113, i32 0, i32 16
  %114 = ptrtoint ptr %init_40601c to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init_40601c, align 4
  %tobool93.not = icmp eq ptr %115, null
  br i1 %tobool93.not, label %do.body77.do.body98_crit_edge, label %if.then94

do.body77.do.body98_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body98

if.then94:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %115(ptr noundef %gr) #14
  br label %do.body98

do.body98:                                        ; preds = %if.then94, %do.body77.do.body98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !542
  tail call void @arm_heavy_mb() #14
  %116 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri, align 4
  %add.ptr102 = getelementptr i8, ptr %117, i32 4218904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  tail call void @arm_heavy_mb() #14
  %118 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri, align 4
  %add.ptr107 = getelementptr i8, ptr %119, i32 4211856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 -1073741824) #14, !srcloc !437
  %120 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gr, align 4
  %init_sked_hww_esr = getelementptr inbounds %struct.gf100_gr_func, ptr %121, i32 0, i32 17
  %122 = ptrtoint ptr %init_sked_hww_esr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_sked_hww_esr, align 4
  %tobool109.not = icmp eq ptr %123, null
  br i1 %tobool109.not, label %do.body98.do.body114_crit_edge, label %if.then110

do.body98.do.body114_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %123(ptr noundef %gr) #14
  br label %do.body114

do.body114:                                       ; preds = %if.then110, %do.body98.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !544
  tail call void @arm_heavy_mb() #14
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add.ptr118 = getelementptr i8, ptr %125, i32 4216896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !545
  tail call void @arm_heavy_mb() #14
  %126 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pri, align 4
  %add.ptr123 = getelementptr i8, ptr %127, i32 4216900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 16777215) #14, !srcloc !437
  %128 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %gr, align 4
  %init_419cc0 = getelementptr inbounds %struct.gf100_gr_func, ptr %129, i32 0, i32 18
  %130 = ptrtoint ptr %init_419cc0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_419cc0, align 4
  %tobool125.not = icmp eq ptr %131, null
  br i1 %tobool125.not, label %do.body114.if.end129_crit_edge, label %if.then126

do.body114.if.end129_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %131(ptr noundef %gr) #14
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %do.body114.if.end129_crit_edge
  %132 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %gr, align 4
  %init_419eb4 = getelementptr inbounds %struct.gf100_gr_func, ptr %133, i32 0, i32 19
  %134 = ptrtoint ptr %init_419eb4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %init_419eb4, align 4
  %tobool131.not = icmp eq ptr %135, null
  br i1 %tobool131.not, label %if.end129.if.end135_crit_edge, label %if.then132

if.end129.if.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %135(ptr noundef %gr) #14
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129.if.end135_crit_edge
  %136 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %gr, align 4
  %init_419c9c = getelementptr inbounds %struct.gf100_gr_func, ptr %137, i32 0, i32 20
  %138 = ptrtoint ptr %init_419c9c to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %init_419c9c, align 4
  %tobool137.not = icmp eq ptr %139, null
  br i1 %tobool137.not, label %if.end135.if.end141_crit_edge, label %if.then138

if.end135.if.end141_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %139(ptr noundef %gr) #14
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end135.if.end141_crit_edge
  %140 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %gr, align 4
  %init_ppc_exceptions = getelementptr inbounds %struct.gf100_gr_func, ptr %141, i32 0, i32 21
  %142 = ptrtoint ptr %init_ppc_exceptions to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %init_ppc_exceptions, align 4
  %tobool143.not = icmp eq ptr %143, null
  br i1 %tobool143.not, label %if.end141.if.end147_crit_edge, label %if.then144

if.end141.if.end147_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %143(ptr noundef %gr) #14
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.end141.if.end147_crit_edge
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %144 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp521.not = icmp eq i8 %145, 0
  br i1 %cmp521.not, label %if.end147.for.cond246.preheader_crit_edge, label %if.end147.do.body149_crit_edge

if.end147.do.body149_crit_edge:                   ; preds = %if.end147
  br label %do.body149

if.end147.for.cond246.preheader_crit_edge:        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond246.preheader

for.cond246.preheader:                            ; preds = %do.body227.for.cond246.preheader_crit_edge, %if.end147.for.cond246.preheader_crit_edge
  %rop_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 12
  %146 = ptrtoint ptr %rop_nr to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %rop_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp248525.not = icmp eq i8 %147, 0
  br i1 %cmp248525.not, label %for.cond246.preheader.do.body286_crit_edge, label %for.cond246.preheader.do.body251_crit_edge

for.cond246.preheader.do.body251_crit_edge:       ; preds = %for.cond246.preheader
  br label %do.body251

for.cond246.preheader.do.body286_crit_edge:       ; preds = %for.cond246.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body286

do.body149:                                       ; preds = %do.body227.do.body149_crit_edge, %if.end147.do.body149_crit_edge
  %gpc.0522 = phi i32 [ %inc244, %do.body227.do.body149_crit_edge ], [ 0, %if.end147.do.body149_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !546
  tail call void @arm_heavy_mb() #14
  %148 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc.0522, 15
  %add153 = add nuw nsw i32 %mul, 5243936
  %add.ptr154 = getelementptr i8, ptr %149, i32 %add153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !547
  tail call void @arm_heavy_mb() #14
  %150 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pri, align 4
  %add161 = add nuw nsw i32 %mul, 5245184
  %add.ptr162 = getelementptr i8, ptr %151, i32 %add161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !548
  tail call void @arm_heavy_mb() #14
  %152 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri, align 4
  %add169 = add nuw nsw i32 %mul, 5247016
  %add.ptr170 = getelementptr i8, ptr %153, i32 %add169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 -1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !549
  tail call void @arm_heavy_mb() #14
  %154 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri, align 4
  %add177 = add nuw nsw i32 %mul, 5244964
  %add.ptr178 = getelementptr i8, ptr %155, i32 %add177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 -1073741824) #14, !srcloc !437
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc.0522
  %156 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %cmp181516.not = icmp eq i8 %157, 0
  br i1 %cmp181516.not, label %do.body149.do.body227_crit_edge, label %do.body184.lr.ph

do.body149.do.body227_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body227

do.body184.lr.ph:                                 ; preds = %do.body149
  %add189 = add nuw nsw i32 %mul, 5259264
  br label %do.body184

do.body184:                                       ; preds = %if.end225.do.body184_crit_edge, %do.body184.lr.ph
  %tpc.0517 = phi i32 [ 0, %do.body184.lr.ph ], [ %inc, %if.end225.do.body184_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !550
  tail call void @arm_heavy_mb() #14
  %158 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pri, align 4
  %mul190 = shl i32 %tpc.0517, 11
  %add191 = add nuw nsw i32 %add189, %mul190
  %add192 = or i32 %add191, 1288
  %add.ptr193 = getelementptr i8, ptr %159, i32 %add192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !551
  tail call void @arm_heavy_mb() #14
  %160 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pri, align 4
  %add202 = or i32 %add191, 1292
  %add.ptr203 = getelementptr i8, ptr %161, i32 %add202
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 -1) #14, !srcloc !437
  %162 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %gr, align 4
  %init_tex_hww_esr = getelementptr inbounds %struct.gf100_gr_func, ptr %163, i32 0, i32 22
  %164 = ptrtoint ptr %init_tex_hww_esr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %init_tex_hww_esr, align 4
  %tobool205.not = icmp eq ptr %165, null
  br i1 %tobool205.not, label %do.body184.do.body210_crit_edge, label %if.then206

do.body184.do.body210_crit_edge:                  ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body210

if.then206:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %165(ptr noundef %gr, i32 noundef %gpc.0522, i32 noundef %tpc.0517) #14
  br label %do.body210

do.body210:                                       ; preds = %if.then206, %do.body184.do.body210_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !552
  tail call void @arm_heavy_mb() #14
  %166 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pri, align 4
  %add218 = or i32 %add191, 132
  %add.ptr219 = getelementptr i8, ptr %167, i32 %add218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 -1073741824) #14, !srcloc !437
  %168 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %gr, align 4
  %init_504430 = getelementptr inbounds %struct.gf100_gr_func, ptr %169, i32 0, i32 23
  %170 = ptrtoint ptr %init_504430 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %init_504430, align 4
  %tobool221.not = icmp eq ptr %171, null
  br i1 %tobool221.not, label %do.body210.if.end225_crit_edge, label %if.then222

do.body210.if.end225_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end225

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %171(ptr noundef %gr, i32 noundef %gpc.0522, i32 noundef %tpc.0517) #14
  br label %if.end225

if.end225:                                        ; preds = %if.then222, %do.body210.if.end225_crit_edge
  %172 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gr, align 4
  %init_shader_exceptions = getelementptr inbounds %struct.gf100_gr_func, ptr %173, i32 0, i32 24
  %174 = ptrtoint ptr %init_shader_exceptions to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %init_shader_exceptions, align 4
  tail call void %175(ptr noundef %gr, i32 noundef %gpc.0522, i32 noundef %tpc.0517) #14
  %inc = add nuw nsw i32 %tpc.0517, 1
  %176 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx, align 1
  %conv180 = zext i8 %177 to i32
  %cmp181 = icmp ult i32 %inc, %conv180
  br i1 %cmp181, label %if.end225.do.body184_crit_edge, label %if.end225.do.body227_crit_edge

if.end225.do.body227_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body227

if.end225.do.body184_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body184

do.body227:                                       ; preds = %if.end225.do.body227_crit_edge, %do.body149.do.body227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !553
  tail call void @arm_heavy_mb() #14
  %178 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pri, align 4
  %add233 = add nuw nsw i32 %mul, 5254288
  %add.ptr234 = getelementptr i8, ptr %179, i32 %add233
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !554
  tail call void @arm_heavy_mb() #14
  %180 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pri, align 4
  %add241 = add nuw nsw i32 %mul, 5254292
  %add.ptr242 = getelementptr i8, ptr %181, i32 %add241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 -1) #14, !srcloc !437
  %inc244 = add nuw nsw i32 %gpc.0522, 1
  %182 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %183 to i32
  %cmp = icmp ult i32 %inc244, %conv
  br i1 %cmp, label %do.body227.do.body149_crit_edge, label %do.body227.for.cond246.preheader_crit_edge

do.body227.for.cond246.preheader_crit_edge:       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond246.preheader

do.body227.do.body149_crit_edge:                  ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body149

do.body251:                                       ; preds = %do.body251.do.body251_crit_edge, %for.cond246.preheader.do.body251_crit_edge
  %rop.0526 = phi i32 [ %inc284, %do.body251.do.body251_crit_edge ], [ 0, %for.cond246.preheader.do.body251_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !555
  tail call void @arm_heavy_mb() #14
  %184 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pri, align 4
  %mul255 = shl i32 %rop.0526, 10
  %add257 = add nuw nsw i32 %mul255, 4260164
  %add.ptr258 = getelementptr i8, ptr %185, i32 %add257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !556
  tail call void @arm_heavy_mb() #14
  %186 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pri, align 4
  %add265 = add nuw nsw i32 %mul255, 4259952
  %add.ptr266 = getelementptr i8, ptr %187, i32 %add265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 1073741824) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !557
  tail call void @arm_heavy_mb() #14
  %188 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri, align 4
  %add273 = add nuw nsw i32 %mul255, 4260356
  %add.ptr274 = getelementptr i8, ptr %189, i32 %add273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !558
  tail call void @arm_heavy_mb() #14
  %190 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pri, align 4
  %add281 = add nuw nsw i32 %mul255, 4260360
  %add.ptr282 = getelementptr i8, ptr %191, i32 %add281
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 -1) #14, !srcloc !437
  %inc284 = add nuw nsw i32 %rop.0526, 1
  %192 = ptrtoint ptr %rop_nr to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %rop_nr, align 4
  %conv247 = zext i8 %193 to i32
  %cmp248 = icmp ult i32 %inc284, %conv247
  br i1 %cmp248, label %do.body251.do.body251_crit_edge, label %do.body251.do.body286_crit_edge

do.body251.do.body286_crit_edge:                  ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body286

do.body251.do.body251_crit_edge:                  ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body251

do.body286:                                       ; preds = %do.body251.do.body286_crit_edge, %for.cond246.preheader.do.body286_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !559
  tail call void @arm_heavy_mb() #14
  %194 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri, align 4
  %add.ptr290 = getelementptr i8, ptr %195, i32 4194568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !560
  tail call void @arm_heavy_mb() #14
  %196 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pri, align 4
  %add.ptr295 = getelementptr i8, ptr %197, i32 4194616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !561
  tail call void @arm_heavy_mb() #14
  %198 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pri, align 4
  %add.ptr300 = getelementptr i8, ptr %199, i32 4194584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !562
  tail call void @arm_heavy_mb() #14
  %200 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pri, align 4
  %add.ptr305 = getelementptr i8, ptr %201, i32 4194608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !563
  tail call void @arm_heavy_mb() #14
  %202 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pri, align 4
  %add.ptr310 = getelementptr i8, ptr %203, i32 4194588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !564
  tail call void @arm_heavy_mb() #14
  %204 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pri, align 4
  %add.ptr315 = getelementptr i8, ptr %205, i32 4194612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr315, i32 -1) #14, !srcloc !437
  %206 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %gr, align 4
  %init_400054 = getelementptr inbounds %struct.gf100_gr_func, ptr %207, i32 0, i32 25
  %208 = ptrtoint ptr %init_400054 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %init_400054, align 4
  %tobool317.not = icmp eq ptr %209, null
  br i1 %tobool317.not, label %do.body286.if.end321_crit_edge, label %if.then318

do.body286.if.end321_crit_edge:                   ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end321

if.then318:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %209(ptr noundef %gr) #14
  br label %if.end321

if.end321:                                        ; preds = %if.then318, %do.body286.if.end321_crit_edge
  tail call void @gf100_gr_zbc_init(ptr noundef %gr)
  %210 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %gr, align 4
  %init_4188a4 = getelementptr inbounds %struct.gf100_gr_func, ptr %211, i32 0, i32 26
  %212 = ptrtoint ptr %init_4188a4 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %init_4188a4, align 4
  %tobool323.not = icmp eq ptr %213, null
  br i1 %tobool323.not, label %if.end321.if.end327_crit_edge, label %if.then324

if.end321.if.end327_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end327

if.then324:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %213(ptr noundef %gr) #14
  br label %if.end327

if.end327:                                        ; preds = %if.then324, %if.end321.if.end327_crit_edge
  %call328 = tail call i32 @gf100_gr_init_ctxctl(ptr noundef %gr)
  ret i32 %call328
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_clkgate_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @gf100_gr_nofw(ptr nocapture noundef writeonly %gr, i32 %ver, ptr nocapture readnone %fwif) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %firmware, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_load(ptr noundef %gr, i32 %ver, ptr nocapture readnone %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgopt, align 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %3, ptr noundef nonnull @.str.46, i1 noundef zeroext false) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %inst = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 1
  %call2 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %gr, ptr noundef nonnull @.str.47, ptr noundef %inst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 2
  %call4 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %gr, ptr noundef nonnull @.str.48, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %inst7 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 1
  %call8 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %gr, ptr noundef nonnull @.str.49, ptr noundef %inst7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %data12 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 2
  %call13 = tail call fastcc i32 @gf100_gr_load_fw(ptr noundef %gr, ptr noundef nonnull @.str.50, ptr noundef %data12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %firmware, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false10.cleanup_crit_edge ], [ -2, %lor.lhs.false6.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_load_fw(ptr noundef %gr, ptr noundef %name, ptr nocapture noundef %blob) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %f = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #14
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !565
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f) #14
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %3 = call ptr @memset(ptr %f, i32 255, i32 32)
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %f, i32 noundef 32, ptr noundef nonnull @.str.180, i32 noundef %5, ptr noundef %name)
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %f, ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then:                                          ; preds = %entry
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %f, i32 noundef 32, ptr noundef nonnull @.str.181, ptr noundef %name)
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call9 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %f, ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end21_crit_edge, label %do.body

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.body:                                          ; preds = %if.then
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device2, align 4
  %dev15 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 8
  %name16 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.182, ptr noundef %name16, ptr noundef %name) #17
  br label %cleanup

if.end21:                                         ; preds = %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %size22 = getelementptr inbounds %struct.nvkm_blob, ptr %blob, i32 0, i32 1
  %20 = ptrtoint ptr %size22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size22, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %call24 = call ptr @kmemdup(ptr noundef %22, i32 noundef %19, i32 noundef 3264) #14
  %23 = ptrtoint ptr %blob to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call24, ptr %blob, align 4
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %25) #14
  %26 = ptrtoint ptr %blob to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blob, align 4
  %cmp27.not = icmp eq ptr %27, null
  %cond = select i1 %cmp27.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end21 ], [ %call9, %do.end ], [ %call9, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gf100_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_zbc_color_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_zbc_depth_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_unk260(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_acr_managed_falcon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_bootstrap_falcons(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_generate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_gr_init_csdata(ptr nocapture noundef readonly %gr, ptr noundef readonly %pack, i32 noundef %falcon, i32 noundef %starstar, i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !566
  tail call void @arm_heavy_mb() #14
  %add = add i32 %starstar, 33554432
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add3 = add i32 %falcon, 448
  %add.ptr = getelementptr i8, ptr %3, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %add) #14, !srcloc !437
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add5 = add i32 %falcon, 452
  %add.ptr6 = getelementptr i8, ptr %5, i32 %add5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !567
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 %add5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !568
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !569
  tail call void @arm_heavy_mb() #14
  %add16 = add i32 %10, 16777216
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %add16) #14, !srcloc !437
  %tobool.not142 = icmp eq ptr %pack, null
  br i1 %tobool.not142, label %entry.do.body58_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

land.rhs:                                         ; preds = %for.inc55.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %iter.0147 = phi ptr [ %incdec.ptr56, %for.inc55.land.rhs_crit_edge ], [ %pack, %entry.land.rhs_crit_edge ]
  %addr.0146 = phi i32 [ %addr.1.lcssa, %for.inc55.land.rhs_crit_edge ], [ -1, %entry.land.rhs_crit_edge ]
  %prev.0145 = phi i32 [ %prev.1.lcssa, %for.inc55.land.rhs_crit_edge ], [ -1, %entry.land.rhs_crit_edge ]
  %star.1144 = phi i32 [ %star.2.lcssa, %for.inc55.land.rhs_crit_edge ], [ %10, %entry.land.rhs_crit_edge ]
  %xfer.0143 = phi i32 [ %xfer.1.lcssa, %for.inc55.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %iter.0147 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iter.0147, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %land.rhs.do.body58_crit_edge, label %land.rhs.land.rhs25_crit_edge

land.rhs.land.rhs25_crit_edge:                    ; preds = %land.rhs
  br label %land.rhs25

land.rhs.do.body58_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

land.rhs25:                                       ; preds = %while.end.land.rhs25_crit_edge, %land.rhs.land.rhs25_crit_edge
  %init.0133 = phi ptr [ %incdec.ptr, %while.end.land.rhs25_crit_edge ], [ %14, %land.rhs.land.rhs25_crit_edge ]
  %addr.1132 = phi i32 [ %addr.2.lcssa, %while.end.land.rhs25_crit_edge ], [ %addr.0146, %land.rhs.land.rhs25_crit_edge ]
  %prev.1131 = phi i32 [ %prev.2.lcssa, %while.end.land.rhs25_crit_edge ], [ %prev.0145, %land.rhs.land.rhs25_crit_edge ]
  %star.2130 = phi i32 [ %star.3.lcssa, %while.end.land.rhs25_crit_edge ], [ %star.1144, %land.rhs.land.rhs25_crit_edge ]
  %xfer.1129 = phi i32 [ %xfer.2.lcssa, %while.end.land.rhs25_crit_edge ], [ %xfer.0143, %land.rhs.land.rhs25_crit_edge ]
  %count = getelementptr inbounds %struct.gf100_gr_init, ptr %init.0133, i32 0, i32 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %land.rhs25.for.inc55_crit_edge, label %for.body28

land.rhs25.for.inc55_crit_edge:                   ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc55

for.body28:                                       ; preds = %land.rhs25
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %init.0133 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %init.0133, align 4
  %sub = sub i32 %18, %base
  %pitch = getelementptr inbounds %struct.gf100_gr_init, ptr %init.0133, i32 0, i32 2
  %19 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pitch, align 4
  %mul = mul i32 %20, %conv
  %add32 = add i32 %mul, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add32)
  %cmp33119 = icmp ult i32 %sub, %add32
  br i1 %cmp33119, label %for.body28.while.body_crit_edge, label %for.body28.while.end_crit_edge

for.body28.while.end_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.body28.while.body_crit_edge:                  ; preds = %for.body28
  br label %while.body

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %for.body28.while.body_crit_edge
  %head.0124 = phi i32 [ %add54, %if.end51.while.body_crit_edge ], [ %sub, %for.body28.while.body_crit_edge ]
  %addr.2123 = phi i32 [ %addr.3, %if.end51.while.body_crit_edge ], [ %addr.1132, %for.body28.while.body_crit_edge ]
  %prev.2122 = phi i32 [ %head.0124, %if.end51.while.body_crit_edge ], [ %prev.1131, %for.body28.while.body_crit_edge ]
  %star.3121 = phi i32 [ %star.5, %if.end51.while.body_crit_edge ], [ %star.2130, %for.body28.while.body_crit_edge ]
  %xfer.2120 = phi i32 [ %add52, %if.end51.while.body_crit_edge ], [ %xfer.1129, %for.body28.while.body_crit_edge ]
  %add35 = add i32 %prev.2122, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %head.0124, i32 %add35)
  %cmp36.not = icmp ne i32 %head.0124, %add35
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %xfer.2120)
  %cmp38 = icmp ugt i32 %xfer.2120, 31
  %or.cond = select i1 %cmp36.not, i1 true, i1 %cmp38
  br i1 %or.cond, label %if.then40, label %while.body.if.end51_crit_edge

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer.2120)
  %tobool41.not = icmp eq i32 %xfer.2120, 0
  br i1 %tobool41.not, label %if.then40.if.end51_crit_edge, label %if.then42

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %dec = shl i32 %xfer.2120, 26
  %shl = add i32 %dec, -67108864
  %or = or i32 %addr.2123, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !570
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr48 = getelementptr i8, ptr %22, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %or) #14, !srcloc !437
  %add49 = add i32 %star.3121, 4
  br label %if.end51

if.end51:                                         ; preds = %if.then42, %if.then40.if.end51_crit_edge, %while.body.if.end51_crit_edge
  %xfer.3 = phi i32 [ %xfer.2120, %while.body.if.end51_crit_edge ], [ 0, %if.then42 ], [ 0, %if.then40.if.end51_crit_edge ]
  %star.5 = phi i32 [ %star.3121, %while.body.if.end51_crit_edge ], [ %add49, %if.then42 ], [ %star.3121, %if.then40.if.end51_crit_edge ]
  %addr.3 = phi i32 [ %addr.2123, %while.body.if.end51_crit_edge ], [ %head.0124, %if.then42 ], [ %head.0124, %if.then40.if.end51_crit_edge ]
  %add52 = add nuw nsw i32 %xfer.3, 1
  %23 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pitch, align 4
  %add54 = add i32 %24, %head.0124
  %cmp33 = icmp ult i32 %add54, %add32
  br i1 %cmp33, label %if.end51.while.body_crit_edge, label %if.end51.while.end_crit_edge

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end51.while.end_crit_edge, %for.body28.while.end_crit_edge
  %xfer.2.lcssa = phi i32 [ %xfer.1129, %for.body28.while.end_crit_edge ], [ %add52, %if.end51.while.end_crit_edge ]
  %star.3.lcssa = phi i32 [ %star.2130, %for.body28.while.end_crit_edge ], [ %star.5, %if.end51.while.end_crit_edge ]
  %prev.2.lcssa = phi i32 [ %prev.1131, %for.body28.while.end_crit_edge ], [ %head.0124, %if.end51.while.end_crit_edge ]
  %addr.2.lcssa = phi i32 [ %addr.1132, %for.body28.while.end_crit_edge ], [ %addr.3, %if.end51.while.end_crit_edge ]
  %incdec.ptr = getelementptr %struct.gf100_gr_init, ptr %init.0133, i32 1
  %tobool24.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool24.not, label %while.end.for.inc55_crit_edge, label %while.end.land.rhs25_crit_edge

while.end.land.rhs25_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs25

while.end.for.inc55_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc55

for.inc55:                                        ; preds = %while.end.for.inc55_crit_edge, %land.rhs25.for.inc55_crit_edge
  %xfer.1.lcssa = phi i32 [ %xfer.1129, %land.rhs25.for.inc55_crit_edge ], [ %xfer.2.lcssa, %while.end.for.inc55_crit_edge ]
  %star.2.lcssa = phi i32 [ %star.2130, %land.rhs25.for.inc55_crit_edge ], [ %star.3.lcssa, %while.end.for.inc55_crit_edge ]
  %prev.1.lcssa = phi i32 [ %prev.1131, %land.rhs25.for.inc55_crit_edge ], [ %prev.2.lcssa, %while.end.for.inc55_crit_edge ]
  %addr.1.lcssa = phi i32 [ %addr.1132, %land.rhs25.for.inc55_crit_edge ], [ %addr.2.lcssa, %while.end.for.inc55_crit_edge ]
  %incdec.ptr56 = getelementptr %struct.gf100_gr_pack, ptr %iter.0147, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr56, null
  br i1 %tobool.not, label %for.inc55.do.body58_crit_edge, label %for.inc55.land.rhs_crit_edge

for.inc55.land.rhs_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.inc55.do.body58_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

do.body58:                                        ; preds = %for.inc55.do.body58_crit_edge, %land.rhs.do.body58_crit_edge, %entry.do.body58_crit_edge
  %xfer.0.lcssa = phi i32 [ 0, %entry.do.body58_crit_edge ], [ %xfer.0143, %land.rhs.do.body58_crit_edge ], [ %xfer.1.lcssa, %for.inc55.do.body58_crit_edge ]
  %star.1.lcssa = phi i32 [ %10, %entry.do.body58_crit_edge ], [ %star.1144, %land.rhs.do.body58_crit_edge ], [ %star.2.lcssa, %for.inc55.do.body58_crit_edge ]
  %addr.0.lcssa = phi i32 [ -1, %entry.do.body58_crit_edge ], [ %addr.0146, %land.rhs.do.body58_crit_edge ], [ %addr.1.lcssa, %for.inc55.do.body58_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !571
  tail call void @arm_heavy_mb() #14
  %dec61 = shl i32 %xfer.0.lcssa, 26
  %shl62 = add i32 %dec61, -67108864
  %or63 = or i32 %addr.0.lcssa, %shl62
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %26, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %or63) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !572
  tail call void @arm_heavy_mb() #14
  %add70 = add i32 %starstar, 16777220
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %28, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %add70) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !573
  tail call void @arm_heavy_mb() #14
  %add77 = add i32 %star.1.lcssa, 4
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr80 = getelementptr i8, ptr %30, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %add77) #14, !srcloc !437
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gf100_gr_dtor(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %data = getelementptr i8, ptr %base, i32 11588
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #14
  %gpccs = getelementptr i8, ptr %base, i32 768
  tail call void @nvkm_falcon_dtor(ptr noundef %gpccs) #14
  %fecs = getelementptr i8, ptr %base, i32 204
  tail call void @nvkm_falcon_dtor(ptr noundef %fecs) #14
  %inst = getelementptr i8, ptr %base, i32 656
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst, align 4
  tail call void @kfree(ptr noundef %3) #14
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inst, align 4
  %size.i = getelementptr i8, ptr %base, i32 660
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %size.i, align 4
  %data4 = getelementptr i8, ptr %base, i32 664
  %6 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data4, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data4, align 4
  %size.i20 = getelementptr i8, ptr %base, i32 668
  %9 = ptrtoint ptr %size.i20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %size.i20, align 4
  %inst6 = getelementptr i8, ptr %base, i32 1220
  %10 = ptrtoint ptr %inst6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inst6, align 4
  tail call void @kfree(ptr noundef %11) #14
  %12 = ptrtoint ptr %inst6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %inst6, align 4
  %size.i21 = getelementptr i8, ptr %base, i32 1224
  %13 = ptrtoint ptr %size.i21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %size.i21, align 4
  %data8 = getelementptr i8, ptr %base, i32 1228
  %14 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data8, align 4
  tail call void @kfree(ptr noundef %15) #14
  %16 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %data8, align 4
  %size.i22 = getelementptr i8, ptr %base, i32 1232
  %17 = ptrtoint ptr %size.i22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %size.i22, align 4
  %bundle = getelementptr i8, ptr %base, i32 1248
  %18 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bundle, align 4
  tail call void @vfree(ptr noundef %19) #14
  %method = getelementptr i8, ptr %base, i32 1252
  %20 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %method, align 4
  tail call void @vfree(ptr noundef %21) #14
  %sw_ctx = getelementptr i8, ptr %base, i32 1244
  %22 = ptrtoint ptr %sw_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw_ctx, align 4
  tail call void @vfree(ptr noundef %23) #14
  %sw_nonctx = getelementptr i8, ptr %base, i32 1240
  %24 = ptrtoint ptr %sw_nonctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw_nonctx, align 4
  tail call void @vfree(ptr noundef %25) #14
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_oneinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pmu = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  tail call void @nvkm_pmu_pgob(ptr noundef %3, i1 noundef zeroext false) #14
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %rops = getelementptr inbounds %struct.gf100_gr_func, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %rops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rops, align 4
  %call = tail call i32 %7(ptr noundef %add.ptr) #14
  %conv = trunc i32 %call to i8
  %rop_nr = getelementptr i8, ptr %base, i32 2216
  %8 = ptrtoint ptr %rop_nr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %rop_nr, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 4232708
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !574
  %12 = trunc i32 %11 to i8
  %conv7 = and i8 %12, 31
  %gpc_nr = getelementptr i8, ptr %base, i32 2217
  %13 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %cmp303.not = icmp eq i8 %conv7, 0
  br i1 %cmp303.not, label %entry.for.end198_crit_edge, label %for.body.lr.ph

entry.for.end198_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end198

for.body.lr.ph:                                   ; preds = %entry
  %tpc_nr = getelementptr i8, ptr %base, i32 2218
  %tpc_max = getelementptr i8, ptr %base, i32 2250
  %tpc_total = getelementptr i8, ptr %base, i32 2251
  %ppc_nr37 = getelementptr i8, ptr %base, i32 2252
  %ppc_tpc_mask = getelementptr i8, ptr %base, i32 2316
  %ppc_mask = getelementptr i8, ptr %base, i32 2284
  %ppc_tpc_nr = getelementptr i8, ptr %base, i32 2444
  %ppc_tpc_min = getelementptr i8, ptr %base, i32 2572
  %ppc_tpc_max = getelementptr i8, ptr %base, i32 2573
  br label %for.body

for.body:                                         ; preds = %for.inc196.for.body_crit_edge, %for.body.lr.ph
  %i.0304 = phi i32 [ 0, %for.body.lr.ph ], [ %inc197, %for.inc196.for.body_crit_edge ]
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.0304, 15
  %add13 = add nuw nsw i32 %mul, 5252616
  %add.ptr14 = getelementptr i8, ptr %15, i32 %add13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !575
  %conv17 = trunc i32 %16 to i8
  %arrayidx = getelementptr [32 x i8], ptr %tpc_nr, i32 0, i32 %i.0304
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv17, ptr %arrayidx, align 1
  %18 = ptrtoint ptr %tpc_max to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tpc_max, align 2
  %conv21 = zext i8 %19 to i32
  %conv22 = and i32 %16, 255
  %20 = tail call i32 @llvm.umax.i32(i32 %conv22, i32 %conv21)
  %conv27 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %tpc_max to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv27, ptr %tpc_max, align 2
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %24 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tpc_total, align 1
  %add33 = add i8 %25, %23
  store i8 %add33, ptr %tpc_total, align 1
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %ppc_nr = getelementptr inbounds %struct.gf100_gr_func, ptr %27, i32 0, i32 35
  %28 = ptrtoint ptr %ppc_nr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ppc_nr, align 4
  %conv36 = trunc i32 %29 to i8
  %arrayidx38 = getelementptr [32 x i8], ptr %ppc_nr37, i32 0, i32 %i.0304
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv36, ptr %arrayidx38, align 1
  %conv42299 = and i32 %29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42299)
  %cmp43300.not = icmp eq i32 %conv42299, 0
  br i1 %cmp43300.not, label %for.body.for.inc196_crit_edge, label %for.body45.lr.ph

for.body.for.inc196_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc196

for.body45.lr.ph:                                 ; preds = %for.body
  %add51 = add nuw nsw i32 %mul, 5246000
  %arrayidx57 = getelementptr [32 x [4 x i8]], ptr %ppc_tpc_mask, i32 0, i32 %i.0304
  %arrayidx65 = getelementptr [32 x i8], ptr %ppc_mask, i32 0, i32 %i.0304
  %arrayidx164 = getelementptr [32 x [4 x i8]], ptr %ppc_tpc_nr, i32 0, i32 %i.0304
  br label %for.body45

for.body45:                                       ; preds = %for.inc.for.body45_crit_edge, %for.body45.lr.ph
  %j.0301 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc, %for.inc.for.body45_crit_edge ]
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %mul50 = shl i32 %j.0301, 2
  %add52 = add nuw nsw i32 %add51, %mul50
  %add.ptr53 = getelementptr i8, ptr %32, i32 %add52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !576
  %conv56 = trunc i32 %33 to i8
  %arrayidx58 = getelementptr [4 x i8], ptr %arrayidx57, i32 0, i32 %j.0301
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv56, ptr %arrayidx58, align 1
  %conv62 = and i32 %33, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv62)
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %for.body45.for.inc_crit_edge, label %if.end

for.body45.for.inc_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body45
  %shl = shl nuw i32 1, %j.0301
  %35 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx65, align 1
  %37 = trunc i32 %shl to i8
  %conv67 = or i8 %36, %37
  store i8 %conv67, ptr %arrayidx65, align 1
  %38 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx58, align 1
  %conv159 = zext i8 %39 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv159) #14
  %conv163 = trunc i32 %call.i to i8
  %arrayidx165 = getelementptr [4 x i8], ptr %arrayidx164, i32 0, i32 %j.0301
  %40 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv163, ptr %arrayidx165, align 1
  %41 = ptrtoint ptr %ppc_tpc_min to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ppc_tpc_min, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp167 = icmp eq i8 %42, 0
  %conv166 = zext i8 %42 to i32
  %conv174 = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv174, i32 %conv166)
  %cmp175 = icmp ult i32 %conv174, %conv166
  %or.cond = select i1 %cmp167, i1 true, i1 %cmp175
  br i1 %or.cond, label %if.then177, label %if.end.if.end182_crit_edge

if.end.if.end182_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then177:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %ppc_tpc_min to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv163, ptr %ppc_tpc_min, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.end.if.end182_crit_edge
  %44 = ptrtoint ptr %ppc_tpc_max to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ppc_tpc_max, align 1
  %46 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx165, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp188 = icmp ult i8 %45, %47
  br i1 %cmp188, label %if.then190, label %if.end182.for.inc_crit_edge

if.end182.for.inc_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then190:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %ppc_tpc_max to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ppc_tpc_max, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then190, %if.end182.for.inc_crit_edge, %for.body45.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0301, 1
  %49 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx38, align 1
  %conv42 = zext i8 %50 to i32
  %cmp43 = icmp ult i32 %inc, %conv42
  br i1 %cmp43, label %for.inc.for.body45_crit_edge, label %for.inc.for.inc196_crit_edge

for.inc.for.inc196_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc196

for.inc.for.body45_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body45

for.inc196:                                       ; preds = %for.inc.for.inc196_crit_edge, %for.body.for.inc196_crit_edge
  %inc197 = add nuw nsw i32 %i.0304, 1
  %51 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %gpc_nr, align 1
  %conv9 = zext i8 %52 to i32
  %cmp = icmp ult i32 %inc197, %conv9
  br i1 %cmp, label %for.inc196.for.body_crit_edge, label %for.inc196.for.end198_crit_edge

for.inc196.for.end198_crit_edge:                  ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end198

for.inc196.for.body_crit_edge:                    ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end198:                                       ; preds = %for.inc196.for.end198_crit_edge, %entry.for.end198_crit_edge
  %tile = getelementptr i8, ptr %base, i32 2575
  %53 = call ptr @memset(ptr %tile, i32 255, i32 256)
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call void %57(ptr noundef %add.ptr) #14
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %oneinit_sm_id = getelementptr inbounds %struct.gf100_gr_func, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %oneinit_sm_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %oneinit_sm_id, align 4
  tail call void %61(ptr noundef %add.ptr) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_init_(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %subdev1 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 4
  %4 = add i32 %3, -311
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfgopt, align 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %7, ptr noundef nonnull @.str.63, i1 noundef zeroext %5) #14
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !578
  tail call void @arm_heavy_mb() #14
  %and = and i32 %10, -4097
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %and) #14, !srcloc !437
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 512
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !579
  tail call void @msleep(i32 noundef 50) #14
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 512
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !580
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !581
  tail call void @arm_heavy_mb() #14
  %or30 = or i32 %18, 4096
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr32 = getelementptr i8, ptr %20, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %or30) #14, !srcloc !437
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %22, i32 512
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !582
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device2, align 4
  %pmu = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmu, align 8
  tail call void @nvkm_pmu_pgob(ptr noundef %27, i1 noundef zeroext false) #14
  %fecs = getelementptr i8, ptr %base, i32 204
  %call43 = tail call i32 @nvkm_falcon_get(ptr noundef %fecs, ptr noundef %subdev1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end46:                                         ; preds = %if.end
  %gpccs = getelementptr i8, ptr %base, i32 768
  %call48 = tail call i32 @nvkm_falcon_get(ptr noundef %gpccs, ptr noundef %subdev1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.gf100_gr_func, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init, align 4
  %call52 = tail call i32 %31(ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end46.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %if.end51 ], [ %call43, %if.end.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_fini(ptr noundef %base, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1
  %gpccs = getelementptr i8, ptr %base, i32 768
  tail call void @nvkm_falcon_put(ptr noundef %gpccs, ptr noundef %subdev2) #14
  %fecs = getelementptr i8, ptr %base, i32 204
  tail call void @nvkm_falcon_put(ptr noundef %fecs, ptr noundef %subdev2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_gr_intr(ptr noundef %base) #0 align 64 {
entry:
  %error.i.i.i = alloca [128 x i8], align 1
  %error.i = alloca [128 x i8], align 1
  %chan = alloca ptr, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !565
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 4233984
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !583
  %and = and i32 %5, 268435455
  %conv = zext i32 %and to i64
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 4194560
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !584
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 4196100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !585
  %and16 = and i32 %11, 16380
  %and17 = lshr i32 %11, 16
  %shr = and i32 %and17, 7
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 4196104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !586
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 4194576
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !587
  %fifo = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %18 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fifo, align 8
  %shl = shl nuw nsw i64 %conv, 12
  %call28 = call ptr @nvkm_fifo_chan_inst(ptr noundef %19, i64 noundef %shl, ptr noundef nonnull %flags) #14
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call28, ptr %chan, align 4
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call28, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %name29 = getelementptr inbounds %struct.nvkm_client, ptr %22, i32 0, i32 1
  %chid30 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call28, i32 0, i32 5
  %23 = ptrtoint ptr %chid30 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %chid30, align 8
  %conv31 = zext i16 %24 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name.0 = phi ptr [ %name29, %if.then ], [ @.str.64, %entry.if.end_crit_edge ]
  %chid.0 = phi i32 [ %conv31, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %26)
  %cmp = icmp ult i32 %26, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp33 = icmp ult i32 %shr, 4
  %or.cond = select i1 %cmp, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.then35, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %shr, 2
  %add = or i32 %mul, 4211200
  %add.ptr38 = getelementptr i8, ptr %28, i32 %add
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !588
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end.if.end41_crit_edge
  %class.0 = phi i32 [ %29, %if.then35 ], [ 0, %if.end.if.end41_crit_edge ]
  %and42 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end48_crit_edge, label %do.body

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.body:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !589
  call void @arm_heavy_mb() #14
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %31, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 1) #14, !srcloc !437
  %and47 = and i32 %8, -2
  br label %if.end48

if.end48:                                         ; preds = %do.body, %if.end41.if.end48_crit_edge
  %stat.0 = phi i32 [ %and47, %do.body ], [ %8, %if.end41.if.end48_crit_edge ]
  %and49 = and i32 %stat.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end76_crit_edge, label %if.then51

if.end48.if.end76_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then51:                                        ; preds = %if.end48
  %trunc.i = trunc i32 %class.0 to i8
  %32 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %trunc.i, label %if.then51.do.body55_crit_edge [
    i8 -105, label %if.then51.sw.bb.i_crit_edge
    i8 -64, label %if.then51.sw.bb.i_crit_edge297
  ]

if.then51.sw.bb.i_crit_edge297:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then51.sw.bb.i_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.then51.do.body55_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

sw.bb.i:                                          ; preds = %if.then51.sw.bb.i_crit_edge, %if.then51.sw.bb.i_crit_edge297
  call void @__sanitizer_cov_trace_const_cmp4(i32 5416, i32 %and16)
  %cond.i = icmp eq i32 %and16, 5416
  br i1 %cond.i, label %gf100_gr_mthd_sw.exit, label %sw.bb.i.do.body55_crit_edge

sw.bb.i.do.body55_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

gf100_gr_mthd_sw.exit:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !590
  call void @arm_heavy_mb() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp ne i32 %14, 0
  %cond.i.i = sext i1 %tobool.not.i.i to i32
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4300356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %cond.i.i) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !591
  call void @arm_heavy_mb() #14
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %36, i32 4300364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %cond.i.i) #14, !srcloc !437
  br label %do.body70

do.body55:                                        ; preds = %sw.bb.i.do.body55_crit_edge, %if.then51.do.body55_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %37 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp56.not = icmp eq i32 %38, 0
  br i1 %cmp56.not, label %do.body55.do.body70_crit_edge, label %do.end61

do.body55.do.body70_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body70

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %name63 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.65, ptr noundef %name63, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0, i32 noundef %shr, i32 noundef %class.0, i32 noundef %and16, i32 noundef %14) #17
  br label %do.body70

do.body70:                                        ; preds = %do.end61, %do.body55.do.body70_crit_edge, %gf100_gr_mthd_sw.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !592
  call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %44, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 16) #14, !srcloc !437
  %and75 = and i32 %stat.0, -17
  br label %if.end76

if.end76:                                         ; preds = %do.body70, %if.end48.if.end76_crit_edge
  %stat.1 = phi i32 [ %and75, %do.body70 ], [ %stat.0, %if.end48.if.end76_crit_edge ]
  %and77 = and i32 %stat.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end103_crit_edge, label %do.body80

if.end76.if.end103_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

do.body80:                                        ; preds = %if.end76
  %debug82 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %45 = ptrtoint ptr %debug82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp83.not = icmp eq i32 %46, 0
  br i1 %cmp83.not, label %do.body80.if.end94_crit_edge, label %do.end88

do.body80.if.end94_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

do.end88:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device3, align 4
  %dev90 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev90, align 8
  %name91 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.68, ptr noundef %name91, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0, i32 noundef %shr, i32 noundef %class.0, i32 noundef %and16, i32 noundef %14) #17
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %do.body80.if.end94_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !593
  call void @arm_heavy_mb() #14
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr101 = getelementptr i8, ptr %52, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 32) #14, !srcloc !437
  %and102 = and i32 %stat.1, -33
  br label %if.end103

if.end103:                                        ; preds = %if.end94, %if.end76.if.end103_crit_edge
  %stat.2 = phi i32 [ %and102, %if.end94 ], [ %stat.1, %if.end76.if.end103_crit_edge ]
  %and104 = and i32 %stat.2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end133_crit_edge, label %if.then106

if.end103.if.end133_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then106:                                       ; preds = %if.end103
  %call107 = call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_data_error_names, i32 noundef %17) #14
  %debug110 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %53 = ptrtoint ptr %debug110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp111.not = icmp eq i32 %54, 0
  br i1 %cmp111.not, label %if.then106.if.end124_crit_edge, label %do.end116

if.then106.if.end124_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

do.end116:                                        ; preds = %if.then106
  %55 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device3, align 4
  %dev118 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev118, align 8
  %name119 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  %tobool121.not = icmp eq ptr %call107, null
  br i1 %tobool121.not, label %do.end116.cond.end_crit_edge, label %cond.true

do.end116.cond.end_crit_edge:                     ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #16
  %name122 = getelementptr inbounds %struct.nvkm_enum, ptr %call107, i32 0, i32 1
  %59 = ptrtoint ptr %name122 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name122, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end116.cond.end_crit_edge
  %cond = phi ptr [ %60, %cond.true ], [ @.str.39, %do.end116.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.71, ptr noundef %name119, i32 noundef %17, ptr noundef %cond, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0, i32 noundef %shr, i32 noundef %class.0, i32 noundef %and16, i32 noundef %14) #17
  br label %if.end124

if.end124:                                        ; preds = %cond.end, %if.then106.if.end124_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !594
  call void @arm_heavy_mb() #14
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add.ptr131 = getelementptr i8, ptr %62, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 1048576) #14, !srcloc !437
  %and132 = and i32 %stat.2, -1048577
  br label %if.end133

if.end133:                                        ; preds = %if.end124, %if.end103.if.end133_crit_edge
  %stat.3 = phi i32 [ %and132, %if.end124 ], [ %stat.2, %if.end103.if.end133_crit_edge ]
  %and134 = and i32 %stat.3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end160_crit_edge, label %do.body137

if.end133.if.end160_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

do.body137:                                       ; preds = %if.end133
  %debug139 = getelementptr %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %63 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp140.not = icmp eq i32 %64, 0
  br i1 %cmp140.not, label %do.body137.if.end151_crit_edge, label %do.end145

do.body137.if.end151_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151

do.end145:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device3, align 4
  %dev147 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev147, align 8
  %name148 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.74, ptr noundef %name148, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0) #17
  br label %if.end151

if.end151:                                        ; preds = %do.end145, %do.body137.if.end151_crit_edge
  %69 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %error.i) #14
  %71 = call ptr @memset(ptr %error.i, i32 255, i32 128)
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 11
  %72 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %73, i32 4194568
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !595
  %and.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end151.if.end27.i_crit_edge, label %if.then.i

if.end151.if.end27.i_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then.i:                                        ; preds = %if.end151
  %75 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %76, i32 4210688
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !596
  %and8.i = and i32 %77, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i, i32 noundef 128, ptr noundef nonnull @gf100_dispatch_error, i32 noundef %and8.i) #14
  %78 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.not.i = icmp eq i32 %79, 0
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.79, ptr noundef %name.i, i32 noundef %77, ptr noundef nonnull %error.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !597
  call void @arm_heavy_mb() #14
  %84 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %85, i32 4210688
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !598
  call void @arm_heavy_mb() #14
  %86 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %87, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 1) #14, !srcloc !437
  %and26.i = and i32 %74, -2
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i, %if.end151.if.end27.i_crit_edge
  %trap.0.i = phi i32 [ %and26.i, %if.end.i ], [ %74, %if.end151.if.end27.i_crit_edge ]
  %and28.i = and i32 %trap.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end66.i_crit_edge, label %if.then30.i

if.end27.i.if.end66.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

if.then30.i:                                      ; preds = %if.end27.i
  %88 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %89, i32 4212224
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !599
  %and38.i = and i32 %90, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i, i32 noundef 128, ptr noundef nonnull @gf100_m2mf_error, i32 noundef %and38.i) #14
  %91 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp42.not.i = icmp eq i32 %92, 0
  br i1 %cmp42.not.i, label %if.then30.i.if.end52.i_crit_edge, label %do.end46.i

if.then30.i.if.end52.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i

do.end46.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device3, align 4
  %dev48.i = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev48.i, align 8
  %name49.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.82, ptr noundef %name49.i, i32 noundef %90, ptr noundef nonnull %error.i) #17
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %if.then30.i.if.end52.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !600
  call void @arm_heavy_mb() #14
  %97 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %98, i32 4212224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !601
  call void @arm_heavy_mb() #14
  %99 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %100, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 2) #14, !srcloc !437
  %and65.i = and i32 %trap.0.i, -3
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end52.i, %if.end27.i.if.end66.i_crit_edge
  %trap.1.i = phi i32 [ %and65.i, %if.end52.i ], [ %trap.0.i, %if.end27.i.if.end66.i_crit_edge ]
  %and67.i = and i32 %trap.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end66.i.if.end105.i_crit_edge, label %if.then69.i

if.end66.i.if.end105.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i

if.then69.i:                                      ; preds = %if.end66.i
  %101 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %102, i32 4227120
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !602
  %and77.i = and i32 %103, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i, i32 noundef 128, ptr noundef nonnull @gf100_ccache_error, i32 noundef %and77.i) #14
  %104 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp81.not.i = icmp eq i32 %105, 0
  br i1 %cmp81.not.i, label %if.then69.i.if.end91.i_crit_edge, label %do.end85.i

if.then69.i.if.end91.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91.i

do.end85.i:                                       ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #16
  %106 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device3, align 4
  %dev87.i = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev87.i, align 8
  %name88.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.85, ptr noundef %name88.i, i32 noundef %103, ptr noundef nonnull %error.i) #17
  br label %if.end91.i

if.end91.i:                                       ; preds = %do.end85.i, %if.then69.i.if.end91.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !603
  call void @arm_heavy_mb() #14
  %110 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %111, i32 4227120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !604
  call void @arm_heavy_mb() #14
  %112 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri.i, align 4
  %add.ptr103.i = getelementptr i8, ptr %113, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103.i, i32 8) #14, !srcloc !437
  %and104.i = and i32 %trap.1.i, -9
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end91.i, %if.end66.i.if.end105.i_crit_edge
  %trap.2.i = phi i32 [ %and104.i, %if.end91.i ], [ %trap.1.i, %if.end66.i.if.end105.i_crit_edge ]
  %and106.i = and i32 %trap.2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.end105.i.if.end143.i_crit_edge, label %if.then108.i

if.end105.i.if.end143.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.then108.i:                                     ; preds = %if.end105.i
  %114 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri.i, align 4
  %add.ptr112.i = getelementptr i8, ptr %115, i32 4216896
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !605
  %117 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp118.not.i = icmp eq i32 %118, 0
  br i1 %cmp118.not.i, label %if.then108.i.if.end129.i_crit_edge, label %do.end122.i

if.then108.i.if.end129.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129.i

do.end122.i:                                      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device3, align 4
  %dev124.i = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %dev124.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev124.i, align 8
  %name125.i = getelementptr i8, ptr %base, i32 24
  %and127.i = and i32 %116, 16777215
  %shr.i = lshr i32 %116, 24
  %and128.i = and i32 %shr.i, 63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.88, ptr noundef %name125.i, i32 noundef %116, i32 noundef %and127.i, i32 noundef %and128.i) #17
  br label %if.end129.i

if.end129.i:                                      ; preds = %do.end122.i, %if.then108.i.if.end129.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !606
  call void @arm_heavy_mb() #14
  %123 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pri.i, align 4
  %add.ptr136.i = getelementptr i8, ptr %124, i32 4216896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !607
  call void @arm_heavy_mb() #14
  %125 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pri.i, align 4
  %add.ptr141.i = getelementptr i8, ptr %126, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141.i, i32 16) #14, !srcloc !437
  %and142.i = and i32 %trap.2.i, -17
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.end129.i, %if.end105.i.if.end143.i_crit_edge
  %trap.3.i = phi i32 [ %and142.i, %if.end129.i ], [ %trap.2.i, %if.end105.i.if.end143.i_crit_edge ]
  %and144.i = and i32 %trap.3.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i)
  %tobool145.not.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.not.i, label %if.end143.i.if.end182.i_crit_edge, label %if.then146.i

if.end143.i.if.end182.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.i

if.then146.i:                                     ; preds = %if.end143.i
  %127 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri.i, align 4
  %add.ptr150.i = getelementptr i8, ptr %128, i32 4218908
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !608
  %and154.i = and i32 %129, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i, i32 noundef 128, ptr noundef nonnull @gf100_unk6_error, i32 noundef %and154.i) #14
  %130 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp158.not.i = icmp eq i32 %131, 0
  br i1 %cmp158.not.i, label %if.then146.i.if.end168.i_crit_edge, label %do.end162.i

if.then146.i.if.end168.i_crit_edge:               ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i

do.end162.i:                                      ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device3, align 4
  %dev164.i = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %dev164.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev164.i, align 8
  %name165.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.91, ptr noundef %name165.i, i32 noundef %129, ptr noundef nonnull %error.i) #17
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end162.i, %if.then146.i.if.end168.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !609
  call void @arm_heavy_mb() #14
  %136 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri.i, align 4
  %add.ptr175.i = getelementptr i8, ptr %137, i32 4218908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !610
  call void @arm_heavy_mb() #14
  %138 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pri.i, align 4
  %add.ptr180.i = getelementptr i8, ptr %139, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180.i, i32 64) #14, !srcloc !437
  %and181.i = and i32 %trap.3.i, -65
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.end168.i, %if.end143.i.if.end182.i_crit_edge
  %trap.4.i = phi i32 [ %and181.i, %if.end168.i ], [ %trap.3.i, %if.end143.i.if.end182.i_crit_edge ]
  %and183.i = and i32 %trap.4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %if.end182.i.if.end234.i_crit_edge, label %if.then185.i

if.end182.i.if.end234.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234.i

if.then185.i:                                     ; preds = %if.end182.i
  %140 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pri.i, align 4
  %add.ptr189.i = getelementptr i8, ptr %141, i32 4211856
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !611
  %143 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pri.i, align 4
  %add.ptr194.i = getelementptr i8, ptr %144, i32 4211860
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !612
  %146 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri.i, align 4
  %add.ptr199.i = getelementptr i8, ptr %147, i32 4211868
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !613
  %and203.i = and i32 %142, 536870911
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i, i32 noundef 128, ptr noundef nonnull @gf100_macro_error, i32 noundef %and203.i) #14
  %149 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp207.not.i = icmp eq i32 %150, 0
  br i1 %cmp207.not.i, label %if.then185.i.if.end220.i_crit_edge, label %do.end211.i

if.then185.i.if.end220.i_crit_edge:               ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i

do.end211.i:                                      ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #16
  %151 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device3, align 4
  %dev213.i = getelementptr inbounds %struct.nvkm_device, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %dev213.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev213.i, align 8
  %name214.i = getelementptr i8, ptr %base, i32 24
  %and217.i = and i32 %145, 2047
  %and218.i = and i32 %145, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  %cond.i275 = select i1 %tobool219.not.i, ptr @.str.96, ptr @.str.39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.94, ptr noundef %name214.i, i32 noundef %142, ptr noundef nonnull %error.i, i32 noundef %and217.i, ptr noundef nonnull %cond.i275, i32 noundef %148) #17
  br label %if.end220.i

if.end220.i:                                      ; preds = %do.end211.i, %if.then185.i.if.end220.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !614
  call void @arm_heavy_mb() #14
  %155 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pri.i, align 4
  %add.ptr227.i = getelementptr i8, ptr %156, i32 4211856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !615
  call void @arm_heavy_mb() #14
  %157 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri.i, align 4
  %add.ptr232.i = getelementptr i8, ptr %158, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232.i, i32 128) #14, !srcloc !437
  %and233.i = and i32 %trap.4.i, -129
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.end220.i, %if.end182.i.if.end234.i_crit_edge
  %trap.5.i = phi i32 [ %and233.i, %if.end220.i ], [ %trap.4.i, %if.end182.i.if.end234.i_crit_edge ]
  %and235.i = and i32 %trap.5.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235.i)
  %tobool236.not.i = icmp eq i32 %and235.i, 0
  br i1 %tobool236.not.i, label %if.end234.i.if.end276.i_crit_edge, label %if.then237.i

if.end234.i.if.end276.i_crit_edge:                ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end276.i

if.then237.i:                                     ; preds = %if.end234.i
  %159 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pri.i, align 4
  %add.ptr241.i = getelementptr i8, ptr %160, i32 4223008
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !616
  %and244.i = and i32 %161, 1073741823
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i, i32 noundef 128, ptr noundef nonnull @gk104_sked_error, i32 noundef %and244.i) #14
  %162 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp249.not.i = icmp eq i32 %163, 0
  br i1 %cmp249.not.i, label %if.then237.i.if.end259.i_crit_edge, label %do.end253.i

if.then237.i.if.end259.i_crit_edge:               ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end259.i

do.end253.i:                                      ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #16
  %164 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device3, align 4
  %dev255.i = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %dev255.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev255.i, align 8
  %name256.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.98, ptr noundef %name256.i, i32 noundef %and244.i, ptr noundef nonnull %error.i) #17
  br label %if.end259.i

if.end259.i:                                      ; preds = %do.end253.i, %if.then237.i.if.end259.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool262.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool262.not.i, label %if.end259.i.do.body270.i_crit_edge, label %do.body264.i

if.end259.i.do.body270.i_crit_edge:               ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body270.i

do.body264.i:                                     ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !617
  call void @arm_heavy_mb() #14
  %168 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pri.i, align 4
  %add.ptr268.i = getelementptr i8, ptr %169, i32 4223008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268.i, i32 1073741824) #14, !srcloc !437
  br label %do.body270.i

do.body270.i:                                     ; preds = %do.body264.i, %if.end259.i.do.body270.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !618
  call void @arm_heavy_mb() #14
  %170 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pri.i, align 4
  %add.ptr274.i = getelementptr i8, ptr %171, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274.i, i32 256) #14, !srcloc !437
  %and275.i = and i32 %trap.5.i, -257
  br label %if.end276.i

if.end276.i:                                      ; preds = %do.body270.i, %if.end234.i.if.end276.i_crit_edge
  %trap.6.i = phi i32 [ %and275.i, %do.body270.i ], [ %trap.5.i, %if.end234.i.if.end276.i_crit_edge ]
  %and277.i = and i32 %trap.6.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277.i)
  %tobool278.not.i = icmp eq i32 %and277.i, 0
  br i1 %tobool278.not.i, label %if.end276.i.if.end305.i_crit_edge, label %if.then279.i

if.end276.i.if.end305.i_crit_edge:                ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end305.i

if.then279.i:                                     ; preds = %if.end276.i
  %172 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri.i, align 4
  %add.ptr283.i = getelementptr i8, ptr %173, i32 4194584
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr283.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !619
  %gpc_nr.i = getelementptr i8, ptr %base, i32 2217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool286.not499.i = icmp eq i32 %174, 0
  br i1 %tobool286.not499.i, label %if.then279.i.do.body299.i_crit_edge, label %land.rhs.lr.ph.i

if.then279.i.do.body299.i_crit_edge:              ; preds = %if.then279.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body299.i

land.rhs.lr.ph.i:                                 ; preds = %if.then279.i
  %name.i.i.i = getelementptr i8, ptr %base, i32 24
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end298.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %gpc.0501.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %if.end298.i.land.rhs.i_crit_edge ]
  %stat280.0500.i = phi i32 [ %174, %land.rhs.lr.ph.i ], [ %stat280.1.i, %if.end298.i.land.rhs.i_crit_edge ]
  %175 = ptrtoint ptr %gpc_nr.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %gpc_nr.i, align 1
  %conv.i = zext i8 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %gpc.0501.i, i32 %conv.i)
  %cmp287.i = icmp ult i32 %gpc.0501.i, %conv.i
  br i1 %cmp287.i, label %for.body.i, label %land.rhs.i.do.body299.i_crit_edge

land.rhs.i.do.body299.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body299.i

for.body.i:                                       ; preds = %land.rhs.i
  %shl.i = shl nuw i32 1, %gpc.0501.i
  %and289.i = and i32 %shl.i, %stat280.0500.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289.i)
  %tobool290.not.i = icmp eq i32 %and289.i, 0
  br i1 %tobool290.not.i, label %for.body.i.if.end298.i_crit_edge, label %if.then291.i

for.body.i.if.end298.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end298.i

if.then291.i:                                     ; preds = %for.body.i
  %177 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %device3, align 4
  %pri.i.i276 = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 11
  %179 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pri.i.i276, align 4
  %mul.i.i = shl i32 %gpc.0501.i, 15
  %add3.i.i = add nuw nsw i32 %mul.i.i, 5254288
  %add.ptr.i.i277 = getelementptr i8, ptr %180, i32 %add3.i.i
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i277) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !620
  %and.i.i = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i278 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i278, label %if.then291.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then291.i.if.end.i.i_crit_edge:                ; preds = %if.then291.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then291.i
  %182 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %error.i.i.i) #14
  %184 = call ptr @memset(ptr %error.i.i.i, i32 255, i32 128)
  %pri.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %183, i32 0, i32 11
  %185 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pri.i.i.i, align 4
  %add3.i.i.i = add nuw nsw i32 %mul.i.i, 5243936
  %add.ptr.i.i.i = getelementptr i8, ptr %186, i32 %add3.i.i.i
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !621
  %and.i.i.i = and i32 %187, 1073741823
  %188 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri.i.i.i, align 4
  %add8.i.i.i = add nuw nsw i32 %mul.i.i, 5243956
  %add.ptr9.i.i.i = getelementptr i8, ptr %189, i32 %add8.i.i.i
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !622
  %191 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pri.i.i.i, align 4
  %add17.i.i.i = add nuw nsw i32 %mul.i.i, 5243960
  %add.ptr18.i.i.i = getelementptr i8, ptr %192, i32 %add17.i.i.i
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !623
  %194 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri.i.i.i, align 4
  %add26.i.i.i = add nuw nsw i32 %mul.i.i, 5243964
  %add.ptr27.i.i.i = getelementptr i8, ptr %195, i32 %add26.i.i.i
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !624
  call void @nvkm_snprintbf(ptr noundef nonnull %error.i.i.i, i32 noundef 128, ptr noundef nonnull @gf100_gpc_rop_error, i32 noundef %and.i.i.i) #14
  %197 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp.not.i.i.i = icmp eq i32 %198, 0
  br i1 %cmp.not.i.i.i, label %if.then.i.i.gf100_gr_trap_gpc_rop.exit.i.i_crit_edge, label %do.end.i.i.i

if.then.i.i.gf100_gr_trap_gpc_rop.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_trap_gpc_rop.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %199 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %device3, align 4
  %dev.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i.i.i, align 8
  %and38.i.i.i = and i32 %190, 65535
  %shr.i.i.i = lshr i32 %190, 16
  %shr41.i.i.i = lshr i32 %193, 8
  %and42.i.i.i = and i32 %shr41.i.i.i, 63
  %and44.i.i.i = and i32 %196, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.144, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %and.i.i.i, ptr noundef nonnull %error.i.i.i, i32 noundef %and38.i.i.i, i32 noundef %shr.i.i.i, i32 noundef %and42.i.i.i, i32 noundef %and44.i.i.i) #17
  br label %gf100_gr_trap_gpc_rop.exit.i.i

gf100_gr_trap_gpc_rop.exit.i.i:                   ; preds = %do.end.i.i.i, %if.then.i.i.gf100_gr_trap_gpc_rop.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !625
  call void @arm_heavy_mb() #14
  %203 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr54.i.i.i = getelementptr i8, ptr %204, i32 %add3.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i.i.i, i32 -1073741824) #14, !srcloc !437
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %error.i.i.i) #14
  %and4.i.i = and i32 %181, -2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %gf100_gr_trap_gpc_rop.exit.i.i, %if.then291.i.if.end.i.i_crit_edge
  %stat.0.i.i = phi i32 [ %and4.i.i, %gf100_gr_trap_gpc_rop.exit.i.i ], [ %181, %if.then291.i.if.end.i.i_crit_edge ]
  %and5.i.i = and i32 %stat.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end31.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end31.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %205 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pri.i.i276, align 4
  %add12.i.i = add nuw nsw i32 %mul.i.i, 5245184
  %add.ptr13.i.i = getelementptr i8, ptr %206, i32 %add12.i.i
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !626
  %208 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp.not.i.i = icmp eq i32 %209, 0
  br i1 %cmp.not.i.i, label %if.then7.i.i.if.end19.i.i_crit_edge, label %do.end.i.i

if.then7.i.i.if.end19.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i.i

do.end.i.i:                                       ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %device3, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.133, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %207) #17
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %do.end.i.i, %if.then7.i.i.if.end19.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !627
  call void @arm_heavy_mb() #14
  %214 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pri.i.i276, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %215, i32 %add12.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 -1073741824) #14, !srcloc !437
  %and30.i.i = and i32 %stat.0.i.i, -3
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.end19.i.i, %if.end.i.i.if.end31.i.i_crit_edge
  %stat.1.i.i = phi i32 [ %and30.i.i, %if.end19.i.i ], [ %stat.0.i.i, %if.end.i.i.if.end31.i.i_crit_edge ]
  %and32.i.i = and i32 %stat.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end31.i.i.if.end68.i.i_crit_edge, label %if.then34.i.i

if.end31.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  %216 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pri.i.i276, align 4
  %add40.i.i = add nuw nsw i32 %mul.i.i, 5247016
  %add.ptr41.i.i = getelementptr i8, ptr %217, i32 %add40.i.i
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !628
  %219 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp47.not.i.i = icmp eq i32 %220, 0
  br i1 %cmp47.not.i.i, label %if.then34.i.i.if.end56.i.i_crit_edge, label %do.end51.i.i

if.then34.i.i.if.end56.i.i_crit_edge:             ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.i.i

do.end51.i.i:                                     ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %221 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %device3, align 4
  %dev53.i.i = getelementptr inbounds %struct.nvkm_device, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %dev53.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev53.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.136, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %218) #17
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %do.end51.i.i, %if.then34.i.i.if.end56.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !629
  call void @arm_heavy_mb() #14
  %225 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pri.i.i276, align 4
  %add.ptr66.i.i = getelementptr i8, ptr %226, i32 %add40.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 -1073741824) #14, !srcloc !437
  %and67.i.i = and i32 %stat.1.i.i, -5
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.end56.i.i, %if.end31.i.i.if.end68.i.i_crit_edge
  %stat.2.i.i = phi i32 [ %and67.i.i, %if.end56.i.i ], [ %stat.1.i.i, %if.end31.i.i.if.end68.i.i_crit_edge ]
  %and69.i.i = and i32 %stat.2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i.i)
  %tobool70.not.i.i = icmp eq i32 %and69.i.i, 0
  br i1 %tobool70.not.i.i, label %if.end68.i.i.if.end105.i.i_crit_edge, label %if.then71.i.i

if.end68.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i.i

if.then71.i.i:                                    ; preds = %if.end68.i.i
  %227 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pri.i.i276, align 4
  %add77.i.i = add nuw nsw i32 %mul.i.i, 5244964
  %add.ptr78.i.i = getelementptr i8, ptr %228, i32 %add77.i.i
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !630
  %230 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp84.not.i.i = icmp eq i32 %231, 0
  br i1 %cmp84.not.i.i, label %if.then71.i.i.if.end93.i.i_crit_edge, label %do.end88.i.i

if.then71.i.i.if.end93.i.i_crit_edge:             ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93.i.i

do.end88.i.i:                                     ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %232 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %device3, align 4
  %dev90.i.i = getelementptr inbounds %struct.nvkm_device, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %dev90.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev90.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %235, ptr noundef nonnull @.str.139, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %229) #17
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %do.end88.i.i, %if.then71.i.i.if.end93.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !631
  call void @arm_heavy_mb() #14
  %236 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pri.i.i276, align 4
  %add.ptr103.i.i = getelementptr i8, ptr %237, i32 %add77.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103.i.i, i32 -1073741824) #14, !srcloc !437
  %and104.i.i = and i32 %stat.2.i.i, -10
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.end93.i.i, %if.end68.i.i.if.end105.i.i_crit_edge
  %stat.3.i.i = phi i32 [ %and104.i.i, %if.end93.i.i ], [ %stat.2.i.i, %if.end68.i.i.if.end105.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gf100_gr, ptr %add.ptr, i32 0, i32 14, i32 %gpc.0501.i
  %238 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %cmp106204.not.i.i = icmp eq i8 %239, 0
  br i1 %cmp106204.not.i.i, label %if.end105.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end105.i.i.for.end.i.i_crit_edge:              ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end105.i.i
  %add.i.i.i = add nuw nsw i32 %mul.i.i, 5259264
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end120.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %stat.4208.i.i = phi i32 [ %stat.3.i.i, %for.body.lr.ph.i.i ], [ %stat.5.i.i, %if.end120.i.i.for.body.i.i_crit_edge ]
  %tpc.0205.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end120.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 65536, %tpc.0205.i.i
  %and108.i.i = and i32 %shl.i.i, %stat.4208.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i.i)
  %tobool109.not.i.i = icmp eq i32 %and108.i.i, 0
  br i1 %tobool109.not.i.i, label %for.body.i.i.if.end120.i.i_crit_edge, label %if.then110.i.i

for.body.i.i.if.end120.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.i.i

if.then110.i.i:                                   ; preds = %for.body.i.i
  %240 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %device3, align 4
  %pri.i193.i.i = getelementptr inbounds %struct.nvkm_device, ptr %241, i32 0, i32 11
  %242 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pri.i193.i.i, align 4
  %mul3.i.i.i = shl i32 %tpc.0205.i.i, 11
  %add4.i.i.i = add nuw nsw i32 %add.i.i.i, %mul3.i.i.i
  %add5.i.i.i = or i32 %add4.i.i.i, 1288
  %add.ptr.i195.i.i = getelementptr i8, ptr %243, i32 %add5.i.i.i
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !632
  %and.i196.i.i = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i196.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i196.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then110.i.i.if.end32.i.i.i_crit_edge, label %if.then.i.i.i

if.then110.i.i.if.end32.i.i.i_crit_edge:          ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i.i

if.then.i.i.i:                                    ; preds = %if.then110.i.i
  %245 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pri.i193.i.i, align 4
  %add12.i.i.i = or i32 %add4.i.i.i, 548
  %add.ptr13.i.i.i = getelementptr i8, ptr %246, i32 %add12.i.i.i
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !633
  %248 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp.not.i198.i.i = icmp eq i32 %249, 0
  br i1 %cmp.not.i198.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, label %do.end.i201.i.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i201.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %250 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %device3, align 4
  %dev.i199.i.i = getelementptr inbounds %struct.nvkm_device, ptr %251, i32 0, i32 2
  %252 = ptrtoint ptr %dev.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev.i199.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %253, ptr noundef nonnull @.str.152, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %tpc.0205.i.i, i32 noundef %247) #17
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i201.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !634
  call void @arm_heavy_mb() #14
  %254 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pri.i193.i.i, align 4
  %add.ptr30.i.i.i = getelementptr i8, ptr %255, i32 %add12.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i.i, i32 -1073741824) #14, !srcloc !437
  %and31.i.i.i = and i32 %244, -2
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.end.i.i.i, %if.then110.i.i.if.end32.i.i.i_crit_edge
  %stat.0.i.i.i = phi i32 [ %and31.i.i.i, %if.end.i.i.i ], [ %244, %if.then110.i.i.if.end32.i.i.i_crit_edge ]
  %and33.i.i.i = and i32 %stat.0.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %and33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %if.end32.i.i.i.if.end37.i.i.i_crit_edge, label %if.then35.i.i.i

if.end32.i.i.i.if.end37.i.i.i_crit_edge:          ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i.i.i

if.then35.i.i.i:                                  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %256 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %add.ptr, align 4
  %trap_mp.i.i.i = getelementptr inbounds %struct.gf100_gr_func, ptr %257, i32 0, i32 27
  %258 = ptrtoint ptr %trap_mp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %trap_mp.i.i.i, align 4
  call void %259(ptr noundef %add.ptr, i32 noundef %gpc.0501.i, i32 noundef %tpc.0205.i.i) #14
  %and36.i.i.i = and i32 %stat.0.i.i.i, -3
  br label %if.end37.i.i.i

if.end37.i.i.i:                                   ; preds = %if.then35.i.i.i, %if.end32.i.i.i.if.end37.i.i.i_crit_edge
  %stat.1.i.i.i = phi i32 [ %and36.i.i.i, %if.then35.i.i.i ], [ %stat.0.i.i.i, %if.end32.i.i.i.if.end37.i.i.i_crit_edge ]
  %and38.i202.i.i = and i32 %stat.1.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i202.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %and38.i202.i.i, 0
  br i1 %tobool39.not.i.i.i, label %if.end37.i.i.i.if.end78.i.i.i_crit_edge, label %if.then40.i.i.i

if.end37.i.i.i.if.end78.i.i.i_crit_edge:          ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end37.i.i.i
  %260 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %pri.i193.i.i, align 4
  %add48.i.i.i = or i32 %add4.i.i.i, 132
  %add.ptr49.i.i.i = getelementptr i8, ptr %261, i32 %add48.i.i.i
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !635
  %263 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp55.not.i.i.i = icmp eq i32 %264, 0
  br i1 %cmp55.not.i.i.i, label %if.then40.i.i.i.if.end64.i.i.i_crit_edge, label %do.end59.i.i.i

if.then40.i.i.i.if.end64.i.i.i_crit_edge:         ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i.i

do.end59.i.i.i:                                   ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %265 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %device3, align 4
  %dev61.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %dev61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev61.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %268, ptr noundef nonnull @.str.155, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %tpc.0205.i.i, i32 noundef %262) #17
  br label %if.end64.i.i.i

if.end64.i.i.i:                                   ; preds = %do.end59.i.i.i, %if.then40.i.i.i.if.end64.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !636
  call void @arm_heavy_mb() #14
  %269 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pri.i193.i.i, align 4
  %add.ptr76.i.i.i = getelementptr i8, ptr %270, i32 %add48.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i.i.i, i32 -1073741824) #14, !srcloc !437
  %and77.i.i.i = and i32 %stat.1.i.i.i, -5
  br label %if.end78.i.i.i

if.end78.i.i.i:                                   ; preds = %if.end64.i.i.i, %if.end37.i.i.i.if.end78.i.i.i_crit_edge
  %stat.2.i.i.i = phi i32 [ %and77.i.i.i, %if.end64.i.i.i ], [ %stat.1.i.i.i, %if.end37.i.i.i.if.end78.i.i.i_crit_edge ]
  %and79.i.i.i = and i32 %stat.2.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i.i)
  %tobool80.not.i.i.i = icmp eq i32 %and79.i.i.i, 0
  br i1 %tobool80.not.i.i.i, label %if.end78.i.i.i.if.end119.i.i.i_crit_edge, label %if.then81.i.i.i

if.end78.i.i.i.if.end119.i.i.i_crit_edge:         ; preds = %if.end78.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119.i.i.i

if.then81.i.i.i:                                  ; preds = %if.end78.i.i.i
  %271 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pri.i193.i.i, align 4
  %add89.i.i.i = or i32 %add4.i.i.i, 1164
  %add.ptr90.i.i.i = getelementptr i8, ptr %272, i32 %add89.i.i.i
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !637
  %274 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp96.not.i.i.i = icmp eq i32 %275, 0
  br i1 %cmp96.not.i.i.i, label %if.then81.i.i.i.if.end105.i.i.i_crit_edge, label %do.end100.i.i.i

if.then81.i.i.i.if.end105.i.i.i_crit_edge:        ; preds = %if.then81.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105.i.i.i

do.end100.i.i.i:                                  ; preds = %if.then81.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %276 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %device3, align 4
  %dev102.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %dev102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev102.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.158, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %tpc.0205.i.i, i32 noundef %273) #17
  br label %if.end105.i.i.i

if.end105.i.i.i:                                  ; preds = %do.end100.i.i.i, %if.then81.i.i.i.if.end105.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !638
  call void @arm_heavy_mb() #14
  %280 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pri.i193.i.i, align 4
  %add.ptr117.i.i.i = getelementptr i8, ptr %281, i32 %add89.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117.i.i.i, i32 -1073741824) #14, !srcloc !437
  %and118.i.i.i = and i32 %stat.2.i.i.i, -9
  br label %if.end119.i.i.i

if.end119.i.i.i:                                  ; preds = %if.end105.i.i.i, %if.end78.i.i.i.if.end119.i.i.i_crit_edge
  %stat.3.i.i.i = phi i32 [ %and118.i.i.i, %if.end105.i.i.i ], [ %stat.2.i.i.i, %if.end78.i.i.i.if.end119.i.i.i_crit_edge ]
  %and120.i.i.i = and i32 %stat.3.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i.i.i)
  %tobool121.not.i.i.i = icmp eq i32 %and120.i.i.i, 0
  br i1 %tobool121.not.i.i.i, label %if.end119.i.i.i.if.end160.i.i.i_crit_edge, label %if.then122.i.i.i

if.end119.i.i.i.if.end160.i.i.i_crit_edge:        ; preds = %if.end119.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160.i.i.i

if.then122.i.i.i:                                 ; preds = %if.end119.i.i.i
  %282 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pri.i193.i.i, align 4
  %add130.i.i.i = or i32 %add4.i.i.i, 1072
  %add.ptr131.i.i.i = getelementptr i8, ptr %283, i32 %add130.i.i.i
  %284 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131.i.i.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !639
  %285 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp137.not.i.i.i = icmp eq i32 %286, 0
  br i1 %cmp137.not.i.i.i, label %if.then122.i.i.i.if.end146.i.i.i_crit_edge, label %do.end141.i.i.i

if.then122.i.i.i.if.end146.i.i.i_crit_edge:       ; preds = %if.then122.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146.i.i.i

do.end141.i.i.i:                                  ; preds = %if.then122.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %287 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %device3, align 4
  %dev143.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %288, i32 0, i32 2
  %289 = ptrtoint ptr %dev143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev143.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.161, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %tpc.0205.i.i, i32 noundef %284) #17
  br label %if.end146.i.i.i

if.end146.i.i.i:                                  ; preds = %do.end141.i.i.i, %if.then122.i.i.i.if.end146.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !640
  call void @arm_heavy_mb() #14
  %291 = ptrtoint ptr %pri.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %pri.i193.i.i, align 4
  %add.ptr158.i.i.i = getelementptr i8, ptr %292, i32 %add130.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158.i.i.i, i32 -1073741824) #14, !srcloc !437
  %and159.i.i.i = and i32 %stat.3.i.i.i, -17
  br label %if.end160.i.i.i

if.end160.i.i.i:                                  ; preds = %if.end146.i.i.i, %if.end119.i.i.i.if.end160.i.i.i_crit_edge
  %stat.4.i.i.i = phi i32 [ %and159.i.i.i, %if.end146.i.i.i ], [ %stat.3.i.i.i, %if.end119.i.i.i.if.end160.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.4.i.i.i)
  %tobool161.not.i.i.i = icmp eq i32 %stat.4.i.i.i, 0
  br i1 %tobool161.not.i.i.i, label %if.end160.i.i.i.gf100_gr_trap_tpc.exit.i.i_crit_edge, label %do.body163.i.i.i

if.end160.i.i.i.gf100_gr_trap_tpc.exit.i.i_crit_edge: ; preds = %if.end160.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_trap_tpc.exit.i.i

do.body163.i.i.i:                                 ; preds = %if.end160.i.i.i
  %293 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %cmp166.not.i.i.i = icmp eq i32 %294, 0
  br i1 %cmp166.not.i.i.i, label %do.body163.i.i.i.gf100_gr_trap_tpc.exit.i.i_crit_edge, label %do.end170.i.i.i

do.body163.i.i.i.gf100_gr_trap_tpc.exit.i.i_crit_edge: ; preds = %do.body163.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_trap_tpc.exit.i.i

do.end170.i.i.i:                                  ; preds = %do.body163.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %295 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %device3, align 4
  %dev172.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %296, i32 0, i32 2
  %297 = ptrtoint ptr %dev172.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev172.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.164, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %tpc.0205.i.i, i32 noundef %stat.4.i.i.i) #17
  br label %gf100_gr_trap_tpc.exit.i.i

gf100_gr_trap_tpc.exit.i.i:                       ; preds = %do.end170.i.i.i, %do.body163.i.i.i.gf100_gr_trap_tpc.exit.i.i_crit_edge, %if.end160.i.i.i.gf100_gr_trap_tpc.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !641
  call void @arm_heavy_mb() #14
  %299 = ptrtoint ptr %pri.i.i276 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %pri.i.i276, align 4
  %add.ptr118.i.i = getelementptr i8, ptr %300, i32 %add3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i.i, i32 %shl.i.i) #14, !srcloc !437
  %neg.i.i = xor i32 %shl.i.i, -1
  %and119.i.i = and i32 %stat.4208.i.i, %neg.i.i
  br label %if.end120.i.i

if.end120.i.i:                                    ; preds = %gf100_gr_trap_tpc.exit.i.i, %for.body.i.i.if.end120.i.i_crit_edge
  %stat.5.i.i = phi i32 [ %and119.i.i, %gf100_gr_trap_tpc.exit.i.i ], [ %stat.4208.i.i, %for.body.i.i.if.end120.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %tpc.0205.i.i, 1
  %301 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %302 to i32
  %cmp106.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp106.i.i, label %if.end120.i.i.for.body.i.i_crit_edge, label %if.end120.i.i.for.end.i.i_crit_edge

if.end120.i.i.for.end.i.i_crit_edge:              ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

if.end120.i.i.for.body.i.i_crit_edge:             ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end120.i.i.for.end.i.i_crit_edge, %if.end105.i.i.for.end.i.i_crit_edge
  %stat.4.lcssa.i.i = phi i32 [ %stat.3.i.i, %if.end105.i.i.for.end.i.i_crit_edge ], [ %stat.5.i.i, %if.end120.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.4.lcssa.i.i)
  %tobool121.not.i.i = icmp eq i32 %stat.4.lcssa.i.i, 0
  br i1 %tobool121.not.i.i, label %for.end.i.i.gf100_gr_trap_gpc.exit.i_crit_edge, label %do.body123.i.i

for.end.i.i.gf100_gr_trap_gpc.exit.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_trap_gpc.exit.i

do.body123.i.i:                                   ; preds = %for.end.i.i
  %303 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp126.not.i.i = icmp eq i32 %304, 0
  br i1 %cmp126.not.i.i, label %do.body123.i.i.gf100_gr_trap_gpc.exit.i_crit_edge, label %do.end131.i.i

do.body123.i.i.gf100_gr_trap_gpc.exit.i_crit_edge: ; preds = %do.body123.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_trap_gpc.exit.i

do.end131.i.i:                                    ; preds = %do.body123.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %305 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %device3, align 4
  %dev133.i.i = getelementptr inbounds %struct.nvkm_device, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %dev133.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev133.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %308, ptr noundef nonnull @.str.142, ptr noundef %name.i.i.i, i32 noundef %gpc.0501.i, i32 noundef %stat.4.lcssa.i.i) #17
  br label %gf100_gr_trap_gpc.exit.i

gf100_gr_trap_gpc.exit.i:                         ; preds = %do.end131.i.i, %do.body123.i.i.gf100_gr_trap_gpc.exit.i_crit_edge, %for.end.i.i.gf100_gr_trap_gpc.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !642
  call void @arm_heavy_mb() #14
  %309 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pri.i, align 4
  %add.ptr296.i = getelementptr i8, ptr %310, i32 4194584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296.i, i32 %shl.i) #14, !srcloc !437
  %neg.i = xor i32 %shl.i, -1
  %and297.i = and i32 %stat280.0500.i, %neg.i
  br label %if.end298.i

if.end298.i:                                      ; preds = %gf100_gr_trap_gpc.exit.i, %for.body.i.if.end298.i_crit_edge
  %stat280.1.i = phi i32 [ %and297.i, %gf100_gr_trap_gpc.exit.i ], [ %stat280.0500.i, %for.body.i.if.end298.i_crit_edge ]
  %inc.i = add nuw nsw i32 %gpc.0501.i, 1
  %tobool286.not.i = icmp eq i32 %stat280.1.i, 0
  br i1 %tobool286.not.i, label %if.end298.i.do.body299.i_crit_edge, label %if.end298.i.land.rhs.i_crit_edge

if.end298.i.land.rhs.i_crit_edge:                 ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end298.i.do.body299.i_crit_edge:               ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body299.i

do.body299.i:                                     ; preds = %if.end298.i.do.body299.i_crit_edge, %land.rhs.i.do.body299.i_crit_edge, %if.then279.i.do.body299.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !643
  call void @arm_heavy_mb() #14
  %311 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %pri.i, align 4
  %add.ptr303.i = getelementptr i8, ptr %312, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303.i, i32 16777216) #14, !srcloc !437
  %and304.i = and i32 %trap.6.i, -16777217
  br label %if.end305.i

if.end305.i:                                      ; preds = %do.body299.i, %if.end276.i.if.end305.i_crit_edge
  %trap.7.i = phi i32 [ %and304.i, %do.body299.i ], [ %trap.6.i, %if.end276.i.if.end305.i_crit_edge ]
  %and306.i = and i32 %trap.7.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306.i)
  %tobool307.not.i = icmp eq i32 %and306.i, 0
  br i1 %tobool307.not.i, label %if.end305.i.if.end369.i_crit_edge, label %for.cond309.preheader.i

if.end305.i.if.end369.i_crit_edge:                ; preds = %if.end305.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end369.i

for.cond309.preheader.i:                          ; preds = %if.end305.i
  %rop_nr.i = getelementptr i8, ptr %base, i32 2216
  %313 = ptrtoint ptr %rop_nr.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %rop_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %cmp311505.not.i = icmp eq i8 %314, 0
  br i1 %cmp311505.not.i, label %for.cond309.preheader.i.do.body363.i_crit_edge, label %for.body313.lr.ph.i

for.cond309.preheader.i.do.body363.i_crit_edge:   ; preds = %for.cond309.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body363.i

for.body313.lr.ph.i:                              ; preds = %for.cond309.preheader.i
  %name339.i = getelementptr i8, ptr %base, i32 24
  br label %for.body313.i

for.body313.i:                                    ; preds = %if.end341.i.for.body313.i_crit_edge, %for.body313.lr.ph.i
  %rop.0506.i = phi i32 [ 0, %for.body313.lr.ph.i ], [ %inc361.i, %if.end341.i.for.body313.i_crit_edge ]
  %315 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %pri.i, align 4
  %mul.i = shl i32 %rop.0506.i, 10
  %add316.i = add nuw nsw i32 %mul.i, 4259952
  %add.ptr317.i = getelementptr i8, ptr %316, i32 %add316.i
  %317 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr317.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !644
  %318 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %pri.i, align 4
  %add324.i = add nuw nsw i32 %mul.i, 4260164
  %add.ptr325.i = getelementptr i8, ptr %319, i32 %add324.i
  %320 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr325.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !645
  %321 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %cmp331.not.i = icmp eq i32 %322, 0
  br i1 %cmp331.not.i, label %for.body313.i.if.end341.i_crit_edge, label %do.end336.i

for.body313.i.if.end341.i_crit_edge:              ; preds = %for.body313.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end341.i

do.end336.i:                                      ; preds = %for.body313.i
  call void @__sanitizer_cov_trace_pc() #16
  %323 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %device3, align 4
  %dev338.i = getelementptr inbounds %struct.nvkm_device, ptr %324, i32 0, i32 2
  %325 = ptrtoint ptr %dev338.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dev338.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %326, ptr noundef nonnull @.str.101, ptr noundef %name339.i, i32 noundef %rop.0506.i, i32 noundef %317, i32 noundef %320) #17
  br label %if.end341.i

if.end341.i:                                      ; preds = %do.end336.i, %for.body313.i.if.end341.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !646
  call void @arm_heavy_mb() #14
  %327 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pri.i, align 4
  %add.ptr351.i = getelementptr i8, ptr %328, i32 %add316.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr351.i, i32 -1073741824) #14, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !647
  call void @arm_heavy_mb() #14
  %329 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pri.i, align 4
  %add.ptr359.i = getelementptr i8, ptr %330, i32 %add324.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr359.i, i32 -1073741824) #14, !srcloc !437
  %inc361.i = add nuw nsw i32 %rop.0506.i, 1
  %331 = ptrtoint ptr %rop_nr.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %rop_nr.i, align 4
  %conv310.i = zext i8 %332 to i32
  %cmp311.i = icmp ult i32 %inc361.i, %conv310.i
  br i1 %cmp311.i, label %if.end341.i.for.body313.i_crit_edge, label %if.end341.i.do.body363.i_crit_edge

if.end341.i.do.body363.i_crit_edge:               ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body363.i

if.end341.i.for.body313.i_crit_edge:              ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body313.i

do.body363.i:                                     ; preds = %if.end341.i.do.body363.i_crit_edge, %for.cond309.preheader.i.do.body363.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !648
  call void @arm_heavy_mb() #14
  %333 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %pri.i, align 4
  %add.ptr367.i = getelementptr i8, ptr %334, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr367.i, i32 33554432) #14, !srcloc !437
  %and368.i = and i32 %trap.7.i, -33554433
  br label %if.end369.i

if.end369.i:                                      ; preds = %do.body363.i, %if.end305.i.if.end369.i_crit_edge
  %trap.8.i = phi i32 [ %and368.i, %do.body363.i ], [ %trap.7.i, %if.end305.i.if.end369.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trap.8.i)
  %tobool370.not.i = icmp eq i32 %trap.8.i, 0
  br i1 %tobool370.not.i, label %if.end369.i.gf100_gr_trap_intr.exit_crit_edge, label %do.body372.i

if.end369.i.gf100_gr_trap_intr.exit_crit_edge:    ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_trap_intr.exit

do.body372.i:                                     ; preds = %if.end369.i
  %335 = ptrtoint ptr %debug139 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %debug139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %cmp375.not.i = icmp eq i32 %336, 0
  br i1 %cmp375.not.i, label %do.body372.i.if.end385.i_crit_edge, label %do.end380.i

do.body372.i.if.end385.i_crit_edge:               ; preds = %do.body372.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end385.i

do.end380.i:                                      ; preds = %do.body372.i
  call void @__sanitizer_cov_trace_pc() #16
  %337 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %device3, align 4
  %dev382.i = getelementptr inbounds %struct.nvkm_device, ptr %338, i32 0, i32 2
  %339 = ptrtoint ptr %dev382.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev382.i, align 8
  %name383.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %340, ptr noundef nonnull @.str.104, ptr noundef %name383.i, i32 noundef %trap.8.i) #17
  br label %if.end385.i

if.end385.i:                                      ; preds = %do.end380.i, %do.body372.i.if.end385.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !649
  call void @arm_heavy_mb() #14
  %341 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %pri.i, align 4
  %add.ptr392.i = getelementptr i8, ptr %342, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr392.i, i32 %trap.8.i) #14, !srcloc !437
  br label %gf100_gr_trap_intr.exit

gf100_gr_trap_intr.exit:                          ; preds = %if.end385.i, %if.end369.i.gf100_gr_trap_intr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %error.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !650
  call void @arm_heavy_mb() #14
  %343 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pri, align 4
  %add.ptr158 = getelementptr i8, ptr %344, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 2097152) #14, !srcloc !437
  %and159 = and i32 %stat.3, -2097153
  br label %if.end160

if.end160:                                        ; preds = %gf100_gr_trap_intr.exit, %if.end133.if.end160_crit_edge
  %stat.4 = phi i32 [ %and159, %gf100_gr_trap_intr.exit ], [ %stat.3, %if.end133.if.end160_crit_edge ]
  %and161 = and i32 %stat.4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end170_crit_edge, label %if.then163

if.end160.if.end170_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.then163:                                       ; preds = %if.end160
  %345 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %device3, align 4
  %pri.i280 = getelementptr inbounds %struct.nvkm_device, ptr %346, i32 0, i32 11
  %347 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %pri.i280, align 4
  %add.ptr.i281 = getelementptr i8, ptr %348, i32 4234264
  %349 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !651
  %firmware.i = getelementptr i8, ptr %base, i32 1236
  %350 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %firmware.i, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool.not.i282 = icmp ne i8 %351, 0
  %and.i283 = and i32 %349, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool3.not.i = icmp eq i32 %and.i283, 0
  %or.cond.i = select i1 %tobool.not.i282, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.then163.if.end55.i_crit_edge, label %if.then.i284

if.then163.if.end55.i_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then.i284:                                     ; preds = %if.then163
  %352 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %pri.i280, align 4
  %add.ptr6.i = getelementptr i8, ptr %353, i32 4233236
  %354 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !652
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %354)
  %cmp.i = icmp eq i32 %354, 3
  br i1 %cmp.i, label %if.then9.i, label %do.body33.i

if.then9.i:                                       ; preds = %if.then.i284
  %355 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %pri.i280, align 4
  %add.ptr12.i = getelementptr i8, ptr %356, i32 4233224
  %357 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !653
  %358 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %pri.i280, align 4
  %add.ptr17.i = getelementptr i8, ptr %359, i32 4233228
  %360 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !654
  %361 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %pri.i280, align 4
  %add.ptr24.i = getelementptr i8, ptr %362, i32 4233232
  %363 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !655
  %debug.i285 = getelementptr i8, ptr %base, i32 40
  %364 = ptrtoint ptr %debug.i285 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %debug.i285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %cmp27.not.i = icmp eq i32 %365, 0
  br i1 %cmp27.not.i, label %if.then9.i.do.body49.i_crit_edge, label %do.end.i289

if.then9.i.do.body49.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body49.i

do.end.i289:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  %and21.i = and i32 %360, 16380
  %and20.i = lshr i32 %360, 16
  %shr.i286 = and i32 %and20.i, 7
  %366 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %device3, align 4
  %dev.i287 = getelementptr inbounds %struct.nvkm_device, ptr %367, i32 0, i32 2
  %368 = ptrtoint ptr %dev.i287 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %dev.i287, align 8
  %name.i288 = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %369, ptr noundef nonnull @.str.166, ptr noundef %name.i288, i32 noundef %shr.i286, i32 noundef %357, i32 noundef %and21.i, i32 noundef %363) #17
  br label %do.body49.i

do.body33.i:                                      ; preds = %if.then.i284
  %debug35.i = getelementptr i8, ptr %base, i32 40
  %370 = ptrtoint ptr %debug35.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %debug35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %cmp36.not.i = icmp eq i32 %371, 0
  br i1 %cmp36.not.i, label %do.body33.i.do.body49.i_crit_edge, label %do.end40.i

do.body33.i.do.body49.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body49.i

do.end40.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #16
  %372 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %device3, align 4
  %dev42.i = getelementptr inbounds %struct.nvkm_device, ptr %373, i32 0, i32 2
  %374 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev42.i, align 8
  %name43.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.169, ptr noundef %name43.i, i32 noundef %354) #17
  br label %do.body49.i

do.body49.i:                                      ; preds = %do.end40.i, %do.body33.i.do.body49.i_crit_edge, %do.end.i289, %if.then9.i.do.body49.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !656
  call void @arm_heavy_mb() #14
  %376 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %pri.i280, align 4
  %add.ptr53.i = getelementptr i8, ptr %377, i32 4234272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 1) #14, !srcloc !437
  %and54.i = and i32 %349, -2
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.body49.i, %if.then163.if.end55.i_crit_edge
  %stat.0.i = phi i32 [ %349, %if.then163.if.end55.i_crit_edge ], [ %and54.i, %do.body49.i ]
  %378 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %firmware.i, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool57.not.i = icmp ne i8 %379, 0
  %and59.i = and i32 %stat.0.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  %or.cond138.i = select i1 %tobool57.not.i, i1 true, i1 %tobool60.not.i
  br i1 %or.cond138.i, label %if.end55.i.if.end83.i_crit_edge, label %do.body62.i

if.end55.i.if.end83.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83.i

do.body62.i:                                      ; preds = %if.end55.i
  %debug64.i = getelementptr i8, ptr %base, i32 40
  %380 = ptrtoint ptr %debug64.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %debug64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %cmp65.not.i = icmp eq i32 %381, 0
  br i1 %cmp65.not.i, label %do.body62.i.if.end74.i_crit_edge, label %do.end69.i

do.body62.i.if.end74.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

do.end69.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #16
  %382 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %device3, align 4
  %dev71.i = getelementptr inbounds %struct.nvkm_device, ptr %383, i32 0, i32 2
  %384 = ptrtoint ptr %dev71.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %dev71.i, align 8
  %name72.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %385, ptr noundef nonnull @.str.172, ptr noundef %name72.i) #17
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end69.i, %do.body62.i.if.end74.i_crit_edge
  %386 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %device3, align 4
  %pri.i.i290 = getelementptr inbounds %struct.nvkm_device, ptr %387, i32 0, i32 11
  %388 = ptrtoint ptr %pri.i.i290 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %pri.i.i290, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %389, i32 4232708
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i291) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !470
  %and.i.i292 = and i32 %390, 65535
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %add.ptr, i32 noundef 4231168) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i292)
  %cmp6.not.i.i = icmp eq i32 %and.i.i292, 0
  br i1 %cmp6.not.i.i, label %if.end74.i.gf100_gr_ctxctl_debug.exit.i_crit_edge, label %if.end74.i.for.body.i.i295_crit_edge

if.end74.i.for.body.i.i295_crit_edge:             ; preds = %if.end74.i
  br label %for.body.i.i295

if.end74.i.gf100_gr_ctxctl_debug.exit.i_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_ctxctl_debug.exit.i

for.body.i.i295:                                  ; preds = %for.body.i.i295.for.body.i.i295_crit_edge, %if.end74.i.for.body.i.i295_crit_edge
  %gpc.07.i.i = phi i32 [ %inc.i.i294, %for.body.i.i295.for.body.i.i295_crit_edge ], [ 0, %if.end74.i.for.body.i.i295_crit_edge ]
  %mul.i.i293 = shl i32 %gpc.07.i.i, 15
  %add.i.i = add nuw i32 %mul.i.i293, 5251072
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %add.ptr, i32 noundef %add.i.i) #14
  %inc.i.i294 = add nuw nsw i32 %gpc.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i294, %and.i.i292
  br i1 %exitcond.not.i.i, label %for.body.i.i295.gf100_gr_ctxctl_debug.exit.i_crit_edge, label %for.body.i.i295.for.body.i.i295_crit_edge

for.body.i.i295.for.body.i.i295_crit_edge:        ; preds = %for.body.i.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i295

for.body.i.i295.gf100_gr_ctxctl_debug.exit.i_crit_edge: ; preds = %for.body.i.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_ctxctl_debug.exit.i

gf100_gr_ctxctl_debug.exit.i:                     ; preds = %for.body.i.i295.gf100_gr_ctxctl_debug.exit.i_crit_edge, %if.end74.i.gf100_gr_ctxctl_debug.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !657
  call void @arm_heavy_mb() #14
  %391 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %pri.i280, align 4
  %add.ptr81.i = getelementptr i8, ptr %392, i32 4234272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 524288) #14, !srcloc !437
  %and82.i = and i32 %stat.0.i, -524289
  br label %if.end83.i

if.end83.i:                                       ; preds = %gf100_gr_ctxctl_debug.exit.i, %if.end55.i.if.end83.i_crit_edge
  %stat.1.i = phi i32 [ %stat.0.i, %if.end55.i.if.end83.i_crit_edge ], [ %and82.i, %gf100_gr_ctxctl_debug.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.1.i)
  %tobool84.not.i = icmp eq i32 %stat.1.i, 0
  br i1 %tobool84.not.i, label %if.end83.i.gf100_gr_ctxctl_isr.exit_crit_edge, label %do.body86.i

if.end83.i.gf100_gr_ctxctl_isr.exit_crit_edge:    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_ctxctl_isr.exit

do.body86.i:                                      ; preds = %if.end83.i
  %debug88.i = getelementptr i8, ptr %base, i32 40
  %393 = ptrtoint ptr %debug88.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %debug88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %cmp89.not.i = icmp eq i32 %394, 0
  br i1 %cmp89.not.i, label %do.body86.i.if.end98.i_crit_edge, label %do.end93.i

do.body86.i.if.end98.i_crit_edge:                 ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98.i

do.end93.i:                                       ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #16
  %395 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %device3, align 4
  %dev95.i = getelementptr inbounds %struct.nvkm_device, ptr %396, i32 0, i32 2
  %397 = ptrtoint ptr %dev95.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dev95.i, align 8
  %name96.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %398, ptr noundef nonnull @.str.175, ptr noundef %name96.i, i32 noundef %stat.1.i) #17
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end93.i, %do.body86.i.if.end98.i_crit_edge
  %399 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %device3, align 4
  %pri.i140.i = getelementptr inbounds %struct.nvkm_device, ptr %400, i32 0, i32 11
  %401 = ptrtoint ptr %pri.i140.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %pri.i140.i, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %402, i32 4232708
  %403 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !470
  %and.i142.i = and i32 %403, 65535
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %add.ptr, i32 noundef 4231168) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142.i)
  %cmp6.not.i143.i = icmp eq i32 %and.i142.i, 0
  br i1 %cmp6.not.i143.i, label %if.end98.i.gf100_gr_ctxctl_debug.exit150.i_crit_edge, label %if.end98.i.for.body.i149.i_crit_edge

if.end98.i.for.body.i149.i_crit_edge:             ; preds = %if.end98.i
  br label %for.body.i149.i

if.end98.i.gf100_gr_ctxctl_debug.exit150.i_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_ctxctl_debug.exit150.i

for.body.i149.i:                                  ; preds = %for.body.i149.i.for.body.i149.i_crit_edge, %if.end98.i.for.body.i149.i_crit_edge
  %gpc.07.i144.i = phi i32 [ %inc.i147.i, %for.body.i149.i.for.body.i149.i_crit_edge ], [ 0, %if.end98.i.for.body.i149.i_crit_edge ]
  %mul.i145.i = shl i32 %gpc.07.i144.i, 15
  %add.i146.i = add nuw i32 %mul.i145.i, 5251072
  call fastcc void @gf100_gr_ctxctl_debug_unit(ptr noundef %add.ptr, i32 noundef %add.i146.i) #14
  %inc.i147.i = add nuw nsw i32 %gpc.07.i144.i, 1
  %exitcond.not.i148.i = icmp eq i32 %inc.i147.i, %and.i142.i
  br i1 %exitcond.not.i148.i, label %for.body.i149.i.gf100_gr_ctxctl_debug.exit150.i_crit_edge, label %for.body.i149.i.for.body.i149.i_crit_edge

for.body.i149.i.for.body.i149.i_crit_edge:        ; preds = %for.body.i149.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i149.i

for.body.i149.i.gf100_gr_ctxctl_debug.exit150.i_crit_edge: ; preds = %for.body.i149.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gf100_gr_ctxctl_debug.exit150.i

gf100_gr_ctxctl_debug.exit150.i:                  ; preds = %for.body.i149.i.gf100_gr_ctxctl_debug.exit150.i_crit_edge, %if.end98.i.gf100_gr_ctxctl_debug.exit150.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !658
  call void @arm_heavy_mb() #14
  %404 = ptrtoint ptr %pri.i280 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %pri.i280, align 4
  %add.ptr105.i = getelementptr i8, ptr %405, i32 4234272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 %stat.1.i) #14, !srcloc !437
  br label %gf100_gr_ctxctl_isr.exit

gf100_gr_ctxctl_isr.exit:                         ; preds = %gf100_gr_ctxctl_debug.exit150.i, %if.end83.i.gf100_gr_ctxctl_isr.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !659
  call void @arm_heavy_mb() #14
  %406 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %pri, align 4
  %add.ptr168 = getelementptr i8, ptr %407, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 524288) #14, !srcloc !437
  %and169 = and i32 %stat.4, -524289
  br label %if.end170

if.end170:                                        ; preds = %gf100_gr_ctxctl_isr.exit, %if.end160.if.end170_crit_edge
  %stat.5 = phi i32 [ %and169, %gf100_gr_ctxctl_isr.exit ], [ %stat.4, %if.end160.if.end170_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.5)
  %tobool171.not = icmp eq i32 %stat.5, 0
  br i1 %tobool171.not, label %if.end170.do.body195_crit_edge, label %do.body173

if.end170.do.body195_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body195

do.body173:                                       ; preds = %if.end170
  %debug175 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %408 = ptrtoint ptr %debug175 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %debug175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %cmp176.not = icmp eq i32 %409, 0
  br i1 %cmp176.not, label %do.body173.if.end186_crit_edge, label %do.end181

do.body173.if.end186_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

do.end181:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #16
  %410 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %device3, align 4
  %dev183 = getelementptr inbounds %struct.nvkm_device, ptr %411, i32 0, i32 2
  %412 = ptrtoint ptr %dev183 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev183, align 8
  %name184 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %413, ptr noundef nonnull @.str.77, ptr noundef %name184, i32 noundef %stat.5) #17
  br label %if.end186

if.end186:                                        ; preds = %do.end181, %do.body173.if.end186_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !660
  call void @arm_heavy_mb() #14
  %414 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %pri, align 4
  %add.ptr193 = getelementptr i8, ptr %415, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %stat.5) #14, !srcloc !437
  br label %do.body195

do.body195:                                       ; preds = %if.end186, %if.end170.do.body195_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !661
  call void @arm_heavy_mb() #14
  %416 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %pri, align 4
  %add.ptr199 = getelementptr i8, ptr %417, i32 4195584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 65537) #14, !srcloc !437
  %418 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %fifo, align 8
  %420 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %419, i32 noundef %421, ptr noundef nonnull %chan) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_chan_new(ptr noundef %base, ptr nocapture noundef readonly %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %args = alloca %struct.gf100_vmm_map_v0, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_data = getelementptr i8, ptr %base, i32 3344
  %mmio_list = getelementptr i8, ptr %base, i32 3392
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args) #14
  %0 = call ptr @memcpy(ptr %args, ptr @__const.gf100_gr_chan_new.args, i32 5)
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %1 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @gf100_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #14
  %gr4 = getelementptr inbounds %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %gr4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %gr4, align 8
  %vmm = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %fifoch, i32 0, i32 8
  %5 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vmm, align 4
  %call5 = tail call ptr @nvkm_vmm_ref(ptr noundef %6) #14
  %vmm6 = getelementptr inbounds %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %vmm6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %vmm6, align 4
  %8 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %pobject, align 4
  %mmio8 = getelementptr inbounds %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 3
  %call9 = tail call i32 @nvkm_memory_new(ptr noundef %2, i32 noundef 0, i64 noundef 4096, i32 noundef 256, i1 noundef zeroext false, ptr noundef %mmio8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %9 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vmm, align 4
  %mmio_vma = getelementptr inbounds %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 4
  %call14 = tail call i32 @nvkm_vmm_get(ptr noundef %10, i8 noundef zeroext 12, i64 noundef 4096, ptr noundef %mmio_vma) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %mmio8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio8, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %17 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vmm, align 4
  %19 = ptrtoint ptr %mmio_vma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_vma, align 4
  %call22 = call i32 %16(ptr noundef %12, i64 noundef 0, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %args, i32 noundef 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond.preheader, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end17
  %21 = ptrtoint ptr %mmio_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmio_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool26.not189.not = icmp eq i32 %22, 0
  br i1 %tobool26.not189.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %priv51 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %args, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %for.body.lr.ph
  %23 = phi i32 [ %22, %for.body.lr.ph ], [ %48, %if.end67.for.body_crit_edge ]
  %i.0191 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end67.for.body_crit_edge ]
  %data.0190 = phi ptr [ %mmio_data, %for.body.lr.ph ], [ %incdec.ptr, %if.end67.for.body_crit_edge ]
  %conv = zext i32 %23 to i64
  %align = getelementptr inbounds %struct.gf100_gr_data, ptr %data.0190, i32 0, i32 1
  %24 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %align, align 4
  %arrayidx = getelementptr %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 6, i32 %i.0191
  %call29 = call i32 @nvkm_memory_new(ptr noundef %2, i32 noundef 0, i64 noundef %conv, i32 noundef %25, i1 noundef zeroext false, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %for.body
  %26 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vmm, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %size38 = getelementptr inbounds %struct.nvkm_memory_func, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %size38, align 4
  %call42 = call i64 %33(ptr noundef %29) #14
  %vma = getelementptr %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 6, i32 %i.0191, i32 1
  %call45 = call i32 @nvkm_vmm_get(ptr noundef %27, i8 noundef zeroext 12, i64 noundef %call42, ptr noundef %vma) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end48:                                         ; preds = %if.end32
  %priv = getelementptr inbounds %struct.gf100_gr_data, ptr %data.0190, i32 0, i32 2
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priv, align 4, !range !480
  %36 = ptrtoint ptr %priv51 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %priv51, align 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %map56 = getelementptr inbounds %struct.nvkm_memory_func, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %map56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map56, align 4
  %43 = ptrtoint ptr %vmm6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vmm6, align 4
  %45 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vma, align 8
  %call64 = call i32 %42(ptr noundef %38, i64 noundef 0, ptr noundef %44, ptr noundef %46, ptr noundef nonnull %args, i32 noundef 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end67:                                         ; preds = %if.end48
  %incdec.ptr = getelementptr %struct.gf100_gr_data, ptr %data.0190, i32 1
  %inc = add nuw nsw i32 %i.0191, 1
  %47 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool26.not = icmp ne i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0191)
  %cmp = icmp ult i32 %i.0191, 3
  %or.cond = select i1 %tobool26.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end67.for.body_crit_edge, label %if.end67.for.end_crit_edge

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end67.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %49 = ptrtoint ptr %mmio8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio8, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %acquire, align 4
  %call71 = call ptr %54(ptr noundef %50) #14
  %55 = ptrtoint ptr %mmio_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mmio_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool73.not192.not = icmp eq i32 %56, 0
  br i1 %tobool73.not192.not, label %for.end.for.end109_crit_edge, label %for.body78.lr.ph

for.end.for.end109_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end109

for.body78.lr.ph:                                 ; preds = %for.end
  %mmio_nr = getelementptr inbounds %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 5
  br label %for.body78

for.body78:                                       ; preds = %if.end93.for.body78_crit_edge, %for.body78.lr.ph
  %57 = phi i32 [ %56, %for.body78.lr.ph ], [ %86, %if.end93.for.body78_crit_edge ]
  %i.1194 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc108, %if.end93.for.body78_crit_edge ]
  %mmio.0193 = phi ptr [ %mmio_list, %for.body78.lr.ph ], [ %incdec.ptr106, %if.end93.for.body78_crit_edge ]
  %data82 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %mmio.0193, i32 0, i32 1
  %58 = ptrtoint ptr %data82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data82, align 4
  %buffer = getelementptr inbounds %struct.gf100_gr_mmio, ptr %mmio.0193, i32 0, i32 3
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp83 = icmp sgt i32 %61, -1
  br i1 %cmp83, label %if.then85, label %for.body78.if.end93_crit_edge

for.body78.if.end93_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then85:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #16
  %vma89 = getelementptr %struct.gf100_gr_chan, ptr %call7.i.i, i32 0, i32 6, i32 %61, i32 1
  %62 = ptrtoint ptr %vma89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vma89, align 8
  %addr90 = getelementptr inbounds %struct.nvkm_vma, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %addr90 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %addr90, align 8
  %shift = getelementptr inbounds %struct.gf100_gr_mmio, ptr %mmio.0193, i32 0, i32 2
  %66 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %67 to i64
  %shr = lshr i64 %65, %sh_prom
  %68 = trunc i64 %shr to i32
  %conv92 = or i32 %59, %68
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %for.body78.if.end93_crit_edge
  %data81.0 = phi i32 [ %conv92, %if.then85 ], [ %59, %for.body78.if.end93_crit_edge ]
  %69 = ptrtoint ptr %mmio8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio8, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr32, align 4
  %75 = ptrtoint ptr %mmio_nr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mmio_nr, align 8
  %inc96 = add i32 %76, 1
  store i32 %inc96, ptr %mmio_nr, align 8
  %mul = shl i32 %76, 2
  %conv97 = sext i32 %mul to i64
  call void %74(ptr noundef %70, i64 noundef %conv97, i32 noundef %57) #14
  %77 = ptrtoint ptr %mmio8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio8, align 8
  %ptrs99 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %ptrs99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ptrs99, align 4
  %wr32100 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wr32100 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr32100, align 4
  %83 = ptrtoint ptr %mmio_nr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mmio_nr, align 8
  %inc103 = add i32 %84, 1
  store i32 %inc103, ptr %mmio_nr, align 8
  %mul104 = shl i32 %84, 2
  %conv105 = sext i32 %mul104 to i64
  call void %82(ptr noundef %78, i64 noundef %conv105, i32 noundef %data81.0) #14
  %incdec.ptr106 = getelementptr %struct.gf100_gr_mmio, ptr %mmio.0193, i32 1
  %inc108 = add nuw nsw i32 %i.1194, 1
  %85 = ptrtoint ptr %incdec.ptr106 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool73.not = icmp ne i32 %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %i.1194)
  %cmp75 = icmp ult i32 %i.1194, 511
  %or.cond188 = select i1 %tobool73.not, i1 %cmp75, i1 false
  br i1 %or.cond188, label %if.end93.for.body78_crit_edge, label %if.end93.for.end109_crit_edge

if.end93.for.end109_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end109

if.end93.for.body78_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body78

for.end109:                                       ; preds = %if.end93.for.end109_crit_edge, %for.end.for.end109_crit_edge
  %87 = ptrtoint ptr %mmio8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio8, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %release, align 4
  call void %92(ptr noundef %88) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end109, %if.end48.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end109 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call22, %if.end17.cleanup_crit_edge ], [ %call64, %if.end48.cleanup_crit_edge ], [ %call45, %if.end32.cleanup_crit_edge ], [ %call29, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_object_get(ptr nocapture noundef readonly %base, i32 noundef %index, ptr nocapture noundef writeonly %sclass) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %c.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %oclass = getelementptr %struct.gf100_gr_func, ptr %1, i32 0, i32 39, i32 %c.0, i32 2
  %2 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oclass, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp = icmp eq i32 %c.0, %index
  br i1 %cmp, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx4 = getelementptr %struct.gf100_gr_func, ptr %1, i32 0, i32 39, i32 %index
  %4 = call ptr @memcpy(ptr %sclass, ptr %arrayidx4, i32 16)
  %ctor = getelementptr inbounds %struct.nvkm_sclass, ptr %sclass, i32 0, i32 4
  %5 = ptrtoint ptr %ctor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gf100_gr_object_new, ptr %ctor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %index, %if.then ], [ %c.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gf100_gr_chsw_load(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr i8, ptr %base, i32 1236
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %firmware, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %5, i32 4233244
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !662
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.end22_crit_edge, label %if.then.cleanup23_crit_edge

if.then.cleanup23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup23

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.else:                                          ; preds = %entry
  %add.ptr12 = getelementptr i8, ptr %5, i32 4233224
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !663
  %and15 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end22_crit_edge, label %if.else.cleanup23_crit_edge

if.else.cleanup23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup23

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  br label %cleanup23

cleanup23:                                        ; preds = %if.end22, %if.else.cleanup23_crit_edge, %if.then.cleanup23_crit_edge
  %retval.2 = phi i1 [ false, %if.end22 ], [ true, %if.else.cleanup23_crit_edge ], [ true, %if.then.cleanup23_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_fecs_stop_ctxsw(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %base, i32 672
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %disable = getelementptr i8, ptr %base, i32 764
  %0 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disable, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %call = tail call fastcc i32 @gf100_gr_fecs_ctrl_ctxsw(ptr noundef %add.ptr, i32 noundef 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end29_crit_edge, label %do.end, !prof !664

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 767, i32 noundef 9, ptr noundef null) #14
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disable, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %disable, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end29_crit_edge ], [ %call, %do.end ], [ 0, %if.then.if.end29_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_fecs_start_ctxsw(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %base, i32 672
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %disable = getelementptr i8, ptr %base, i32 764
  %0 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disable, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %call = tail call fastcc i32 @gf100_gr_fecs_ctrl_ctxsw(ptr noundef %add.ptr, i32 noundef 57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end29_crit_edge, label %do.end, !prof !664

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 752, i32 noundef 9, ptr noundef null) #14
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disable, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %disable, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end29_crit_edge ], [ %call, %do.end ], [ 0, %if.then.if.end29_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_ctxsw_inst(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4233984
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !665
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_pmu_pgob(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gf100_gr_chan_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 4
  %arrayidx = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 0
  %vma = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 0, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %1, ptr noundef %vma) #14
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx) #14
  %2 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmm, align 4
  %arrayidx.1 = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 1
  %vma.1 = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 1, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %3, ptr noundef %vma.1) #14
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx.1) #14
  %4 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmm, align 4
  %arrayidx.2 = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 2
  %vma.2 = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 2, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %5, ptr noundef %vma.2) #14
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx.2) #14
  %6 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmm, align 4
  %arrayidx.3 = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 3
  %vma.3 = getelementptr %struct.gf100_gr_chan, ptr %object, i32 0, i32 6, i32 3, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %7, ptr noundef %vma.3) #14
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx.3) #14
  %8 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vmm, align 4
  %mmio_vma = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 4
  tail call void @nvkm_vmm_put(ptr noundef %9, ptr noundef %mmio_vma) #14
  %mmio = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %mmio) #14
  tail call void @nvkm_vmm_unref(ptr noundef %vmm) #14
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_chan_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %size = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef %5, i32 noundef %align, i1 noundef zeroext false, ptr noundef %parent, ptr noundef %pgpuobj) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgpuobj, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2 = tail call ptr %11(ptr noundef %7) #14
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp73.not = icmp eq i32 %13, 0
  br i1 %cmp73.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %data = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgpuobj, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %div = sdiv i32 %i.074, 4
  %arrayidx = getelementptr i32, ptr %21, i32 %div
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  tail call void %19(ptr noundef %15, i32 noundef %i.074, i32 noundef %23) #14
  %add = add i32 %i.074, 4
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %add, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %firmware to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %firmware, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool4.not = icmp eq i8 %27, 0
  %28 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pgpuobj, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %wr326 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %wr326 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr326, align 4
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %mmio_nr = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 5
  %34 = ptrtoint ptr %mmio_nr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mmio_nr, align 8
  %div7 = sdiv i32 %35, 2
  tail call void %33(ptr noundef %29, i32 noundef 0, i32 noundef %div7) #14
  %36 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pgpuobj, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %wr328 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %wr328 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr328, align 4
  %mmio_vma = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 4
  %42 = ptrtoint ptr %mmio_vma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio_vma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addr, align 8
  %shr = lshr i64 %45, 8
  %conv = trunc i64 %shr to i32
  tail call void %41(ptr noundef %37, i32 noundef 4, i32 noundef %conv) #14
  br label %if.end28

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %33(ptr noundef %29, i32 noundef 244, i32 noundef 0) #14
  %46 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pgpuobj, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %wr3210 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %wr3210 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr3210, align 4
  tail call void %51(ptr noundef %47, i32 noundef 248, i32 noundef 0) #14
  %52 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pgpuobj, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %wr3211 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %wr3211 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr3211, align 4
  %mmio_nr12 = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 5
  %58 = ptrtoint ptr %mmio_nr12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mmio_nr12, align 8
  %div13 = sdiv i32 %59, 2
  tail call void %57(ptr noundef %53, i32 noundef 16, i32 noundef %div13) #14
  %60 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pgpuobj, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %wr3214 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %wr3214 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wr3214, align 4
  %mmio_vma15 = getelementptr inbounds %struct.gf100_gr_chan, ptr %object, i32 0, i32 4
  %66 = ptrtoint ptr %mmio_vma15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio_vma15, align 4
  %addr16 = getelementptr inbounds %struct.nvkm_vma, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %addr16 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %addr16, align 8
  %conv17 = trunc i64 %69 to i32
  tail call void %65(ptr noundef %61, i32 noundef 20, i32 noundef %conv17) #14
  %70 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pgpuobj, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %wr3218 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %wr3218 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr3218, align 4
  %76 = ptrtoint ptr %mmio_vma15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio_vma15, align 4
  %addr20 = getelementptr inbounds %struct.nvkm_vma, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %addr20 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %addr20, align 8
  %shr21 = lshr i64 %79, 32
  %conv23 = trunc i64 %shr21 to i32
  tail call void %75(ptr noundef %71, i32 noundef 24, i32 noundef %conv23) #14
  %80 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pgpuobj, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %wr3224 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %wr3224 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wr3224, align 4
  tail call void %85(ptr noundef %81, i32 noundef 28, i32 noundef 1) #14
  %86 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pgpuobj, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %wr3225 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %wr3225 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr3225, align 4
  tail call void %91(ptr noundef %87, i32 noundef 32, i32 noundef 0) #14
  %92 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pgpuobj, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %wr3226 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %wr3226 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wr3226, align 4
  tail call void %97(ptr noundef %93, i32 noundef 40, i32 noundef 0) #14
  %98 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pgpuobj, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %wr3227 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %wr3227 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wr3227, align 4
  tail call void %103(ptr noundef %99, i32 noundef 44, i32 noundef 0) #14
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then5
  %104 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pgpuobj, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %release, align 4
  tail call void %109(ptr noundef %105) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_gr_object_new(ptr noundef %oclass, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %pobject, align 4
  %func = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  %tobool2.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool2.not, ptr @gf100_gr_object_func, ptr %5
  tail call void @nvkm_object_ctor(ptr noundef nonnull %spec.select, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #14
  %chan6 = getelementptr inbounds %struct.gf100_gr_object, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %chan6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %chan6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gf100_gr_fecs_ctrl_ctxsw(ptr nocapture noundef readonly %gr, i32 noundef %mthd) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !666
  tail call void @arm_heavy_mb() #14
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4233220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !667
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 4233280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !668
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 4232448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -1) #14, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !669
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 4232452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %mthd) #14, !srcloc !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #14
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #14
  br label %do.body17

do.body17:                                        ; preds = %do.cond23.do.body17_crit_edge, %entry
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 4233220
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #14, !srcloc !451
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !670
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %13, label %do.cond23 [
    i32 2, label %cleanup60.loopexit
    i32 1, label %do.body17.cleanup60_crit_edge
  ]

do.body17.cleanup60_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup60

do.cond23:                                        ; preds = %do.body17
  %call24 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #14
  %cmp25 = icmp sgt i64 %call24, -1
  br i1 %cmp25, label %do.cond23.do.body17_crit_edge, label %do.end36

do.cond23.do.body17_crit_edge:                    ; preds = %do.cond23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

do.end36:                                         ; preds = %do.cond23
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device38 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device38, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call39 = call ptr @dev_driver_string(ptr noundef %20) #14
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device42 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device42, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev43, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end36._crit_edge

do.end36._crit_edge:                              ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %31

if.end.i:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %31

cleanup60.loopexit:                               ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup60.loopexit, %do.body17.cleanup60_crit_edge
  %retval.1.ph = phi i32 [ -5, %cleanup60.loopexit ], [ 0, %do.body17.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #14
  br label %32

31:                                               ; preds = %if.end.i, %do.end36._crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end36._crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 739, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call39, ptr noundef %retval.0.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #14
  br label %32

32:                                               ; preds = %31, %cleanup60
  %33 = phi i32 [ -110, %31 ], [ %retval.1.ph, %cleanup60 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_bind_context(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 222)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 222)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !138, !140, !142, !143, !144, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !346, !348, !350, !352, !354, !356, !358, !360, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !417, !418, !419, !421, !423, !425}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433, !434}
!llvm.ident = !{!435}

!0 = !{ptr @gf100_gr_zbc, !1, !"gf100_gr_zbc", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 145, i32 1}
!2 = !{ptr @gf100_fermi, !3, !"gf100_fermi", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 246, i32 1}
!4 = !{ptr @gf100_gr_init_main_0, !5, !"gf100_gr_init_main_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 463, i32 1}
!6 = !{ptr @gf100_gr_init_fe_0, !7, !"gf100_gr_init_fe_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 479, i32 1}
!8 = !{ptr @gf100_gr_init_pri_0, !9, !"gf100_gr_init_pri_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 486, i32 1}
!10 = !{ptr @gf100_gr_init_rstr2d_0, !11, !"gf100_gr_init_rstr2d_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 492, i32 1}
!12 = !{ptr @gf100_gr_init_pd_0, !13, !"gf100_gr_init_pd_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 498, i32 1}
!14 = !{ptr @gf100_gr_init_ds_0, !15, !"gf100_gr_init_ds_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 504, i32 1}
!16 = !{ptr @gf100_gr_init_scc_0, !17, !"gf100_gr_init_scc_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 512, i32 1}
!18 = !{ptr @gf100_gr_init_prop_0, !19, !"gf100_gr_init_prop_0", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 518, i32 1}
!20 = !{ptr @gf100_gr_init_gpc_unk_0, !21, !"gf100_gr_init_gpc_unk_0", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 524, i32 1}
!22 = !{ptr @gf100_gr_init_setup_0, !23, !"gf100_gr_init_setup_0", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 533, i32 1}
!24 = !{ptr @gf100_gr_init_crstr_0, !25, !"gf100_gr_init_crstr_0", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 539, i32 1}
!26 = !{ptr @gf100_gr_init_setup_1, !27, !"gf100_gr_init_setup_1", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 545, i32 1}
!28 = !{ptr @gf100_gr_init_zcull_0, !29, !"gf100_gr_init_zcull_0", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 554, i32 1}
!30 = !{ptr @gf100_gr_init_gpm_0, !31, !"gf100_gr_init_gpm_0", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 564, i32 1}
!32 = !{ptr @gf100_gr_init_gpc_unk_1, !33, !"gf100_gr_init_gpc_unk_1", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 571, i32 1}
!34 = !{ptr @gf100_gr_init_gcc_0, !35, !"gf100_gr_init_gcc_0", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 580, i32 1}
!36 = !{ptr @gf100_gr_init_tpccs_0, !37, !"gf100_gr_init_tpccs_0", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 587, i32 1}
!38 = !{ptr @gf100_gr_init_tex_0, !39, !"gf100_gr_init_tex_0", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 594, i32 1}
!40 = !{ptr @gf100_gr_init_pe_0, !41, !"gf100_gr_init_pe_0", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 602, i32 1}
!42 = !{ptr @gf100_gr_init_l1c_0, !43, !"gf100_gr_init_l1c_0", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 611, i32 1}
!44 = !{ptr @gf100_gr_init_wwdx_0, !45, !"gf100_gr_init_wwdx_0", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 622, i32 1}
!46 = !{ptr @gf100_gr_init_tpccs_1, !47, !"gf100_gr_init_tpccs_1", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 629, i32 1}
!48 = !{ptr @gf100_gr_init_mpc_0, !49, !"gf100_gr_init_mpc_0", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 635, i32 1}
!50 = !{ptr @gf100_gr_init_be_0, !51, !"gf100_gr_init_be_0", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 659, i32 1}
!52 = !{ptr @gf100_gr_init_fe_1, !53, !"gf100_gr_init_fe_1", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 671, i32 1}
!54 = !{ptr @gf100_gr_init_pe_1, !55, !"gf100_gr_init_pe_1", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 677, i32 1}
!56 = !{ptr @.str, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 782, i32 2}
!58 = !{ptr @.str.1, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1013, i32 2}
!61 = !{ptr @.str.3, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gf100_gr_wait_idle._entry, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @gf100_gr_wait_idle._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.6, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1196, i32 10}
!68 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1197, i32 10}
!70 = !{ptr @.str.8, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1198, i32 10}
!72 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1199, i32 10}
!74 = !{ptr @.str.10, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1200, i32 10}
!76 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1201, i32 10}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1202, i32 10}
!80 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1203, i32 10}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1204, i32 10}
!84 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1205, i32 10}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1206, i32 10}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1207, i32 10}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1208, i32 10}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1209, i32 10}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1210, i32 10}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1211, i32 10}
!98 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1212, i32 10}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1213, i32 10}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1214, i32 10}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1215, i32 10}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1216, i32 10}
!108 = !{ptr @gf100_mp_warp_error, !109, !"gf100_mp_warp_error", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1195, i32 24}
!110 = !{ptr @.str.27, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1221, i32 16}
!112 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1222, i32 16}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1223, i32 16}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1224, i32 16}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1225, i32 16}
!120 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1226, i32 16}
!122 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1227, i32 16}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1228, i32 16}
!126 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1229, i32 16}
!128 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1230, i32 16}
!130 = !{ptr @gf100_mp_global_error, !131, !"gf100_mp_global_error", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1220, i32 28}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1247, i32 2}
!134 = !{ptr @.str.38, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @gf100_gr_trap_mp._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @gf100_gr_trap_mp._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"primes", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1868, i32 18}
!140 = !{ptr @.str.40, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2104, i32 9}
!142 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2111, i32 11}
!146 = !{ptr @gf100_gr_new_.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2115, i32 2}
!148 = !{ptr @.str.44, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2118, i32 11}
!151 = !{ptr @gf100_gr_fecs_ucode, !152, !"gf100_gr_fecs_ucode", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2377, i32 1}
!153 = !{ptr @gf100_gr_gpccs_ucode, !154, !"gf100_gr_gpccs_ucode", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2387, i32 1}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2465, i32 36}
!157 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2468, i32 27}
!159 = !{ptr @.str.48, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2469, i32 27}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2470, i32 27}
!163 = !{ptr @.str.50, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2471, i32 27}
!165 = !{ptr @.str.51, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 233, i32 2}
!167 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @gf100_fermi_mthd._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @gf100_fermi_mthd._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.53, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1479, i32 2}
!172 = !{ptr @.str.54, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @gf100_gr_ctxctl_debug_unit._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @gf100_gr_ctxctl_debug_unit._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.56, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1481, i32 2}
!177 = !{ptr @gf100_gr_ctxctl_debug_unit._entry.55, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @gf100_gr_ctxctl_debug_unit._entry_ptr.57, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @gf100_gr_ctxctl_debug_unit._entry.58, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1486, i32 2}
!181 = !{ptr @gf100_gr_ctxctl_debug_unit._entry_ptr.59, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.60, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1770, i32 4}
!184 = !{ptr @.str.61, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @gf100_gr_init_ctxctl_ext._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @gf100_gr_init_ctxctl_ext._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.62, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1829, i32 4}
!189 = !{ptr @gf100_gr_init_ctxctl_int._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @gf100_gr_init_ctxctl_int._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @gf100_gr_, !192, !"gf100_gr_", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2059, i32 1}
!193 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2003, i32 39}
!195 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1561, i32 21}
!197 = !{ptr @.str.65, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1586, i32 4}
!199 = !{ptr @.str.66, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @gf100_gr_intr._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @gf100_gr_intr._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.68, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1596, i32 3}
!204 = !{ptr @gf100_gr_intr._entry.67, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @gf100_gr_intr._entry_ptr.69, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1606, i32 3}
!208 = !{ptr @gf100_gr_intr._entry.70, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @gf100_gr_intr._entry_ptr.72, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.74, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1615, i32 3}
!212 = !{ptr @gf100_gr_intr._entry.73, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @gf100_gr_intr._entry_ptr.75, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.77, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1629, i32 3}
!216 = !{ptr @gf100_gr_intr._entry.76, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @gf100_gr_intr._entry_ptr.78, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1362, i32 3}
!220 = !{ptr @.str.80, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @gf100_gr_trap_intr._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @gf100_gr_trap_intr._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.82, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1373, i32 3}
!225 = !{ptr @gf100_gr_trap_intr._entry.81, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @gf100_gr_trap_intr._entry_ptr.83, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.85, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1385, i32 3}
!229 = !{ptr @gf100_gr_trap_intr._entry.84, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @gf100_gr_trap_intr._entry_ptr.86, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.88, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1393, i32 3}
!233 = !{ptr @gf100_gr_trap_intr._entry.87, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @gf100_gr_trap_intr._entry_ptr.89, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.91, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1405, i32 3}
!237 = !{ptr @gf100_gr_trap_intr._entry.90, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @gf100_gr_trap_intr._entry_ptr.92, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.94, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1419, i32 3}
!241 = !{ptr @gf100_gr_trap_intr._entry.93, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @gf100_gr_trap_intr._entry_ptr.95, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.96, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.98, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1433, i32 3}
!246 = !{ptr @gf100_gr_trap_intr._entry.97, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @gf100_gr_trap_intr._entry_ptr.99, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.101, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1459, i32 4}
!250 = !{ptr @gf100_gr_trap_intr._entry.100, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @gf100_gr_trap_intr._entry_ptr.102, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1469, i32 3}
!254 = !{ptr @gf100_gr_trap_intr._entry.103, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @gf100_gr_trap_intr._entry_ptr.105, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.106, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1113, i32 16}
!258 = !{ptr @.str.107, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1114, i32 16}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1115, i32 16}
!262 = !{ptr @gf100_dispatch_error, !263, !"gf100_dispatch_error", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1112, i32 35}
!264 = !{ptr @.str.109, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1120, i32 16}
!266 = !{ptr @.str.110, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1121, i32 16}
!268 = !{ptr @gf100_m2mf_error, !269, !"gf100_m2mf_error", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1119, i32 35}
!270 = !{ptr @.str.111, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1131, i32 16}
!272 = !{ptr @.str.112, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1132, i32 16}
!274 = !{ptr @gf100_ccache_error, !275, !"gf100_ccache_error", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1130, i32 35}
!276 = !{ptr @.str.113, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1126, i32 16}
!278 = !{ptr @gf100_unk6_error, !279, !"gf100_unk6_error", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1125, i32 35}
!280 = !{ptr @.str.114, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1137, i32 16}
!282 = !{ptr @.str.115, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1138, i32 16}
!284 = !{ptr @.str.116, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1139, i32 16}
!286 = !{ptr @.str.117, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1140, i32 16}
!288 = !{ptr @.str.118, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1141, i32 16}
!290 = !{ptr @gf100_macro_error, !291, !"gf100_macro_error", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1136, i32 35}
!292 = !{ptr @.str.119, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1146, i32 16}
!294 = !{ptr @.str.120, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1147, i32 16}
!296 = !{ptr @.str.121, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1148, i32 16}
!298 = !{ptr @.str.122, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1149, i32 16}
!300 = !{ptr @.str.123, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1150, i32 16}
!302 = !{ptr @.str.124, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1151, i32 16}
!304 = !{ptr @.str.125, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1152, i32 16}
!306 = !{ptr @.str.126, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1153, i32 16}
!308 = !{ptr @.str.127, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1154, i32 16}
!310 = !{ptr @.str.128, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1155, i32 16}
!312 = !{ptr @.str.129, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1156, i32 16}
!314 = !{ptr @.str.130, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1157, i32 16}
!316 = !{ptr @.str.131, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1158, i32 16}
!318 = !{ptr @.str.132, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1159, i32 16}
!320 = !{ptr @gk104_sked_error, !321, !"gk104_sked_error", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1145, i32 35}
!322 = !{ptr @.str.133, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1315, i32 3}
!324 = !{ptr @.str.134, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @gf100_gr_trap_gpc._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @gf100_gr_trap_gpc._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.136, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1322, i32 3}
!329 = !{ptr @gf100_gr_trap_gpc._entry.135, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @gf100_gr_trap_gpc._entry_ptr.137, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.139, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1329, i32 3}
!333 = !{ptr @gf100_gr_trap_gpc._entry.138, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @gf100_gr_trap_gpc._entry_ptr.140, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1344, i32 3}
!337 = !{ptr @gf100_gr_trap_gpc._entry.141, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @gf100_gr_trap_gpc._entry_ptr.143, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.144, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1188, i32 2}
!341 = !{ptr @.str.145, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @gf100_gr_trap_gpc_rop._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @gf100_gr_trap_gpc_rop._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.146, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1164, i32 16}
!346 = !{ptr @.str.147, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1165, i32 16}
!348 = !{ptr @.str.148, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1166, i32 16}
!350 = !{ptr @.str.149, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1167, i32 16}
!352 = !{ptr @.str.150, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1168, i32 16}
!354 = !{ptr @.str.151, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1169, i32 16}
!356 = !{ptr @gf100_gpc_rop_error, !357, !"gf100_gpc_rop_error", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1163, i32 35}
!358 = !{ptr @.str.152, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1264, i32 3}
!360 = !{ptr @.str.153, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @gf100_gr_trap_tpc._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @gf100_gr_trap_tpc._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.155, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1276, i32 3}
!365 = !{ptr @gf100_gr_trap_tpc._entry.154, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @gf100_gr_trap_tpc._entry_ptr.156, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.158, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1283, i32 3}
!369 = !{ptr @gf100_gr_trap_tpc._entry.157, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @gf100_gr_trap_tpc._entry_ptr.159, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.161, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1290, i32 3}
!373 = !{ptr @gf100_gr_trap_tpc._entry.160, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @gf100_gr_trap_tpc._entry_ptr.162, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.164, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1296, i32 3}
!377 = !{ptr @gf100_gr_trap_tpc._entry.163, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @gf100_gr_trap_tpc._entry_ptr.165, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.166, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1521, i32 4}
!381 = !{ptr @.str.167, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @gf100_gr_ctxctl_isr._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @gf100_gr_ctxctl_isr._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.169, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1525, i32 4}
!386 = !{ptr @gf100_gr_ctxctl_isr._entry.168, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @gf100_gr_ctxctl_isr._entry_ptr.170, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.172, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1532, i32 3}
!390 = !{ptr @gf100_gr_ctxctl_isr._entry.171, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @gf100_gr_ctxctl_isr._entry_ptr.173, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.175, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 1539, i32 3}
!394 = !{ptr @gf100_gr_ctxctl_isr._entry.174, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @gf100_gr_ctxctl_isr._entry_ptr.176, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @gf100_gr_chan, !397, !"gf100_gr_chan", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 372, i32 1}
!398 = !{ptr @gf100_gr_object_func, !399, !"gf100_gr_object_func", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 278, i32 1}
!400 = !{ptr @gf100_gr_flcn, !401, !"gf100_gr_flcn", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2075, i32 1}
!402 = !{ptr @gf100_grhub_code, !403, !"gf100_grhub_code", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgf100.fuc3.h", i32 209, i32 17}
!404 = !{ptr @gf100_grhub_data, !405, !"gf100_grhub_data", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgf100.fuc3.h", i32 2, i32 17}
!406 = !{ptr @gf100_grgpc_code, !407, !"gf100_grgpc_code", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgf100.fuc3.h", i32 40, i32 17}
!408 = !{ptr @gf100_grgpc_data, !409, !"gf100_grgpc_data", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgf100.fuc3.h", i32 2, i32 17}
!410 = !{ptr @.str.180, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2443, i32 25}
!412 = !{ptr @.str.181, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2446, i32 26}
!414 = !{ptr @.str.182, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2449, i32 4}
!416 = !{ptr @.str.183, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @gf100_gr_load_fw._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @gf100_gr_load_fw._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @gf100_gr_fwif, !420, !"gf100_gr_fwif", i1 false, i1 false}
!420 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2479, i32 1}
!421 = !{ptr @gf100_gr, !422, !"gf100_gr", i1 false, i1 false}
!422 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 2395, i32 1}
!423 = !{ptr @gf100_gr_pack_mmio, !424, !"gf100_gr_pack_mmio", i1 false, i1 false}
!424 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 683, i32 1}
!425 = !{ptr @gf100_gr_init_sm_0, !426, !"gf100_gr_init_sm_0", i1 false, i1 false}
!426 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf100.c", i32 641, i32 1}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 1, !"min_enum_size", i32 4}
!429 = !{i32 8, !"branch-target-enforcement", i32 0}
!430 = !{i32 8, !"sign-return-address", i32 0}
!431 = !{i32 8, !"sign-return-address-all", i32 0}
!432 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!433 = !{i32 7, !"uwtable", i32 1}
!434 = !{i32 7, !"frame-pointer", i32 2}
!435 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!436 = !{i64 2156405590}
!437 = !{i64 5468108}
!438 = !{i64 2156406045}
!439 = !{i64 2156406500}
!440 = !{i64 2156406955}
!441 = !{i64 2156407412}
!442 = !{i64 2156407826}
!443 = !{i64 2156408232}
!444 = !{i64 2156409183}
!445 = !{i64 2156409637}
!446 = !{i64 2156410051}
!447 = !{i64 2156410457}
!448 = !{i64 2156453531}
!449 = !{i64 2156453932}
!450 = !{i64 2156454339}
!451 = !{i64 5468526}
!452 = !{i64 2156456348}
!453 = !{i64 2156485517}
!454 = !{i64 2156485902}
!455 = !{i64 2156486278}
!456 = !{i64 2156486657}
!457 = !{i64 2156487042}
!458 = !{i64 2156490716}
!459 = !{i64 2156491129}
!460 = !{i64 2156491729}
!461 = !{i64 2156492130}
!462 = !{i64 2156494011}
!463 = !{i64 2156495248}
!464 = !{i64 2156495848}
!465 = !{i64 2156496279}
!466 = !{i64 2156504197}
!467 = !{i64 2156504795}
!468 = !{i64 2156508260}
!469 = !{i64 2156508823}
!470 = !{i64 2156590391}
!471 = !{i64 2156576507}
!472 = !{i64 2156584096}
!473 = !{i64 2156584493}
!474 = !{i64 2156584890}
!475 = !{i64 2156585287}
!476 = !{i64 2156588815}
!477 = !{i64 2156589212}
!478 = !{i64 2156589609}
!479 = !{i64 2156590006}
!480 = !{i8 0, i8 2}
!481 = !{i64 2156628238}
!482 = !{i64 2156628651}
!483 = !{i64 2156629064}
!484 = !{i64 2156630939}
!485 = !{i64 2156482111}
!486 = !{i64 2156482518}
!487 = !{i64 2156482928}
!488 = !{i64 2156478170}
!489 = !{i64 2156478583}
!490 = !{i64 2156478996}
!491 = !{i64 2156480882}
!492 = !{i64 2156474229}
!493 = !{i64 2156474642}
!494 = !{i64 2156475055}
!495 = !{i64 2156476941}
!496 = !{i64 2156470288}
!497 = !{i64 2156470701}
!498 = !{i64 2156471114}
!499 = !{i64 2156473000}
!500 = !{i64 2156634487}
!501 = !{i64 2156634900}
!502 = !{i64 2156636775}
!503 = !{i64 2156638055}
!504 = !{i64 2156655537}
!505 = !{i64 2156655952}
!506 = !{i64 2156656405}
!507 = !{i64 2156656980}
!508 = !{i64 2156657555}
!509 = !{i64 2156658130}
!510 = !{i64 2156658971}
!511 = !{i64 2156659373}
!512 = !{i64 2156660246}
!513 = !{i64 2156660648}
!514 = !{i64 2156661255}
!515 = !{i64 2156661714}
!516 = !{i64 2156662161}
!517 = !{i64 2156663367}
!518 = !{i64 2156663620}
!519 = !{i64 2156663987}
!520 = !{i64 2156664400}
!521 = !{i64 2156664813}
!522 = !{i64 2156665226}
!523 = !{i64 2156665639}
!524 = !{i64 2156666163}
!525 = !{i64 2156666722}
!526 = !{i64 2156667997}
!527 = !{i64 2156668250}
!528 = !{i64 2156669043}
!529 = !{i64 2156669639}
!530 = !{i64 2156670250}
!531 = !{i64 2156670800}
!532 = !{i64 2156671270}
!533 = !{i64 2156672215}
!534 = !{i64 2156672617}
!535 = !{i64 2156673062}
!536 = !{i64 2156673475}
!537 = !{i64 2156673888}
!538 = !{i64 2156674301}
!539 = !{i64 2156674714}
!540 = !{i64 2156675127}
!541 = !{i64 2156675540}
!542 = !{i64 2156675953}
!543 = !{i64 2156676366}
!544 = !{i64 2156676779}
!545 = !{i64 2156677192}
!546 = !{i64 2156677716}
!547 = !{i64 2156678240}
!548 = !{i64 2156678764}
!549 = !{i64 2156679288}
!550 = !{i64 2156679863}
!551 = !{i64 2156680438}
!552 = !{i64 2156681013}
!553 = !{i64 2156681537}
!554 = !{i64 2156682061}
!555 = !{i64 2156682579}
!556 = !{i64 2156683097}
!557 = !{i64 2156683615}
!558 = !{i64 2156684133}
!559 = !{i64 2156684546}
!560 = !{i64 2156684959}
!561 = !{i64 2156685372}
!562 = !{i64 2156685785}
!563 = !{i64 2156686198}
!564 = !{i64 2156686611}
!565 = !{!"auto-init"}
!566 = !{i64 2156624431}
!567 = !{i64 2156624919}
!568 = !{i64 2156625325}
!569 = !{i64 2156625695}
!570 = !{i64 2156626307}
!571 = !{i64 2156626750}
!572 = !{i64 2156627210}
!573 = !{i64 2156627644}
!574 = !{i64 2156642317}
!575 = !{i64 2156642839}
!576 = !{i64 2156644889}
!577 = !{i64 2156647473}
!578 = !{i64 2156647875}
!579 = !{i64 2156648363}
!580 = !{i64 2156649133}
!581 = !{i64 2156649535}
!582 = !{i64 2156650023}
!583 = !{i64 2156604518}
!584 = !{i64 2156604903}
!585 = !{i64 2156605288}
!586 = !{i64 2156605673}
!587 = !{i64 2156606058}
!588 = !{i64 2156606482}
!589 = !{i64 2156606824}
!590 = !{i64 2156434450}
!591 = !{i64 2156434923}
!592 = !{i64 2156610446}
!593 = !{i64 2156614033}
!594 = !{i64 2156617876}
!595 = !{i64 2156539318}
!596 = !{i64 2156539703}
!597 = !{i64 2156542295}
!598 = !{i64 2156542708}
!599 = !{i64 2156543164}
!600 = !{i64 2156545708}
!601 = !{i64 2156546121}
!602 = !{i64 2156546577}
!603 = !{i64 2156549145}
!604 = !{i64 2156549558}
!605 = !{i64 2156550014}
!606 = !{i64 2156553013}
!607 = !{i64 2156553426}
!608 = !{i64 2156553882}
!609 = !{i64 2156556426}
!610 = !{i64 2156556839}
!611 = !{i64 2156557295}
!612 = !{i64 2156557680}
!613 = !{i64 2156558065}
!614 = !{i64 2156561268}
!615 = !{i64 2156561681}
!616 = !{i64 2156562137}
!617 = !{i64 2156564693}
!618 = !{i64 2156565106}
!619 = !{i64 2156565562}
!620 = !{i64 2156526305}
!621 = !{i64 2156498114}
!622 = !{i64 2156498644}
!623 = !{i64 2156499174}
!624 = !{i64 2156499704}
!625 = !{i64 2156503528}
!626 = !{i64 2156526835}
!627 = !{i64 2156529516}
!628 = !{i64 2156530117}
!629 = !{i64 2156532810}
!630 = !{i64 2156533411}
!631 = !{i64 2156536104}
!632 = !{i64 2156509490}
!633 = !{i64 2156510092}
!634 = !{i64 2156512900}
!635 = !{i64 2156513573}
!636 = !{i64 2156516393}
!637 = !{i64 2156517066}
!638 = !{i64 2156519874}
!639 = !{i64 2156520547}
!640 = !{i64 2156523355}
!641 = !{i64 2156536616}
!642 = !{i64 2156565892}
!643 = !{i64 2156566299}
!644 = !{i64 2156566892}
!645 = !{i64 2156567414}
!646 = !{i64 2156570105}
!647 = !{i64 2156570623}
!648 = !{i64 2156571036}
!649 = !{i64 2156573664}
!650 = !{i64 2156620654}
!651 = !{i64 2156590776}
!652 = !{i64 2156591161}
!653 = !{i64 2156591557}
!654 = !{i64 2156591942}
!655 = !{i64 2156592327}
!656 = !{i64 2156597698}
!657 = !{i64 2156600335}
!658 = !{i64 2156602843}
!659 = !{i64 2156621067}
!660 = !{i64 2156623575}
!661 = !{i64 2156623982}
!662 = !{i64 2156484678}
!663 = !{i64 2156485132}
!664 = !{!"branch_weights", i32 2000, i32 1}
!665 = !{i64 2156445023}
!666 = !{i64 2156445365}
!667 = !{i64 2156445778}
!668 = !{i64 2156446191}
!669 = !{i64 2156446592}
!670 = !{i64 2156448599}
