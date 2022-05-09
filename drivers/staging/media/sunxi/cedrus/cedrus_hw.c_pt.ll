; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_hw.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cedrus_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32, %struct.v4l2_ctrl_handler, ptr, %union.anon.97 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.cedrus_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, [2 x %struct.media_pad], ptr, ptr, ptr, [4 x ptr], %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cedrus_variant = type { i32, i32 }
%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cedrus_hw_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable AHB clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cedrus_hw_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/media/sunxi/cedrus/cedrus_hw.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cedrus_hw_resume._entry_ptr = internal global ptr @cedrus_hw_resume._entry, section ".printk_index", align 4
@cedrus_hw_resume._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable MOD clock\0A\00", [36 x i8] zeroinitializer }, align 32
@cedrus_hw_resume._entry_ptr.7 = internal global ptr @cedrus_hw_resume._entry.5, section ".printk_index", align 4
@cedrus_hw_resume._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable RAM clock\0A\00", [36 x i8] zeroinitializer }, align 32
@cedrus_hw_resume._entry_ptr.10 = internal global ptr @cedrus_hw_resume._entry.8, section ".printk_index", align 4
@cedrus_hw_resume._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to apply reset\0A\00", [41 x i8] zeroinitializer }, align 32
@cedrus_hw_resume._entry_ptr.13 = internal global ptr @cedrus_hw_resume._entry.11, section ".printk_index", align 4
@cedrus_hw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cedrus_hw_probe\00", [16 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr = internal global ptr @cedrus_hw_probe._entry, section ".printk_index", align 4
@cedrus_hw_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to reserve memory\0A\00", [38 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.18 = internal global ptr @cedrus_hw_probe._entry.16, section ".printk_index", align 4
@cedrus_hw_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to claim SRAM\0A\00", [42 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.21 = internal global ptr @cedrus_hw_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get AHB clock\0A\00", [39 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.25 = internal global ptr @cedrus_hw_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get MOD clock\0A\00", [39 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.29 = internal global ptr @cedrus_hw_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get RAM clock\0A\00", [39 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.33 = internal global ptr @cedrus_hw_probe._entry.31, section ".printk_index", align 4
@cedrus_hw_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.36 = internal global ptr @cedrus_hw_probe._entry.34, section ".printk_index", align 4
@cedrus_hw_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.2, i32 275, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.39 = internal global ptr @cedrus_hw_probe._entry.37, section ".printk_index", align 4
@cedrus_hw_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.15, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@cedrus_hw_probe._entry_ptr.42 = internal global ptr @cedrus_hw_probe._entry.40, section ".printk_index", align 4
@cedrus_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cedrus_irq\00", [21 x i8] zeroinitializer }, align 32
@cedrus_irq._entry_ptr = internal global ptr @cedrus_irq._entry, section ".printk_index", align 4
@switch.table.cedrus_engine_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1245184, i32 1245185, i32 1245188, i32 1245185], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 166, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 173, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 180, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 187, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 222, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 229, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 236, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 241, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 243, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 249, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 251, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 257, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 259, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 267, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 275, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 283, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [50 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 123, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [34 x i8] c"switch.table.cedrus_engine_enable\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @cedrus_hw_probe._entry, ptr @cedrus_hw_probe._entry.16, ptr @cedrus_hw_probe._entry.19, ptr @cedrus_hw_probe._entry.23, ptr @cedrus_hw_probe._entry.27, ptr @cedrus_hw_probe._entry.31, ptr @cedrus_hw_probe._entry.34, ptr @cedrus_hw_probe._entry.37, ptr @cedrus_hw_probe._entry.40, ptr @cedrus_hw_probe._entry_ptr, ptr @cedrus_hw_probe._entry_ptr.18, ptr @cedrus_hw_probe._entry_ptr.21, ptr @cedrus_hw_probe._entry_ptr.25, ptr @cedrus_hw_probe._entry_ptr.29, ptr @cedrus_hw_probe._entry_ptr.33, ptr @cedrus_hw_probe._entry_ptr.36, ptr @cedrus_hw_probe._entry_ptr.39, ptr @cedrus_hw_probe._entry_ptr.42, ptr @cedrus_hw_resume._entry, ptr @cedrus_hw_resume._entry.11, ptr @cedrus_hw_resume._entry.5, ptr @cedrus_hw_resume._entry.8, ptr @cedrus_hw_resume._entry_ptr, ptr @cedrus_hw_resume._entry_ptr.10, ptr @cedrus_hw_resume._entry_ptr.13, ptr @cedrus_hw_resume._entry_ptr.7, ptr @cedrus_irq._entry, ptr @cedrus_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @switch.table.cedrus_engine_enable], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_resume._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_resume._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_resume._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_hw_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cedrus_engine_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cedrus_engine_enable(ptr nocapture noundef readonly %ctx, i32 noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %codec)
  %0 = icmp ult i32 %codec, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cedrus_engine_enable, i32 0, i32 %codec
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %3)
  %cmp = icmp eq i32 %3, 4096
  %or7 = or i32 %switch.load, 4194304
  %spec.select = select i1 %cmp, i32 %or7, i32 %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp10 = icmp ugt i32 %3, 2048
  %or12 = or i32 %spec.select, 2097152
  %reg.2 = select i1 %cmp10, i32 %or12, i32 %spec.select
  %dev = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cedrus_engine_disable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 117440512) #4, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cedrus_dst_format_set(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %1)
  %cond = icmp eq i32 %1, 842094158
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %height2 = getelementptr inbounds %struct.v4l2_pix_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %add = add i32 %5, 15
  %and = and i32 %add, -16
  %add3 = add i32 %3, 15
  %and4 = and i32 %add3, -16
  %mul = mul i32 %and, %and4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #4, !srcloc !78
  %div528 = lshr exact i32 %mul, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %div528) #4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %10, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %8) #4, !srcloc !78
  %and8 = and i32 %add, 65520
  %shl12 = shl i32 %and, 15
  %or = or i32 %shl12, %and8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i33 = getelementptr i8, ptr %13, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %11) #4, !srcloc !78
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %base.i34 = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %base.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i34, align 8
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %base.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i34, align 8
  %add.ptr.i37 = getelementptr i8, ptr %17, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #4, !srcloc !78
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cedrus_hw_suspend(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstc = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 8
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #4
  %ram_clk = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  %mod_clk = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  %ahb_clk = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ahb_clk, align 8
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cedrus_hw_resume(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ahb_clk = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahb_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %mod_clk = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod_clk, align 4
  %call.i46 = tail call i32 @clk_prepare(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end.i50, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

if.end.i50:                                       ; preds = %if.end
  %call1.i48 = tail call i32 @clk_enable(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool2.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool2.not.i49, label %if.end10, label %if.then3.i51

if.then3.i51:                                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i51, %if.end.do.end8_crit_edge
  %retval.0.i52.ph = phi i32 [ %call1.i48, %if.then3.i51 ], [ %call.i46, %if.end.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  br label %err_ahb_clk

if.end10:                                         ; preds = %if.end.i50
  %ram_clk = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram_clk, align 4
  %call.i54 = tail call i32 @clk_prepare(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.end.i58, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end16

if.end.i58:                                       ; preds = %if.end10
  %call1.i56 = tail call i32 @clk_enable(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool2.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool2.not.i57, label %if.end18, label %if.then3.i59

if.then3.i59:                                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %11) #4
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i59, %if.end10.do.end16_crit_edge
  %retval.0.i60.ph = phi i32 [ %call1.i56, %if.then3.i59 ], [ %call.i54, %if.end10.do.end16_crit_edge ]
  %dev17 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #7
  br label %err_mod_clk

if.end18:                                         ; preds = %if.end.i58
  %rstc = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rstc, align 8
  %call19 = tail call i32 @reset_control_reset(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %dev25 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12) #7
  %18 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ram_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #4
  tail call void @clk_unprepare(ptr noundef %19) #4
  br label %err_mod_clk

err_mod_clk:                                      ; preds = %do.end24, %do.end16
  %ret.0 = phi i32 [ %retval.0.i60.ph, %do.end16 ], [ %call19, %do.end24 ]
  %20 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #4
  tail call void @clk_unprepare(ptr noundef %21) #4
  br label %err_ahb_clk

err_ahb_clk:                                      ; preds = %err_mod_clk, %do.end8
  %ret.1 = phi i32 [ %retval.0.i52.ph, %do.end8 ], [ %ret.0, %err_mod_clk ]
  %22 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ahb_clk, align 8
  tail call void @clk_disable(ptr noundef %23) #4
  tail call void @clk_unprepare(ptr noundef %23) #4
  br label %cleanup

cleanup:                                          ; preds = %err_ahb_clk, %if.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %err_ahb_clk ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cedrus_hw_probe(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %capabilities2 = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %capabilities2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %capabilities2, align 4
  %pdev = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call3 = tail call i32 @platform_get_irq(ptr noundef %6, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end5.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %call3, ptr noundef nonnull @cedrus_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end13:                                         ; preds = %dev_name.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i173 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %14, ptr noundef %16, i32 noundef 0) #4
  %17 = zext i32 %call.i173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i173, label %do.end21 [
    i32 0, label %if.end13.if.end23_crit_edge
    i32 -19, label %if.end13.if.end23_crit_edge179
  ]

if.end13.if.end23_crit_edge179:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end13.if.end23_crit_edge, %if.end13.if.end23_crit_edge179
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  %call25 = tail call i32 @sunxi_sram_claim(ptr noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.20) #7
  br label %err_mem

if.end32:                                         ; preds = %if.end23
  %call34 = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.22) #4
  %ahb_clk = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 11
  %24 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call34, ptr %ahb_clk, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br i1 %cmp.i, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.24) #7
  %27 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ahb_clk, align 8
  %29 = ptrtoint ptr %28 to i32
  br label %err_sram

if.end44:                                         ; preds = %if.end32
  %call46 = tail call ptr @devm_clk_get(ptr noundef %26, ptr noundef nonnull @.str.26) #4
  %mod_clk = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 10
  %30 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call46, ptr %mod_clk, align 4
  %cmp.i174 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  br i1 %cmp.i174, label %do.end52, label %if.end56

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.28) #7
  %33 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mod_clk, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %err_sram

if.end56:                                         ; preds = %if.end44
  %call58 = tail call ptr @devm_clk_get(ptr noundef %32, ptr noundef nonnull @.str.30) #4
  %ram_clk = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 12
  %36 = ptrtoint ptr %ram_clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call58, ptr %ram_clk, align 4
  %cmp.i175 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  br i1 %cmp.i175, label %do.end64, label %if.end68

do.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.32) #7
  %39 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ram_clk, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %err_sram

if.end68:                                         ; preds = %if.end56
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %38, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %rstc = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 13
  %42 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %rstc, align 8
  %cmp.i176 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.end76, label %if.end80

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.35) #7
  %45 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rstc, align 8
  %47 = ptrtoint ptr %46 to i32
  br label %err_sram

if.end80:                                         ; preds = %if.end68
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %call82 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %49, i32 noundef 0) #4
  %base = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 9
  %50 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call82, ptr %base, align 8
  %cmp.i177 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %do.end88, label %if.end92

do.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.38) #7
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 8
  %55 = ptrtoint ptr %54 to i32
  br label %err_sram

