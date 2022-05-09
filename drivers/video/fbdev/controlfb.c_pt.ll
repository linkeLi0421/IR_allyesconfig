; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/controlfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/controlfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.max_cmodes = type { [2 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_info_control = type { %struct.fb_info, %struct.fb_par_control, [16 x i32], ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { ptr }
%struct.fb_par_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.control_regvals, i32, i8 }
%struct.control_regvals = type { [16 x i32], i8, i8, [3 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__initcall__kmod_controlfb__307_1027_control_init6 = internal global ptr @control_init, section ".initcall6.init", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"controlfb\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vmode:\00", [25 x i8] zeroinitializer }, align 32
@control_mac_modes = internal constant { [22 x %struct.max_cmodes], [48 x i8] } { [22 x %struct.max_cmodes] [%struct.max_cmodes { [2 x i32] [i32 -1, i32 -1] }, %struct.max_cmodes { [2 x i32] [i32 -1, i32 -1] }, %struct.max_cmodes { [2 x i32] [i32 -1, i32 -1] }, %struct.max_cmodes { [2 x i32] [i32 -1, i32 -1] }, %struct.max_cmodes { [2 x i32] [i32 2, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 2, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 -1, i32 -1] }, %struct.max_cmodes { [2 x i32] [i32 -1, i32 -1] }, %struct.max_cmodes { [2 x i32] [i32 2, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 2, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 2, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 2, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 0, i32 1] }, %struct.max_cmodes { [2 x i32] [i32 0, i32 1] }, %struct.max_cmodes { [2 x i32] [i32 1, i32 2] }, %struct.max_cmodes { [2 x i32] [i32 0, i32 1] }], [48 x i8] zeroinitializer }, align 32
@default_vmode = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmode:\00", [25 x i8] zeroinitializer }, align 32
@default_cmode = internal unnamed_addr global i32 -1, section ".init.data", align 4
@control_fb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@control_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013controlfb: only one control is supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"control_of_init\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/video/fbdev/controlfb.c\00", [32 x i8] zeroinitializer }, align 32
@control_of_init._entry_ptr = internal global ptr @control_of_init._entry, section ".printk_index", align 4
@control_of_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013can't get 2 addresses for control\0A\00", [59 x i8] zeroinitializer }, align 32
@control_of_init._entry_ptr.10 = internal global ptr @control_of_init._entry.8, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"controlfb regs\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"controlfb cmap\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@find_vram_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016controlfb: VRAM Total = %dMB (%dMB @ bank 1, %dMB @ bank 2)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"find_vram_size\00", [17 x i8] zeroinitializer }, align 32
@find_vram_size._entry_ptr = internal global ptr @find_vram_size._entry, section ".printk_index", align 4
@init_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016controlfb: \00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_control\00", [19 x i8] zeroinitializer }, align 32
@init_control._entry_ptr = internal global ptr @init_control._entry, section ".printk_index", align 4
@init_control._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.7, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01cMonitor sense value = 0x%x, \00", [33 x i8] zeroinitializer }, align 32
@init_control._entry_ptr.19 = internal global ptr @init_control._entry.17, section ".printk_index", align 4
@init_control._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.7, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mac_vmode_to_var(%d, %d,) failed\0A\00", [62 x i8] zeroinitializer }, align 32
@init_control._entry_ptr.22 = internal global ptr @init_control._entry.20, section ".printk_index", align 4
@init_control._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.7, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013controlfb: mac_vmode_to_var() failed\0A\00", [56 x i8] zeroinitializer }, align 32
@init_control._entry_ptr.25 = internal global ptr @init_control._entry.23, section ".printk_index", align 4
@init_control._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_control._entry_ptr.27 = internal global ptr @init_control._entry.26, section ".printk_index", align 4
@init_control._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.7, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"using video mode %d and color mode %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@init_control._entry_ptr.30 = internal global ptr @init_control._entry.28, section ".printk_index", align 4
@init_control._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.7, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016fb%d: control display adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@init_control._entry_ptr.33 = internal global ptr @init_control._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@controlfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @controlfb_check_var, ptr @controlfb_set_par, ptr @controlfb_setcolreg, ptr null, ptr @controlfb_blank, ptr @controlfb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr @controlfb_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@controlfb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013controlfb_set_par: error calling control_var_to_par: %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"controlfb_set_par\00", [46 x i8] zeroinitializer }, align 32
@controlfb_set_par._entry_ptr = internal global ptr @controlfb_set_par._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 15, i64 16, i64 32]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1015, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1019, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 813, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 814, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"control_mac_modes\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [35 x i8] c"../drivers/video/fbdev/controlfb.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 119, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 819, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"control_fb\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 148, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 947, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 953, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 978, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 986, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 344, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 852, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 869, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 882, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 887, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 890, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 892, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 908, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"controlfb_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 764, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/video/fbdev/controlfb.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 662, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__initcall__kmod_controlfb__307_1027_control_init6, ptr @control_of_init._entry, ptr @control_of_init._entry.8, ptr @control_of_init._entry_ptr, ptr @control_of_init._entry_ptr.10, ptr @controlfb_set_par._entry, ptr @controlfb_set_par._entry_ptr, ptr @find_vram_size._entry, ptr @find_vram_size._entry_ptr, ptr @init_control._entry, ptr @init_control._entry.17, ptr @init_control._entry.20, ptr @init_control._entry.23, ptr @init_control._entry.26, ptr @init_control._entry.28, ptr @init_control._entry.31, ptr @init_control._entry_ptr, ptr @init_control._entry_ptr.19, ptr @init_control._entry_ptr.22, ptr @init_control._entry_ptr.25, ptr @init_control._entry_ptr.27, ptr @init_control._entry_ptr.30, ptr @init_control._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @control_mac_modes, ptr @.str.4, ptr @control_fb, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.32, ptr @controlfb_ops, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mac_modes to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_fb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_of_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_vram_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_control._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controlfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controlfb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @control_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @control_setup(ptr noundef %2) #13
  %call1 = call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.1) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call fastcc i32 @control_of_init(ptr noundef nonnull %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -6
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ -6, %if.end.if.end6_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @of_node_put(ptr noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @control_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call30 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.2) #10
  %cmp.not31 = icmp eq ptr %call30, null
  br i1 %cmp.not31, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call32 = phi ptr [ %call, %if.end22.while.body_crit_edge ], [ %call30, %while.cond.preheader.while.body_crit_edge ]
  %call2 = call i32 @strncmp(ptr noundef nonnull %call32, ptr noundef nonnull dereferenceable(7) @.str.3, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %call32, i32 6
  %call5 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #10
  %3 = add i32 %call5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %3)
  %4 = icmp ult i32 %3, 22
  br i1 %4, label %land.lhs.true8, label %if.then4.if.end22_crit_edge

if.then4.if.end22_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true8:                                   ; preds = %if.then4
  %sub = add nuw nsw i32 %call5, 536870911
  %5 = and i32 %sub, 536870911
  %6 = lshr i32 4194096, %5
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not = icmp eq i32 %7, 0
  br i1 %cmp10.not, label %land.lhs.true8.if.end22_crit_edge, label %if.then11

land.lhs.true8.if.end22_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %call5, ptr @default_vmode, align 4
  br label %if.end22

if.else:                                          ; preds = %while.body
  %call13 = call i32 @strncmp(ptr noundef nonnull %call32, ptr noundef nonnull dereferenceable(7) @.str.4, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then15:                                        ; preds = %if.else
  %add.ptr16 = getelementptr i8, ptr %call32, i32 6
  %call17 = call i32 @simple_strtoul(ptr noundef %add.ptr16, ptr noundef null, i32 noundef 0) #10
  %8 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %if.then15.if.end22_crit_edge [
    i32 0, label %if.then15.sw.bb_crit_edge
    i32 1, label %if.then15.sw.bb_crit_edge33
    i32 2, label %if.then15.sw.bb_crit_edge34
    i32 8, label %sw.bb18
    i32 15, label %if.then15.sw.bb19_crit_edge
    i32 16, label %if.then15.sw.bb19_crit_edge35
    i32 24, label %if.then15.sw.bb20_crit_edge
    i32 32, label %if.then15.sw.bb20_crit_edge36
  ]

if.then15.sw.bb20_crit_edge36:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.then15.sw.bb20_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.then15.sw.bb19_crit_edge35:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.then15.sw.bb19_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.then15.sw.bb_crit_edge34:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then15.sw.bb_crit_edge33:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then15.sw.bb_crit_edge:                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

sw.bb:                                            ; preds = %if.then15.sw.bb_crit_edge, %if.then15.sw.bb_crit_edge33, %if.then15.sw.bb_crit_edge34
  store i32 %call17, ptr @default_cmode, align 4
  br label %if.end22

sw.bb18:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @default_cmode, align 4
  br label %if.end22

sw.bb19:                                          ; preds = %if.then15.sw.bb19_crit_edge, %if.then15.sw.bb19_crit_edge35
  store i32 1, ptr @default_cmode, align 4
  br label %if.end22

sw.bb20:                                          ; preds = %if.then15.sw.bb20_crit_edge, %if.then15.sw.bb20_crit_edge36
  store i32 2, ptr @default_cmode, align 4
  br label %if.end22

if.end22:                                         ; preds = %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb, %if.then15.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then11, %land.lhs.true8.if.end22_crit_edge, %if.then4.if.end22_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.2) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end22.cleanup_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @control_of_init(ptr noundef %dp) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %fb_res = alloca %struct.resource, align 4
  %reg_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fb_res) #10
  %0 = getelementptr inbounds %struct.resource, ptr %fb_res, i32 0, i32 1
  %1 = call ptr @memset(ptr %fb_res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reg_res) #10
  %2 = getelementptr inbounds %struct.resource, ptr %reg_res, i32 0, i32 1
  %3 = call ptr @memset(ptr %reg_res, i32 255, i32 32)
  %4 = load ptr, ptr @control_fb, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_pci_address_to_resource(ptr noundef %dp, i32 noundef 2, ptr noundef nonnull %fb_res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32 @of_pci_address_to_resource(ptr noundef %dp, i32 noundef 1, ptr noundef nonnull %reg_res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1344) #15
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  store ptr %call7.i.i, ptr @control_fb, align 4
  %6 = ptrtoint ptr %fb_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_res, align 4
  %fb_orig_base = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %fb_orig_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fb_orig_base, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %10
  %fb_orig_size = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %fb_orig_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %fb_orig_size, align 8
  %add = add i32 %7, 8388608
  %frame_buffer_phys = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %frame_buffer_phys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %frame_buffer_phys, align 8
  %13 = ptrtoint ptr %reg_res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_res, align 4
  %control_regs_phys = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %control_regs_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %control_regs_phys, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %sub.i104 = sub i32 1, %14
  %add.i105 = add i32 %sub.i104, %17
  %control_regs_size = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %control_regs_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i105, ptr %control_regs_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %if.end15.error_out.sink.split_crit_edge, label %lor.lhs.false22

if.end15.error_out.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out.sink.split

lor.lhs.false22:                                  ; preds = %if.end15
  %call25 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %lor.lhs.false22.error_out.sink.split_crit_edge, label %if.end29

lor.lhs.false22.error_out.sink.split_crit_edge:   ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out.sink.split

if.end29:                                         ; preds = %lor.lhs.false22
  %19 = ptrtoint ptr %frame_buffer_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_buffer_phys, align 8
  %call31 = call ptr @ioremap_wc(i32 noundef %20, i32 noundef 8388608) #10
  %frame_buffer = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call31, ptr %frame_buffer, align 4
  %22 = ptrtoint ptr %control_regs_phys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %control_regs_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %if.end29.error_out.sink.split_crit_edge, label %lor.lhs.false34

if.end29.error_out.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out.sink.split

lor.lhs.false34:                                  ; preds = %if.end29
  %24 = ptrtoint ptr %control_regs_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %control_regs_size, align 8
  %call37 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %23, i32 noundef %25, ptr noundef nonnull @.str.11, i32 noundef 0) #10
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %lor.lhs.false34.error_out.sink.split_crit_edge, label %if.end41