if.end92:                                         ; preds = %if.end80
  %56 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mod_clk, align 4
  %mod_rate = getelementptr inbounds %struct.cedrus_variant, ptr %call, i32 0, i32 1
  %58 = ptrtoint ptr %mod_rate to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mod_rate, align 4
  %call94 = tail call i32 @clk_set_rate(ptr noundef %57, i32 noundef %59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 4
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.41) #7
  br label %err_sram

if.end101:                                        ; preds = %if.end92
  tail call void @pm_runtime_enable(ptr noundef %61) #4
  %62 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 12, i32 15
  %64 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i178 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i178, label %if.end101.cleanup_crit_edge, label %if.then105

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then105:                                       ; preds = %if.end101
  %call107 = tail call i32 @cedrus_hw_resume(ptr noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then105.cleanup_crit_edge, label %err_pm

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_pm:                                           ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %66, i1 noundef zeroext true) #4
  br label %err_sram

err_sram:                                         ; preds = %err_pm, %do.end99, %do.end88, %do.end76, %do.end64, %do.end52, %do.end40
  %ret.0 = phi i32 [ %29, %do.end40 ], [ %35, %do.end52 ], [ %41, %do.end64 ], [ %47, %do.end76 ], [ %55, %do.end88 ], [ %call94, %do.end99 ], [ %call107, %err_pm ]
  %67 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev1, align 4
  %call114 = tail call i32 @sunxi_sram_release(ptr noundef %68) #4
  br label %err_mem