lor.lhs.false34.error_out.sink.split_crit_edge:   ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out.sink.split

if.end41:                                         ; preds = %lor.lhs.false34
  %26 = ptrtoint ptr %control_regs_phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control_regs_phys, align 4
  %28 = ptrtoint ptr %control_regs_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %control_regs_size, align 8
  %call44 = call ptr @ioremap(i32 noundef %27, i32 noundef %29) #10
  %control_regs = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %control_regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call44, ptr %control_regs, align 8
  %cmap_regs_phys = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %cmap_regs_phys to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -217993216, ptr %cmap_regs_phys, align 4
  %call46 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef -217993216, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef 0) #10
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end41.error_out.sink.split_crit_edge, label %if.end50

if.end41.error_out.sink.split_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out.sink.split

if.end50:                                         ; preds = %if.end41
  %32 = ptrtoint ptr %cmap_regs_phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmap_regs_phys, align 4
  %call52 = call ptr @ioremap(i32 noundef %33, i32 noundef 4096) #10
  %cmap_regs = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %cmap_regs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call52, ptr %cmap_regs, align 8
  %tobool54.not = icmp eq ptr %call52, null
  br i1 %tobool54.not, label %if.end50.error_out_crit_edge, label %lor.lhs.false55

if.end50.error_out_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out

lor.lhs.false55:                                  ; preds = %if.end50
  %35 = ptrtoint ptr %control_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %control_regs, align 8
  %tobool57.not = icmp eq ptr %36, null
  br i1 %tobool57.not, label %lor.lhs.false55.error_out_crit_edge, label %lor.lhs.false58

lor.lhs.false55.error_out_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %37 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %frame_buffer, align 4
  %tobool60.not = icmp eq ptr %38, null
  br i1 %tobool60.not, label %lor.lhs.false58.error_out_crit_edge, label %if.end62

lor.lhs.false58.error_out_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out

if.end62:                                         ; preds = %lor.lhs.false58
  %vram_attr5.i = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 14
  %39 = ptrtoint ptr %vram_attr5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 49, ptr %vram_attr5.i, align 4
  %total_vram.i = getelementptr inbounds %struct.fb_info_control, ptr %call7.i.i, i32 0, i32 13
  %40 = ptrtoint ptr %total_vram.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %total_vram.i, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %41 = ptrtoint ptr %total_vram.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %total_vram.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool63.not = icmp eq i32 %42, 0
  br i1 %tobool63.not, label %if.end62.error_out_crit_edge, label %if.end65

if.end62.error_out_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out

if.end65:                                         ; preds = %if.end62
  %call66 = call fastcc i32 @init_control(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp = icmp slt i32 %call66, 0
  br i1 %cmp, label %if.end65.error_out_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65.error_out_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_out

error_out.sink.split:                             ; preds = %if.end41.error_out.sink.split_crit_edge, %lor.lhs.false34.error_out.sink.split_crit_edge, %if.end29.error_out.sink.split_crit_edge, %lor.lhs.false22.error_out.sink.split_crit_edge, %if.end15.error_out.sink.split_crit_edge
  %cmap_regs_phys.sink = phi ptr [ %fb_orig_base, %lor.lhs.false22.error_out.sink.split_crit_edge ], [ %fb_orig_base, %if.end15.error_out.sink.split_crit_edge ], [ %control_regs_phys, %lor.lhs.false34.error_out.sink.split_crit_edge ], [ %control_regs_phys, %if.end29.error_out.sink.split_crit_edge ], [ %cmap_regs_phys, %if.end41.error_out.sink.split_crit_edge ]
  %43 = ptrtoint ptr %cmap_regs_phys.sink to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cmap_regs_phys.sink, align 4
  br label %error_out

error_out:                                        ; preds = %error_out.sink.split, %if.end65.error_out_crit_edge, %if.end62.error_out_crit_edge, %lor.lhs.false58.error_out_crit_edge, %lor.lhs.false55.error_out_crit_edge, %if.end50.error_out_crit_edge
  %44 = load ptr, ptr @control_fb, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %error_out.cleanup_crit_edge, label %if.end.i

error_out.cleanup_crit_edge:                      ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %error_out
  %cmap_regs.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cmap_regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmap_regs.i, align 4
  %tobool1.not.i = icmp eq ptr %46, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iounmap(ptr noundef nonnull %46) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %control_regs.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %control_regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %control_regs.i, align 4
  %tobool5.not.i = icmp eq ptr %48, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iounmap(ptr noundef nonnull %48) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %frame_buffer.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 8
  %49 = ptrtoint ptr %frame_buffer.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %frame_buffer.i, align 4
  %tobool9.not.i = icmp eq ptr %50, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then10.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end8.i
  %control_use_bank2.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 12
  %51 = ptrtoint ptr %control_use_bank2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %control_use_bank2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool11.not.i = icmp eq i32 %52, 0
  br i1 %tobool11.not.i, label %if.then10.i.if.end14.i_crit_edge, label %if.then12.i

if.then10.i.if.end14.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %50, i32 -6291456
  %53 = ptrtoint ptr %frame_buffer.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i, ptr %frame_buffer.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end14.i_crit_edge
  %54 = ptrtoint ptr %frame_buffer.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %frame_buffer.i, align 4
  call void @iounmap(ptr noundef %55) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end14.i, %if.end8.i.if.end16.i_crit_edge
  %cmap_regs_phys.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 4
  %56 = ptrtoint ptr %cmap_regs_phys.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmap_regs_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool17.not.i = icmp eq i32 %57, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then18.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %57, i32 noundef 4096) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %control_regs_phys.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 6
  %58 = ptrtoint ptr %control_regs_phys.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %control_regs_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool21.not.i = icmp eq i32 %59, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end24.i_crit_edge, label %if.then22.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %control_regs_size.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 7
  %60 = ptrtoint ptr %control_regs_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %control_regs_size.i, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %59, i32 noundef %61) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end24.i_crit_edge
  %fb_orig_base.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 10
  %62 = ptrtoint ptr %fb_orig_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fb_orig_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool25.not.i = icmp eq i32 %63, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then26.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %fb_orig_size.i = getelementptr inbounds %struct.fb_info_control, ptr %44, i32 0, i32 11
  %64 = ptrtoint ptr %fb_orig_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fb_orig_size.i, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %63, i32 noundef %65) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end28.i_crit_edge
  call void @kfree(ptr noundef nonnull %44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28.i, %error_out.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end8 ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ -6, %error_out.cleanup_crit_edge ], [ -6, %if.end28.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reg_res) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fb_res) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_control(ptr noundef %p) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #10
  %0 = call ptr @memset(ptr %var, i32 255, i32 160)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %total_vram = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 13
  %1 = ptrtoint ptr %total_vram to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %total_vram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %2)
  %cmp = icmp eq i32 %2, 4194304
  %conv = zext i1 %cmp to i32
  %3 = load i32, ptr @default_cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ugt i32 %3, 2
  %cmode.0 = select i1 %4, i32 0, i32 %3
  %5 = load i32, ptr @default_vmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %entry.if.then14_crit_edge, label %lor.lhs.false10

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false10:                                  ; preds = %entry
  %sub = add nsw i32 %5, -1
  %arrayidx = getelementptr [22 x %struct.max_cmodes], ptr @control_mac_modes, i32 0, i32 %sub
  %arrayidx11 = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cmode.0)
  %cmp12 = icmp slt i32 %7, %cmode.0
  br i1 %cmp12, label %lor.lhs.false10.if.then14_crit_edge, label %lor.lhs.false10.if.end37_crit_edge

lor.lhs.false10.if.end37_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %entry.if.then14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %8 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %8(i32 noundef 200) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %9 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %9(i32 noundef 2000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %10 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %10(i32 noundef 2000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %11 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %11(i32 noundef 2000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %12 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %12(i32 noundef 2000) #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 0) #14
  %call21 = tail call i32 @mac_map_monitor_sense(i32 noundef 0) #10
  %sub22 = add i32 %call21, -1
  %arrayidx23 = getelementptr [22 x %struct.max_cmodes], ptr @control_mac_modes, i32 0, i32 %sub22
  %arrayidx25 = getelementptr [2 x i32], ptr %arrayidx23, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26 = icmp slt i32 %14, 0
  %spec.store.select = select i1 %cmp26, i32 5, i32 %call21
  %sub30 = add i32 %spec.store.select, -1
  %arrayidx31 = getelementptr [22 x %struct.max_cmodes], ptr @control_mac_modes, i32 0, i32 %sub30
  %arrayidx33 = getelementptr [2 x i32], ptr %arrayidx31, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx33, align 4
  %17 = tail call i32 @llvm.smin.i32(i32 %cmode.0, i32 %16)
  br label %if.end37

if.end37:                                         ; preds = %if.then14, %lor.lhs.false10.if.end37_crit_edge
  %cmode.1 = phi i32 [ %17, %if.then14 ], [ %cmode.0, %lor.lhs.false10.if.end37_crit_edge ]
  %vmode.0 = phi i32 [ %spec.store.select, %if.then14 ], [ %5, %lor.lhs.false10.if.end37_crit_edge ]
  tail call fastcc void @control_init_info(ptr noundef %p, ptr noundef %p) #13
  %call38 = call i32 @mac_vmode_to_var(i32 noundef %vmode.0, i32 noundef %cmode.1, ptr noundef nonnull %var) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %if.end37.do.end65_crit_edge

if.end37.do.end65_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %vmode.0, i32 noundef %cmode.1) #14
  br label %try_again

try_again:                                        ; preds = %land.lhs.true.try_again_crit_edge, %do.end44
  %call47 = call i32 @mac_vmode_to_var(i32 noundef 5, i32 noundef 0, ptr noundef nonnull %var) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end53, label %do.end59

do.end53:                                         ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %cleanup

do.end59:                                         ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %do.end65

do.end65:                                         ; preds = %do.end59, %if.end37.do.end65_crit_edge
  %cmode.2 = phi i32 [ 0, %do.end59 ], [ %cmode.1, %if.end37.do.end65_crit_edge ]
  %vmode.1 = phi i32 [ 5, %do.end59 ], [ %vmode.0, %if.end37.do.end65_crit_edge ]
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %vmode.1, i32 noundef %cmode.2) #14
  %18 = ptrtoint ptr %total_vram to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_vram, align 4
  %sub69 = add i32 %19, -16
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %shl = shl i32 %21, %cmode.2
  %div = udiv i32 %sub69, %shl
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %22 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %23)
  %cmp70 = icmp ugt i32 %div, %23
  br i1 %cmp70, label %if.then72, label %do.end65.if.end73_crit_edge