err_mem:                                          ; preds = %err_sram, %do.end30
  %ret.1 = phi i32 [ %call25, %do.end30 ], [ %ret.0, %err_sram ]
  %69 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %70) #4
  br label %cleanup

cleanup:                                          ; preds = %err_mem, %if.then105.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end21, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i173, %do.end21 ], [ %ret.1, %err_mem ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.then105.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr inbounds %struct.cedrus_dev, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_codec = getelementptr inbounds %struct.cedrus_ctx, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %current_codec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_codec, align 4
  %arrayidx = getelementptr %struct.cedrus_dev, ptr %data, i32 0, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %irq_status = getelementptr inbounds %struct.cedrus_dec_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_status, align 4
  %call2 = tail call i32 %7(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %current_codec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_codec, align 4
  %arrayidx7 = getelementptr %struct.cedrus_dev, ptr %data, i32 0, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %irq_disable = getelementptr inbounds %struct.cedrus_dec_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %irq_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_disable, align 4
  tail call void %13(ptr noundef nonnull %call) #4
  %14 = ptrtoint ptr %current_codec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_codec, align 4
  %arrayidx10 = getelementptr %struct.cedrus_dev, ptr %data, i32 0, i32 7, i32 %15
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void %19(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp11 = icmp eq i32 %call2, 1
  %. = select i1 %cmp11, i32 6, i32 5
  %dev14 = getelementptr inbounds %struct.cedrus_ctx, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev14, align 4
  %m2m_dev15 = getelementptr inbounds %struct.cedrus_dev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %m2m_dev15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_dev15, align 8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call, i32 0, i32 10
  %24 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_done_and_job_finish(ptr noundef %23, ptr noundef %25, i32 noundef %.) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cedrus_hw_remove(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %rstc.i = getelementptr inbounds %struct.cedrus_dev, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstc.i, align 8
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %9) #4
  %ram_clk.i = getelementptr inbounds %struct.cedrus_dev, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %ram_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  %mod_clk.i = getelementptr inbounds %struct.cedrus_dev, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %mod_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mod_clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #4
  tail call void @clk_unprepare(ptr noundef %13) #4
  %ahb_clk.i = getelementptr inbounds %struct.cedrus_dev, ptr %7, i32 0, i32 11
  %14 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ahb_clk.i, align 8
  tail call void @clk_disable(ptr noundef %15) #4
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %call6 = tail call i32 @sunxi_sram_release(ptr noundef %17) #4
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %19) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_done_and_job_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 166, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cedrus_hw_resume._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cedrus_hw_resume._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 173, i32 3}
!10 = !{ptr @cedrus_hw_resume._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cedrus_hw_resume._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 180, i32 3}
!14 = !{ptr @cedrus_hw_resume._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cedrus_hw_resume._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 187, i32 3}
!18 = !{ptr @cedrus_hw_resume._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cedrus_hw_resume._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 222, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cedrus_hw_probe._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cedrus_hw_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 229, i32 3}
!27 = !{ptr @cedrus_hw_probe._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cedrus_hw_probe._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 236, i32 3}
!31 = !{ptr @cedrus_hw_probe._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cedrus_hw_probe._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 241, i32 40}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 243, i32 3}
!37 = !{ptr @cedrus_hw_probe._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cedrus_hw_probe._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 249, i32 40}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 251, i32 3}
!43 = !{ptr @cedrus_hw_probe._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cedrus_hw_probe._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 257, i32 40}
!47 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 259, i32 3}
!49 = !{ptr @cedrus_hw_probe._entry.31, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cedrus_hw_probe._entry_ptr.33, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.35, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 267, i32 3}
!53 = !{ptr @cedrus_hw_probe._entry.34, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cedrus_hw_probe._entry_ptr.36, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 275, i32 3}
!57 = !{ptr @cedrus_hw_probe._entry.37, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cedrus_hw_probe._entry_ptr.39, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 283, i32 3}
!61 = !{ptr @cedrus_hw_probe._entry.40, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cedrus_hw_probe._entry_ptr.42, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_hw.c", i32 123, i32 3}
!65 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cedrus_irq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cedrus_irq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2156627638}
!78 = !{i64 6392675}