do.end65.if.end73_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then72:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %24 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div, ptr %yres_virtual, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %do.end65.if.end73_crit_edge
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %25 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %activate, align 4
  %call75 = call i32 @fb_set_var(ptr noundef %p, ptr noundef nonnull %var) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool.not = icmp eq i32 %call75, 0
  br i1 %tobool.not, label %if.end73.if.end82_crit_edge, label %land.lhs.true

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %vmode.1)
  %cmp76.not = icmp eq i32 %vmode.1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmode.2)
  %cmp79.not = icmp eq i32 %cmode.2, 0
  %or.cond134 = and i1 %cmp79.not, %cmp76.not
  br i1 %or.cond134, label %land.lhs.true.if.end82_crit_edge, label %land.lhs.true.try_again_crit_edge

land.lhs.true.try_again_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true.if.end82_crit_edge, %if.end73.if.end82_crit_edge
  %call84 = call i32 @register_framebuffer(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end82.cleanup_crit_edge, label %do.end91

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end91:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %node = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 1
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node, align 4
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end82.cleanup_crit_edge, %do.end53
  %retval.0 = phi i32 [ -6, %do.end53 ], [ 0, %do.end91 ], [ -6, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_map_monitor_sense(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @control_init_info(ptr noundef %info, ptr noundef %p) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 1
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %par, ptr %par1, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %1 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @controlfb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 2
  %pseudo_palette2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pseudo_palette, ptr %pseudo_palette2, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8192, ptr %flags, align 4
  %frame_buffer = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %frame_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame_buffer, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %6, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #10
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %8 = ptrtoint ptr %fix to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 7165066978584914944, ptr %fix, align 1
  %control_regs_phys = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %control_regs_phys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %control_regs_phys, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 10
  %11 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 11
  %12 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %mmio_len, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type, align 4
  %frame_buffer_phys = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 9
  %14 = ptrtoint ptr %frame_buffer_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_buffer_phys, align 4
  %add = add i32 %15, 16
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %smem_start, align 4
  %total_vram = getelementptr inbounds %struct.fb_info_control, ptr %p, i32 0, i32 13
  %17 = ptrtoint ptr %total_vram to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total_vram, align 4
  %sub = add i32 %18, -16
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %smem_len, align 4
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %ywrapstep, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type_aux, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %22 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %accel, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_vmode_to_var(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @controlfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  %par = alloca %struct.fb_par_control, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %par) #10
  %0 = call ptr @memset(ptr %par, i32 255, i32 116)
  %call = call fastcc i32 @control_var_to_par(ptr noundef %var, ptr noundef nonnull %par, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %var, i32 24
  %2 = call ptr @memset(ptr %1, i32 0, i32 136)
  %xres.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xres.i, align 4
  %5 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 3
  %6 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres.i, align 4
  %yres2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %yres2.i, align 4
  %vxres.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 4
  %9 = ptrtoint ptr %vxres.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vxres.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %11 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %xres_virtual.i, align 4
  %vyres.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 5
  %12 = ptrtoint ptr %vyres.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vyres.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %14 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %yres_virtual.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 6
  %15 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xoffset.i, align 4
  %xoffset3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %17 = ptrtoint ptr %xoffset3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %xoffset3.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 7
  %18 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset.i, align 4
  %yoffset4.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %20 = ptrtoint ptr %yoffset4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %yoffset4.i, align 4
  %cmode.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 1
  %21 = ptrtoint ptr %cmode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmode.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %22, label %sw.bb.i [
    i32 2, label %sw.bb18.i
    i32 1, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %24 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %bits_per_pixel.i, align 4
  %length.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %length.i, align 4
  %length5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %length5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %length5.i, align 4
  %length6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %length6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %length6.i, align 4
  br label %control_par_to_var.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bits_per_pixel8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %28 = ptrtoint ptr %bits_per_pixel8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %bits_per_pixel8.i, align 4
  %red9.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %29 = ptrtoint ptr %red9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %red9.i, align 4
  %length11.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %length11.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %length11.i, align 4
  %green12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %31 = ptrtoint ptr %green12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %green12.i, align 4
  %length15.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %length15.i, align 4
  %length17.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %length17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %length17.i, align 4
  br label %control_par_to_var.exit

sw.bb18.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bits_per_pixel19.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %34 = ptrtoint ptr %bits_per_pixel19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %bits_per_pixel19.i, align 4
  %red20.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %35 = ptrtoint ptr %red20.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %red20.i, align 4
  %length23.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %length23.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %length23.i, align 4
  %green24.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %37 = ptrtoint ptr %green24.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %green24.i, align 4
  %length27.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %length27.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %length27.i, align 4
  %length29.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %length29.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length29.i, align 4
  %transp.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %40 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 24, ptr %transp.i, align 4
  %length32.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %41 = ptrtoint ptr %length32.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %length32.i, align 4
  br label %control_par_to_var.exit

control_par_to_var.exit:                          ; preds = %sw.bb18.i, %sw.bb7.i, %sw.bb.i
  %height.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %height.i, align 4
  %width.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %43 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %width.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %44 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %vmode.i, align 4
  %heblank.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 10
  %45 = ptrtoint ptr %heblank.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %heblank.i, align 4
  %hesync.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 11
  %47 = ptrtoint ptr %hesync.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hesync.i, align 4
  %sub.i = sub i32 %46, %48
  %shl.i = shl i32 %sub.i, 1
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %49 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shl.i, ptr %left_margin.i, align 4
  %hssync.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 12
  %50 = ptrtoint ptr %hssync.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hssync.i, align 4
  %hsblank.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 9
  %52 = ptrtoint ptr %hsblank.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hsblank.i, align 4
  %sub33.i = sub i32 %51, %53
  %shl34.i = shl i32 %sub33.i, 1
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %54 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl34.i, ptr %right_margin.i, align 4
  %hperiod.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 8
  %55 = ptrtoint ptr %hperiod.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hperiod.i, align 4
  %add.i = add i32 %48, 2
  %sub36.i = sub i32 %add.i, %51
  %add38.i = add i32 %sub36.i, %56
  %shl39.i = shl i32 %add38.i, 1
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %57 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl39.i, ptr %hsync_len.i, align 4
  %veblank.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 2
  %58 = ptrtoint ptr %veblank.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %veblank.i, align 4
  %vesync.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 4
  %60 = ptrtoint ptr %vesync.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vesync.i, align 4
  %sub40.i = sub i32 %59, %61
  %shr.i = lshr i32 %sub40.i, 1
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %62 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr.i, ptr %upper_margin.i, align 4
  %vssync.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 5
  %63 = ptrtoint ptr %vssync.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vssync.i, align 4
  %vsblank.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 1
  %65 = ptrtoint ptr %vsblank.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vsblank.i, align 4
  %sub41.i = sub i32 %64, %66
  %shr42.i = lshr i32 %sub41.i, 1
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %67 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr42.i, ptr %lower_margin.i, align 4
  %vperiod.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 6
  %68 = ptrtoint ptr %vperiod.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vperiod.i, align 4
  %sub44.i = sub i32 %61, %64
  %add46.i = add i32 %sub44.i, %69
  %shr47.i = lshr i32 %add46.i, 1
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %70 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shr47.i, ptr %vsync_len.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 10
  %71 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sync.i, align 4
  %sync48.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %73 = ptrtoint ptr %sync48.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sync48.i, align 4
  %clock_params.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3
  %74 = ptrtoint ptr %clock_params.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %clock_params.i, align 2
  %conv.i = zext i8 %75 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 256016
  %pixclock.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %arrayidx52.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 1
  %76 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = zext i8 %77 to i32
  %div.i = udiv i32 %mul.i, %conv53.i
  %arrayidx57.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 2
  %78 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx57.i, align 4
  %conv58.i = zext i8 %79 to i32
  %shr60.i = lshr i32 %div.i, %conv58.i
  %80 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shr60.i, ptr %pixclock.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %control_par_to_var.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %par) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @controlfb_set_par(ptr noundef %info) #6 align 64 {
entry:
  %par = alloca %struct.fb_par_control, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %par) #10
  %0 = call ptr @memset(ptr %par, i32 255, i32 116)
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call = call fastcc i32 @control_var_to_par(ptr noundef %var, ptr noundef nonnull %par, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 3
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx3.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp5.not.i.i = icmp eq i8 %2, %4
  %arrayidx.1.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx3.1.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp5.not.1.i.i = icmp eq i8 %6, %8
  %and.173.i.i = and i1 %cmp5.not.i.i, %cmp5.not.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 3, i32 2
  %9 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx3.2.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp5.not.2.i.i = icmp eq i8 %10, %12
  %and.274.i.i = and i1 %and.173.i.i, %cmp5.not.2.i.i
  br i1 %and.274.i.i, label %for.cond7.preheader.i.i, label %if.end.if.end10.i_crit_edge

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.cond7.preheader.i.i:                          ; preds = %if.end
  %regvals11.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9
  %regvals13.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9
  %13 = ptrtoint ptr %regvals11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regvals11.i.i, align 4
  %15 = ptrtoint ptr %regvals13.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regvals13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16.not.i.i = icmp eq i32 %14, %16
  %arrayidx12.1.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx12.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12.1.i.i, align 4
  %arrayidx15.1.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx15.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp16.not.1.i.i = icmp eq i32 %18, %20
  %and20.175.i.i = and i1 %cmp16.not.i.i, %cmp16.not.1.i.i
  %arrayidx12.2.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx12.2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12.2.i.i, align 4
  %arrayidx15.2.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx15.2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp16.not.2.i.i = icmp eq i32 %22, %24
  %and20.276.i.i = and i1 %and20.175.i.i, %cmp16.not.2.i.i
  %arrayidx12.3.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx12.3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx12.3.i.i, align 4
  %arrayidx15.3.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx15.3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx15.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp16.not.3.i.i = icmp eq i32 %26, %28
  %and20.377.i.i = and i1 %and20.276.i.i, %cmp16.not.3.i.i
  %arrayidx12.4.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx12.4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12.4.i.i, align 4
  %arrayidx15.4.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx15.4.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp16.not.4.i.i = icmp eq i32 %30, %32
  %and20.478.i.i = and i1 %and20.377.i.i, %cmp16.not.4.i.i
  %arrayidx12.5.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx12.5.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12.5.i.i, align 4
  %arrayidx15.5.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx15.5.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx15.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp16.not.5.i.i = icmp eq i32 %34, %36
  %and20.579.i.i = and i1 %and20.478.i.i, %cmp16.not.5.i.i
  %arrayidx12.6.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx12.6.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx12.6.i.i, align 4
  %arrayidx15.6.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx15.6.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx15.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp16.not.6.i.i = icmp eq i32 %38, %40
  %and20.680.i.i = and i1 %and20.579.i.i, %cmp16.not.6.i.i
  %arrayidx12.7.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx12.7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx12.7.i.i, align 4
  %arrayidx15.7.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx15.7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx15.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp16.not.7.i.i = icmp eq i32 %42, %44
  %and20.781.i.i = and i1 %and20.680.i.i, %cmp16.not.7.i.i
  %arrayidx12.8.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 8
  %45 = ptrtoint ptr %arrayidx12.8.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx12.8.i.i, align 4
  %arrayidx15.8.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 8
  %47 = ptrtoint ptr %arrayidx15.8.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15.8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp16.not.8.i.i = icmp eq i32 %46, %48
  %and20.882.i.i = and i1 %and20.781.i.i, %cmp16.not.8.i.i
  %arrayidx12.9.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 9
  %49 = ptrtoint ptr %arrayidx12.9.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx12.9.i.i, align 4
  %arrayidx15.9.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 9
  %51 = ptrtoint ptr %arrayidx15.9.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx15.9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp16.not.9.i.i = icmp eq i32 %50, %52
  %and20.983.i.i = and i1 %and20.882.i.i, %cmp16.not.9.i.i
  %arrayidx12.10.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 10
  %53 = ptrtoint ptr %arrayidx12.10.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx12.10.i.i, align 4
  %arrayidx15.10.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 10
  %55 = ptrtoint ptr %arrayidx15.10.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx15.10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp16.not.10.i.i = icmp eq i32 %54, %56
  %and20.1084.i.i = and i1 %and20.983.i.i, %cmp16.not.10.i.i
  %arrayidx12.11.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 11
  %57 = ptrtoint ptr %arrayidx12.11.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx12.11.i.i, align 4
  %arrayidx15.11.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 11
  %59 = ptrtoint ptr %arrayidx15.11.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx15.11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp16.not.11.i.i = icmp eq i32 %58, %60
  %and20.1185.i.i = and i1 %and20.1084.i.i, %cmp16.not.11.i.i
  %arrayidx12.12.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 12
  %61 = ptrtoint ptr %arrayidx12.12.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx12.12.i.i, align 4
  %arrayidx15.12.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 12
  %63 = ptrtoint ptr %arrayidx15.12.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx15.12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp16.not.12.i.i = icmp eq i32 %62, %64
  %and20.1286.i.i = and i1 %and20.1185.i.i, %cmp16.not.12.i.i
  %arrayidx12.13.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 13
  %65 = ptrtoint ptr %arrayidx12.13.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx12.13.i.i, align 4
  %arrayidx15.13.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 13
  %67 = ptrtoint ptr %arrayidx15.13.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx15.13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp16.not.13.i.i = icmp eq i32 %66, %68
  %and20.1387.i.i = and i1 %and20.1286.i.i, %cmp16.not.13.i.i
  %arrayidx12.14.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 14
  %69 = ptrtoint ptr %arrayidx12.14.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx12.14.i.i, align 4
  %arrayidx15.14.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 14
  %71 = ptrtoint ptr %arrayidx15.14.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx15.14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp16.not.14.i.i = icmp eq i32 %70, %72
  %and20.1488.i.i = and i1 %and20.1387.i.i, %cmp16.not.14.i.i
  %arrayidx12.15.i.i = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 9, i32 0, i32 15
  %73 = ptrtoint ptr %arrayidx12.15.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx12.15.i.i, align 4
  %arrayidx15.15.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 15
  %75 = ptrtoint ptr %arrayidx15.15.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx15.15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp16.not.15.i.i = icmp eq i32 %74, %76
  %and20.1589.i.i = and i1 %and20.1488.i.i, %cmp16.not.15.i.i
  br i1 %and20.1589.i.i, label %if.end26.i.i, label %for.cond7.preheader.i.i.if.end10.i_crit_edge

for.cond7.preheader.i.i.if.end10.i_crit_edge:     ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end26.i.i:                                     ; preds = %for.cond7.preheader.i.i
  %cmode.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %cmode.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmode.i.i, align 4
  %cmode27.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 1
  %79 = ptrtoint ptr %cmode27.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cmode27.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp28.not.i.i = icmp eq i32 %78, %80
  br i1 %cmp28.not.i.i, label %land.lhs.true.i.i, label %if.end26.i.i.if.end10.i_crit_edge

if.end26.i.i.if.end10.i_crit_edge:                ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i.i:                                ; preds = %if.end26.i.i
  %xres.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %xres.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xres.i.i, align 4
  %xres30.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 2
  %83 = ptrtoint ptr %xres30.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xres30.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp31.not.i.i = icmp eq i32 %82, %84
  br i1 %cmp31.not.i.i, label %land.lhs.true33.i.i, label %land.lhs.true.i.i.if.end10.i_crit_edge

land.lhs.true.i.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true.i.i
  %yres.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 3
  %85 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %yres.i.i, align 4
  %yres34.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 3
  %87 = ptrtoint ptr %yres34.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %yres34.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp35.not.i.i = icmp eq i32 %86, %88
  br i1 %cmp35.not.i.i, label %land.lhs.true37.i.i, label %land.lhs.true33.i.i.if.end10.i_crit_edge

land.lhs.true33.i.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true37.i.i:                              ; preds = %land.lhs.true33.i.i
  %vxres.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %vxres.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vxres.i.i, align 4
  %vxres38.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 4
  %91 = ptrtoint ptr %vxres38.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vxres38.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp39.not.i.i = icmp eq i32 %90, %92
  br i1 %cmp39.not.i.i, label %PAR_EQUAL.exit.i, label %land.lhs.true37.i.i.if.end10.i_crit_edge

land.lhs.true37.i.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

PAR_EQUAL.exit.i:                                 ; preds = %land.lhs.true37.i.i
  %vyres.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 5
  %93 = ptrtoint ptr %vyres.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vyres.i.i, align 4
  %vyres41.i.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 5
  %95 = ptrtoint ptr %vyres41.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vyres41.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp42.not.i.not.i = icmp eq i32 %94, %96
  br i1 %cmp42.not.i.not.i, label %if.then.i, label %PAR_EQUAL.exit.i.if.end10.i_crit_edge

PAR_EQUAL.exit.i.if.end10.i_crit_edge:            ; preds = %PAR_EQUAL.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %PAR_EQUAL.exit.i
  %xoffset.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 6
  %97 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %xoffset.i, align 4
  %xoffset3.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 6
  %99 = ptrtoint ptr %xoffset3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %xoffset3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp.not.i = icmp eq i32 %98, %100
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i.if.then7.i_crit_edge

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %yoffset.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 7
  %101 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %yoffset.i, align 4
  %yoffset5.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 7
  %103 = ptrtoint ptr %yoffset5.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %yoffset5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp6.not.i = icmp eq i32 %102, %104
  br i1 %cmp6.not.i, label %lor.lhs.false.i.control_set_hardware.exit_crit_edge, label %lor.lhs.false.i.if.then7.i_crit_edge

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

lor.lhs.false.i.control_set_hardware.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %control_set_hardware.exit

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %yoffset9.i = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 7
  %105 = ptrtoint ptr %yoffset9.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %yoffset9.i, align 4
  %107 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %100, ptr %xoffset.i, align 4
  %yoffset3.i.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 7
  %108 = ptrtoint ptr %yoffset3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %106, ptr %yoffset3.i.i, align 4
  br label %control_set_hardware.exit

if.end10.i:                                       ; preds = %PAR_EQUAL.exit.i.if.end10.i_crit_edge, %land.lhs.true37.i.i.if.end10.i_crit_edge, %land.lhs.true33.i.i.if.end10.i_crit_edge, %land.lhs.true.i.i.if.end10.i_crit_edge, %if.end26.i.i.if.end10.i_crit_edge, %for.cond7.preheader.i.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %109 = call ptr @memcpy(ptr %par1.i, ptr %par, i32 116)
  br label %control_set_hardware.exit

control_set_hardware.exit:                        ; preds = %if.end10.i, %if.then7.i, %lor.lhs.false.i.control_set_hardware.exit_crit_edge
  %cmode = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp = icmp eq i32 %111, 0
  %cond = select i1 %cmp, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %112 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %cond, ptr %visual, align 4
  %pitch = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 8
  %113 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pitch, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %115 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %line_length, align 4
  %shr = lshr i32 32, %111
  %conv = trunc i32 %shr to i16
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %116 = ptrtoint ptr %xpanstep to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv, ptr %xpanstep, align 4
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %117 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 1, ptr %ypanstep, align 2
  br label %cleanup

cleanup:                                          ; preds = %control_set_hardware.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %par) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @controlfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp5 = icmp ult i32 %regno, 16
  br i1 %cmp5, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %cmode = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %1, label %if.then7.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw nsw i32 %regno, 10
  %shl8 = shl nuw nsw i32 %regno, 5
  %or = or i32 %shl8, %regno
  %or9 = or i32 %or, %shl
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %shl11 = shl nuw nsw i32 %regno, 8
  %or12 = or i32 %shl11, %regno
  %shl13 = shl i32 %or12, 16
  %or14 = or i32 %shl13, %or12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %sw.bb
  %or14.sink = phi i32 [ %or14, %sw.bb10 ], [ %or9, %sw.bb ]
  %arrayidx16 = getelementptr %struct.fb_info_control, ptr %info, i32 0, i32 2, i32 %regno
  %3 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or14.sink, ptr %arrayidx16, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @controlfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readnone %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @controlfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmode = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmode, align 4
  %shr = lshr i32 31, %1
  %xoffset2 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset2, align 4
  %add = add i32 %3, %shr
  %neg = ashr i32 -32, %1
  %and = and i32 %add, %neg
  %xres = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres, align 4
  %add3 = add i32 %and, %5
  %vxres = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %vxres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vxres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %7)
  %cmp = icmp ugt i32 %add3, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %add4 = add i32 %11, %9
  %vyres = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %vyres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vyres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %13)
  %cmp5 = icmp ugt i32 %add4, %13
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %xoffset2.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %xoffset2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %xoffset2.i, align 4
  %yoffset3.i = getelementptr inbounds %struct.fb_info_control, ptr %info, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %yoffset3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %yoffset3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @controlfb_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_len, align 4
  %and = and i32 %1, 4095
  %add = add i32 %3, 4095
  %add2 = add i32 %add, %and
  %shr = lshr i32 %add2, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr)
  %cmp.not = icmp ult i32 %5, %shr
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %6 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %5, %shr
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %vm_pgoff, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 10
  %9 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 11
  %11 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmio_len, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %13 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_page_prot, align 4
  %and8 = and i32 %14, -61
  store i32 %and8, ptr %vm_page_prot, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %start.0 = phi i32 [ %10, %if.end ], [ %1, %entry.if.end12_crit_edge ]
  %len.0 = phi i32 [ %12, %if.end ], [ %3, %entry.if.end12_crit_edge ]
  %call = tail call i32 @vm_iomap_memory(ptr noundef %vma, i32 noundef %start.0, i32 noundef %len.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end12 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @control_var_to_par(ptr noundef %var, ptr noundef %par, ptr nocapture noundef readonly %fb_info) unnamed_addr #6 align 64 {
entry:
  %cmode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmode) #10
  %0 = ptrtoint ptr %cmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmode, align 4, !annotation !83
  %regvals = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %1 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bits_per_pixel, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 15, label %entry.sw.bb4_crit_edge
    i32 16, label %entry.sw.bb4_crit_edge319
    i32 32, label %sw.bb15
  ]

entry.sw.bb4_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cmode1 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 1
  %4 = ptrtoint ptr %cmode1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cmode1, align 4
  %total_vram = getelementptr inbounds %struct.fb_info_control, ptr %fb_info, i32 0, i32 13
  %5 = ptrtoint ptr %total_vram to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_vram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %cmp = icmp ugt i32 %6, 2097152
  %mode = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %mode, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %mode, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge319
  %cmode5 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 1
  %9 = ptrtoint ptr %cmode5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %cmode5, align 4
  %total_vram6 = getelementptr inbounds %struct.fb_info_control, ptr %fb_info, i32 0, i32 13
  %10 = ptrtoint ptr %total_vram6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_vram6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %11)
  %cmp7 = icmp ugt i32 %11, 2097152
  %mode9 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 1
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %mode9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %mode9, align 4
  br label %sw.epilog

if.else11:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %mode9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %mode9, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %cmode16 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 1
  %14 = ptrtoint ptr %cmode16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %cmode16, align 4
  %total_vram17 = getelementptr inbounds %struct.fb_info_control, ptr %fb_info, i32 0, i32 13
  %15 = ptrtoint ptr %total_vram17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_vram17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %16)
  %cmp18 = icmp ugt i32 %16, 2097152
  %mode20 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 1
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %mode20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %mode20, align 4
  br label %sw.epilog

if.else22:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %mode20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mode20, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else22, %if.then19, %if.else11, %if.then8, %if.else, %if.then
  %.sink318 = phi i8 [ 40, %if.then19 ], [ 24, %if.else22 ], [ 36, %if.then8 ], [ 20, %if.else11 ], [ 32, %if.then ], [ 16, %if.else ]
  %piped_diff.0.neg = phi i32 [ -1, %if.then19 ], [ -1, %if.else22 ], [ -5, %if.then8 ], [ -3, %if.else11 ], [ -13, %if.then ], [ -9, %if.else ]
  %radacal_ctrl21 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %radacal_ctrl21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink318, ptr %radacal_ctrl21, align 1
  %cmode26 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 1
  %20 = ptrtoint ptr %cmode26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmode26, align 4
  %shr = lshr i32 31, %21
  %22 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %var, align 4
  %add = add i32 %23, %shr
  %neg = ashr i32 -32, %21
  %and = and i32 %add, %neg
  %xres27 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 2
  %24 = ptrtoint ptr %xres27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %xres27, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %25 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xres_virtual, align 4
  %add28 = add i32 %26, %shr
  %and30 = and i32 %add28, %neg
  %vxres = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 4
  %27 = ptrtoint ptr %vxres to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and30, ptr %vxres, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %28 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xoffset, align 4
  %add31 = add i32 %29, %shr
  %and33 = and i32 %add31, %neg
  %xoffset34 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 6
  %30 = ptrtoint ptr %xoffset34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and33, ptr %xoffset34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %and)
  %cmp37 = icmp slt i32 %and30, %and
  br i1 %cmp37, label %if.then38, label %sw.epilog.if.end41_crit_edge

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %vxres to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and, ptr %vxres, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %sw.epilog.if.end41_crit_edge
  %32 = ptrtoint ptr %vxres to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vxres, align 4
  %shl = shl i32 %33, %21
  %pitch = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 8
  %34 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl, ptr %pitch, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %35 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yres, align 4
  %yres44 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 3
  %37 = ptrtoint ptr %yres44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %yres44, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %38 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres_virtual, align 4
  %vyres = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 5
  %40 = ptrtoint ptr %vyres to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %vyres, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %41 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %yoffset, align 4
  %yoffset45 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 7
  %43 = ptrtoint ptr %yoffset45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %yoffset45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %36)
  %cmp48 = icmp slt i32 %39, %36
  br i1 %cmp48, label %if.then49, label %if.end41.if.end52_crit_edge

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %vyres to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %36, ptr %vyres, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end41.if.end52_crit_edge
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %45 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sync, align 4
  %sync53 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 10
  %47 = ptrtoint ptr %sync53 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sync53, align 4
  %48 = ptrtoint ptr %vyres to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vyres, align 4
  %mul = mul i32 %49, %shl
  %add56 = add i32 %mul, 16
  %total_vram57 = getelementptr inbounds %struct.fb_info_control, ptr %fb_info, i32 0, i32 13
  %50 = ptrtoint ptr %total_vram57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_vram57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add56, i32 %51)
  %cmp58 = icmp ugt i32 %add56, %51
  br i1 %cmp58, label %if.end52.cleanup_crit_edge, label %if.end60

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %add63 = add i32 %and33, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %33)
  %cmp65 = icmp sgt i32 %add63, %33
  br i1 %cmp65, label %if.then66, label %if.end60.if.end70_crit_edge

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %33, %and
  %52 = ptrtoint ptr %xoffset34 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub, ptr %xoffset34, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end60.if.end70_crit_edge
  %add73 = add i32 %42, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add73, i32 %49)
  %cmp75 = icmp sgt i32 %add73, %49
  br i1 %cmp75, label %if.then76, label %if.end70.if.end81_crit_edge

if.end70.if.end81_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %sub79 = sub i32 %49, %36
  %53 = ptrtoint ptr %yoffset45 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub79, ptr %yoffset45, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end70.if.end81_crit_edge
  %pixclock82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %54 = ptrtoint ptr %pixclock82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixclock82, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 5000)
  %clock_params = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048128, i32 %56)
  %cmp.i = icmp ugt i32 %56, 2048128
  br i1 %cmp.i, label %if.end81.cleanup_crit_edge, label %if.end.i

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 16001, i32 %56)
  %cmp1.i = icmp ult i32 %56, 16001
  %cond.i = select i1 %cmp1.i, i32 3, i32 2
  %shl2.i = shl nuw nsw i32 %56, %cond.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %min.046.i = phi i32 [ %shl2.i, %if.end.i ], [ %min.1.i, %for.body.i.for.body.i_crit_edge ]
  %k.045.i = phi i32 [ 1, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %p1.044.i = phi i32 [ 0, %if.end.i ], [ %p1.1.i, %for.body.i.for.body.i_crit_edge ]
  %p0.043.i = phi i32 [ 0, %if.end.i ], [ %p0.1.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %k.045.i, 256016
  %mul.i.frozen = freeze i32 %mul.i
  %shl2.i.frozen = freeze i32 %shl2.i
  %div.i = udiv i32 %mul.i.frozen, %shl2.i.frozen
  %57 = mul i32 %div.i, %shl2.i.frozen
  %rem4.i.decomposed = sub i32 %mul.i.frozen, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %shl2.i, i32 %mul.i)
  %tobool.not.i = icmp ule i32 %shl2.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i)
  %cmp5.i = icmp ult i32 %div.i, 128
  %or.cond.i = and i1 %tobool.not.i, %cmp5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem4.i.decomposed, i32 %min.046.i)
  %cmp7.i = icmp ult i32 %rem4.i.decomposed, %min.046.i
  %or.cond41.i = select i1 %or.cond.i, i1 %cmp7.i, i1 false
  %p0.1.i = select i1 %or.cond41.i, i32 %k.045.i, i32 %p0.043.i
  %p1.1.i = select i1 %or.cond41.i, i32 %div.i, i32 %p1.044.i
  %min.1.i = select i1 %or.cond41.i, i32 %rem4.i.decomposed, i32 %min.046.i
  %inc.i = add nuw nsw i32 %k.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p0.1.i)
  %tobool10.not.i = icmp eq i32 %p0.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p1.1.i)
  %tobool11.not.i = icmp eq i32 %p1.1.i, 0
  %or.cond42.i = select i1 %tobool10.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond42.i, label %for.end.i.cleanup_crit_edge, label %if.end86

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end86:                                         ; preds = %for.end.i
  %conv.i = trunc i32 %p0.1.i to i8
  %58 = ptrtoint ptr %clock_params to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i, ptr %clock_params, align 1
  %conv14.i = trunc i32 %p1.1.i to i8
  %arrayidx15.i = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 1
  %59 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %conv16.i = trunc i32 %cond.i to i8
  %arrayidx17.i = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv16.i, ptr %arrayidx17.i, align 1
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %61 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %left_margin, align 4
  %add88 = add i32 %62, %and
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %63 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %right_margin, align 4
  %add89 = add i32 %add88, %64
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %65 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hsync_len, align 4
  %add90 = add i32 %add89, %66
  %shr91 = lshr i32 %add90, 1
  %sub92 = add nsw i32 %shr91, -2
  %add93 = add nsw i32 %shr91, -1
  %shr95 = lshr i32 %64, 1
  %sub96 = sub nsw i32 %add93, %shr95
  %shr98 = lshr i32 %66, 1
  %sub99 = add nsw i32 %shr98, -1
  %shr101 = lshr i32 %62, 1
  %add102 = add i32 %sub99, %shr101
  %sub103 = add i32 %add102, %piped_diff.0.neg
  %shr105 = lshr i32 %66, 2
  %shr107 = lshr i32 %add90, 2
  %sub108 = sub nsw i32 %add93, %sub99
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %67 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vsync_len, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %69 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lower_margin, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %71 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %upper_margin, align 4
  %add109 = add i32 %68, %36
  %add111 = add i32 %add109, %70
  %add112 = add i32 %add111, %72
  %shl113 = shl i32 %add112, 1
  %sub114 = add i32 %shl113, -2
  %73 = sub i32 %68, %add112
  %sub117 = shl i32 %73, 1
  %add118 = add i32 %sub117, %sub114
  %shl120 = shl i32 %72, 1
  %add121 = add i32 %add118, %shl120
  %shl123.neg = mul i32 %70, -2
  %sub124 = add i32 %sub114, %shl123.neg
  %add125 = add i32 %sub124, %sub114
  %shr126 = lshr exact i32 %add125, 1
  %add127 = add i32 %add121, %add118
  %shr128 = lshr exact i32 %add127, 1
  %74 = ptrtoint ptr %regvals to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr126, ptr %regvals, align 4
  %arrayidx130 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub124, ptr %arrayidx130, align 4
  %arrayidx132 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add121, ptr %arrayidx132, align 4
  %arrayidx134 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shr128, ptr %arrayidx134, align 4
  %arrayidx136 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 4
  %78 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add118, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 5
  %79 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub114, ptr %arrayidx138, align 4
  %arrayidx140 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 6
  %80 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shl113, ptr %arrayidx140, align 4
  %arrayidx142 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 7
  %81 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub103, ptr %arrayidx142, align 4
  %arrayidx144 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 8
  %82 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub92, ptr %arrayidx144, align 4
  %arrayidx146 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 9
  %83 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub96, ptr %arrayidx146, align 4
  %arrayidx148 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 10
  %84 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add102, ptr %arrayidx148, align 4
  %arrayidx150 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 11
  %85 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub99, ptr %arrayidx150, align 4
  %arrayidx152 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 12
  %86 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add93, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 13
  %87 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr105, ptr %arrayidx154, align 4
  %arrayidx156 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 14
  %88 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shr107, ptr %arrayidx156, align 4
  %arrayidx158 = getelementptr %struct.fb_par_control, ptr %par, i32 0, i32 9, i32 0, i32 15
  %89 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub108, ptr %arrayidx158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %and)
  %cmp160 = icmp sgt i32 %and, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp162 = icmp sgt i32 %21, 0
  %or.cond = select i1 %cmp160, i1 %cmp162, i1 false
  %spec.select = select i1 %or.cond, i8 127, i8 59
  %90 = getelementptr inbounds %struct.fb_par_control, ptr %par, i32 0, i32 11
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.select, ptr %90, align 4
  %call167 = call i32 @mac_var_to_vmode(ptr noundef %var, ptr noundef %par, ptr noundef nonnull %cmode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end86.cleanup_crit_edge, label %if.then169

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then169:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %par, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then169, %if.end86.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ 0, %if.then169 ], [ 0, %if.end86.cleanup_crit_edge ], [ -22, %if.end81.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmode) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_var_to_vmode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_iomap_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_controlfb__307_1027_control_init6, !1, !"__initcall__kmod_controlfb__307_1027_control_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/controlfb.c", i32 1027, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/controlfb.c", i32 1015, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/controlfb.c", i32 1019, i32 34}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/controlfb.c", i32 813, i32 38}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/controlfb.c", i32 814, i32 26}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/controlfb.c", i32 819, i32 33}
!12 = !{ptr @control_mac_modes, !13, !"control_mac_modes", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/controlfb.h", i32 119, i32 26}
!14 = !{ptr @default_vmode, !15, !"default_vmode", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/controlfb.c", i32 150, i32 12}
!16 = !{ptr @default_cmode, !17, !"default_cmode", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/controlfb.c", i32 151, i32 12}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/controlfb.c", i32 947, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @control_of_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @control_of_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/controlfb.c", i32 953, i32 3}
!26 = !{ptr @control_of_init._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @control_of_init._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/controlfb.c", i32 978, i32 7}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/controlfb.c", i32 986, i32 7}
!32 = !{ptr @control_fb, !33, !"control_fb", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/controlfb.c", i32 148, i32 32}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/controlfb.c", i32 344, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @find_vram_size._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @find_vram_size._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/controlfb.c", i32 852, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @init_control._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @init_control._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/controlfb.c", i32 869, i32 3}
!46 = !{ptr @init_control._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @init_control._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/controlfb.c", i32 882, i32 3}
!50 = !{ptr @init_control._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @init_control._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/controlfb.c", i32 887, i32 4}
!54 = !{ptr @init_control._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @init_control._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @init_control._entry.26, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/controlfb.c", i32 890, i32 3}
!58 = !{ptr @init_control._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/controlfb.c", i32 892, i32 2}
!61 = !{ptr @init_control._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @init_control._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/controlfb.c", i32 908, i32 2}
!65 = !{ptr @init_control._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @init_control._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @controlfb_ops, !68, !"controlfb_ops", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/controlfb.c", i32 764, i32 28}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/controlfb.c", i32 662, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @controlfb_set_par._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @controlfb_set_par._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
