; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/esparser.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/esparser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amvdec_format = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x i32] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amvdec_ops = type { ptr, ptr, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esparser\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esparserirq\00", [20 x i8] zeroinitializer }, align 32
@esparser_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed requesting ESPARSER IRQ\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"esparser_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/meson/vdec/esparser.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@esparser_init._entry_ptr = internal global ptr @esparser_init._entry, section ".printk_index", align 4
@esparser_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get esparser_reset\0A\00", [34 x i8] zeroinitializer }, align 32
@esparser_init._entry_ptr.9 = internal global ptr @esparser_init._entry.7, section ".printk_index", align 4
@search_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @wq, i64 44), ptr getelementptr (i8, ptr @wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wq.lock\00", [24 x i8] zeroinitializer }, align 32
@esparser_queue.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson_vdec\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"esparser_queue\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"esparser: ts = %llu pld_size = %u offset = %08X flags = %08X\0A\00", [34 x i8] zeroinitializer }, align 32
@esparser_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 355, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"esparser: input parsing error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@esparser_queue._entry_ptr = internal global ptr @esparser_queue._entry, section ".printk_index", align 4
@esparser_vififo_get_free_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 249, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VIFIFO usage (%u) > VIFIFO size (%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"esparser_vififo_get_free_space\00", [33 x i8] zeroinitializer }, align 32
@esparser_vififo_get_free_space._entry_ptr = internal global ptr @esparser_vififo_get_free_space._entry, section ".printk_index", align 4
@vp9_update_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 98, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unable to update header\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vp9_update_header\00", [46 x i8] zeroinitializer }, align 32
@vp9_update_header._entry_ptr = internal global ptr @vp9_update_header._entry, section ".printk_index", align 4
@vp9_update_header._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 137, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@vp9_update_header._entry_ptr.21 = internal global ptr @vp9_update_header._entry.20, section ".printk_index", align 4
@vp9_update_header.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.4, ptr @.str.22, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: data has gaps, setting to 0\0A\00", [63 x i8] zeroinitializer }, align 32
@vp9_update_header._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: data overwritten\0A\00", [42 x i8] zeroinitializer }, align 32
@vp9_update_header._entry_ptr.25 = internal global ptr @vp9_update_header._entry.23, section ".printk_index", align 4
@esparser_pad_start_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 203, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unable to pad start code\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"esparser_pad_start_code\00", [40 x i8] zeroinitializer }, align 32
@esparser_pad_start_code._entry_ptr = internal global ptr @esparser_pad_start_code._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 435, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 440, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 442, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 449, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"search_done\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 57, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 332, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 355, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 247, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 98, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 137, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 171, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 176, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [47 x i8] c"../drivers/staging/media/meson/vdec/esparser.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 203, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @esparser_init._entry, ptr @esparser_init._entry.7, ptr @esparser_init._entry_ptr, ptr @esparser_init._entry_ptr.9, ptr @esparser_pad_start_code._entry, ptr @esparser_pad_start_code._entry_ptr, ptr @esparser_queue._entry, ptr @esparser_queue._entry_ptr, ptr @esparser_vififo_get_free_space._entry, ptr @esparser_vififo_get_free_space._entry_ptr, ptr @vp9_update_header._entry, ptr @vp9_update_header._entry.20, ptr @vp9_update_header._entry.23, ptr @vp9_update_header._entry_ptr, ptr @vp9_update_header._entry_ptr.21, ptr @vp9_update_header._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @search_done, ptr @wq, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esparser_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esparser_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esparser_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esparser_vififo_get_free_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_update_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_update_header._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_update_header._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esparser_pad_start_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esparser_queue_eos(ptr noundef %core, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %eos_paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.amvdec_core, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eos_paddr) #5
  %2 = ptrtoint ptr %eos_paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %eos_paddr, align 4, !annotation !65
  %add = add i32 %len, 512
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %eos_paddr, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = call ptr @memcpy(ptr %call.i, ptr %data, i32 %len)
  %4 = ptrtoint ptr %eos_paddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eos_paddr, align 4
  %call2 = call fastcc i32 @esparser_write_data(ptr noundef %core, i32 noundef %5, i32 noundef %len)
  %6 = ptrtoint ptr %eos_paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eos_paddr, align 4
  call void @dma_free_attrs(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %call.i, i32 noundef %7, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eos_paddr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esparser_write_data(ptr noundef %core, i32 noundef %addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amvdec_write_parser(ptr noundef %core, i32 noundef 28, i32 noundef 0) #5
  tail call void @amvdec_write_parser(ptr noundef %core, i32 noundef 24, i32 noundef 0) #5
  %shl = shl i32 %size, 8
  %or = or i32 %shl, 35
  tail call void @amvdec_write_parser(ptr noundef %core, i32 noundef 0, i32 noundef %or) #5
  tail call void @amvdec_write_parser(ptr noundef %core, i32 noundef 4, i32 noundef %addr) #5
  %add = add i32 %size, 512
  %or1 = or i32 %add, 939524096
  tail call void @amvdec_write_parser(ptr noundef %core, i32 noundef 8, i32 noundef %or1) #5
  store i1 false, ptr @search_done, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 233) #5
  %.b51 = load i1, ptr @search_done, align 4
  br i1 %.b51, label %entry.if.end35_crit_edge, label %if.then10

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call61 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %.b62 = load i1, ptr @search_done, align 4
  br i1 %.b62, label %if.then10.for.end_crit_edge, label %if.then10.if.end29_crit_edge

if.then10.if.end29_crit_edge:                     ; preds = %if.then10
  br label %if.end29

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %if.then10.if.end29_crit_edge
  %__ret11.164 = phi i32 [ %__ret11.1, %cleanup.if.end29_crit_edge ], [ 20, %if.then10.if.end29_crit_edge ]
  %call63 = phi i32 [ %call, %cleanup.if.end29_crit_edge ], [ %call61, %if.then10.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool30.not = icmp eq i32 %call63, 0
  br i1 %tobool30.not, label %cleanup, label %if.end29.__out_crit_edge

if.end29.__out_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end29
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret11.164) #5
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %.b = load i1, ptr @search_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool17.not = icmp eq i32 %call33, 0
  %1 = select i1 %.b, i1 %tobool17.not, i1 false
  %__ret11.1 = select i1 %1, i32 1, i32 %call33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool23.not = icmp eq i32 %__ret11.1, 0
  %2 = select i1 %.b, i1 true, i1 %tobool23.not
  br i1 %2, label %cleanup.for.end_crit_edge, label %cleanup.if.end29_crit_edge

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  %__ret11.1.lcssa = phi i32 [ 20, %if.then10.for.end_crit_edge ], [ %__ret11.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end, %if.end29.__out_crit_edge
  %__ret11.254 = phi i32 [ %__ret11.1.lcssa, %for.end ], [ %call63, %if.end29.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end35

if.end35:                                         ; preds = %__out, %entry.if.end35_crit_edge
  %__ret.1 = phi i32 [ 20, %entry.if.end35_crit_edge ], [ %__ret11.254, %__out ]
  ret i32 %__ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esparser_queue_all_src(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -524
  %lock = getelementptr i8, ptr %work, i32 -132
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %m2m_ctx = getelementptr i8, ptr %work, i32 -324
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 8
  %rdy_queue = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %rdy_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdy_queue, align 4
  %should_stop = getelementptr i8, ptr %work, i32 60
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %3, %entry ], [ %.pn, %if.end.for.cond_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in, i32 -736
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 8
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 8
  %rdy_queue11 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8, i32 1
  %cmp.not = icmp eq ptr %.pn.in, %rdy_queue11
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = ptrtoint ptr %should_stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %should_stop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  %call = tail call fastcc i32 @esparser_queue(ptr noundef %add.ptr, ptr noundef %buf.0)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.end.for.end_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esparser_queue(ptr noundef %sess, ptr noundef %vbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops2 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops2, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %entry.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_get_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf, i32 0, i32 10, i32 0, i32 3
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i120 = phi i32 [ %9, %if.then.i ], [ 0, %entry.vb2_get_plane_payload.exit_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vbuf, i32 noundef 0) #5
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i, align 4
  %12 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt_out, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 809062486, i32 %15)
  %cmp = icmp eq i32 %15, 809062486
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vb2_get_plane_payload.exit
  %num_pending_bufs = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %num_pending_bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %num_pending_bufs, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 %17(ptr noundef %sess) #5
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %num_dst_bufs.0 = phi i32 [ %call7, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 8
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %19, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_rdy.i, align 4
  %conv.i = zext i8 %21 to i32
  %add = add i32 %num_dst_bufs.0, %conv.i
  %22 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fmt_out, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 809062486, i32 %25)
  %cmp11 = icmp eq i32 %25, 809062486
  %sub = add i32 %add, -3
  %spec.select = select i1 %cmp11, i32 %sub, i32 %add
  %vdec_ops1.i = getelementptr inbounds %struct.amvdec_format, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %vdec_ops1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdec_ops1.i, align 4
  %28 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sess, align 8
  %vififo_level.i = getelementptr inbounds %struct.amvdec_ops, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %vififo_level.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vififo_level.i, align 4
  %call.i121 = tail call i32 %31(ptr noundef %sess) #5
  %call3.i = tail call i32 @amvdec_read_parser(ptr noundef %29, i32 noundef 144) #5
  %add.i = add i32 %call.i121, 6144
  %add4.i = add i32 %add.i, %call3.i
  %vififo_size.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 31
  %32 = ptrtoint ptr %vififo_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vififo_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add4.i)
  %cmp.i = icmp ult i32 %33, %add4.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sess, align 8
  %dev.i = getelementptr inbounds %struct.amvdec_core, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef %add4.i, i32 noundef %33) #8
  br label %esparser_vififo_get_free_space.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 %33, %add4.i
  br label %esparser_vififo_get_free_space.exit

esparser_vififo_get_free_space.exit:              ; preds = %if.end.i, %do.end.i
  %retval.0.i122 = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i122, i32 %retval.0.i120)
  %cmp15 = icmp ult i32 %retval.0.i122, %retval.0.i120
  br i1 %cmp15, label %esparser_vififo_get_free_space.exit.cleanup_crit_edge, label %lor.lhs.false

esparser_vififo_get_free_space.exit.cleanup_crit_edge: ; preds = %esparser_vififo_get_free_space.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %esparser_vififo_get_free_space.exit
  %esparser_queued_bufs = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %esparser_queued_bufs, i32 noundef 4) #5
  %38 = ptrtoint ptr %esparser_queued_bufs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %esparser_queued_bufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %spec.select)
  %cmp17.not = icmp ult i32 %39, %spec.select
  br i1 %cmp17.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else:                                          ; preds = %vb2_get_plane_payload.exit
  %vdec_ops1.i124 = getelementptr inbounds %struct.amvdec_format, ptr %13, i32 0, i32 6
  %40 = ptrtoint ptr %vdec_ops1.i124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdec_ops1.i124, align 4
  %42 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sess, align 8
  %vififo_level.i125 = getelementptr inbounds %struct.amvdec_ops, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %vififo_level.i125 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vififo_level.i125, align 4
  %call.i126 = tail call i32 %45(ptr noundef %sess) #5
  %call3.i127 = tail call i32 @amvdec_read_parser(ptr noundef %43, i32 noundef 144) #5
  %add.i128 = add i32 %call.i126, 6144
  %add4.i129 = add i32 %add.i128, %call3.i127
  %vififo_size.i130 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 31
  %46 = ptrtoint ptr %vififo_size.i130 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vififo_size.i130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add4.i129)
  %cmp.i131 = icmp ult i32 %47, %add4.i129
  br i1 %cmp.i131, label %do.end.i133, label %if.end.i135

do.end.i133:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sess, align 8
  %dev.i132 = getelementptr inbounds %struct.amvdec_core, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %dev.i132 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i132, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.16, i32 noundef %add4.i129, i32 noundef %47) #8
  br label %esparser_vififo_get_free_space.exit137

if.end.i135:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i134 = sub i32 %47, %add4.i129
  br label %esparser_vififo_get_free_space.exit137

esparser_vififo_get_free_space.exit137:           ; preds = %if.end.i135, %do.end.i133
  %retval.0.i136 = phi i32 [ 0, %do.end.i133 ], [ %sub.i134, %if.end.i135 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i136, i32 %retval.0.i120)
  %cmp21 = icmp ult i32 %retval.0.i136, %retval.0.i120
  br i1 %cmp21, label %esparser_vififo_get_free_space.exit137.cleanup_crit_edge, label %esparser_vififo_get_free_space.exit137.if.end24_crit_edge

esparser_vififo_get_free_space.exit137.if.end24_crit_edge: ; preds = %esparser_vififo_get_free_space.exit137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

esparser_vififo_get_free_space.exit137.cleanup_crit_edge: ; preds = %esparser_vififo_get_free_space.exit137
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %esparser_vififo_get_free_space.exit137.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %m2m_ctx25 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %52 = ptrtoint ptr %m2m_ctx25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m2m_ctx25, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %53, i32 0, i32 8
  tail call void @v4l2_m2m_buf_remove_by_buf(ptr noundef %out_q_ctx.i, ptr noundef %vbuf) #5
  %54 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sess, align 8
  %call.i138 = tail call i32 @amvdec_read_parser(ptr noundef %55, i32 noundef 136) #5
  %vififo_paddr.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 30
  %56 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vififo_paddr.i, align 8
  %sub.i139 = sub i32 %call.i138, %57
  %last_offset.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 38
  %58 = ptrtoint ptr %last_offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i139, i32 %59)
  %cmp.i140 = icmp ult i32 %sub.i139, %59
  br i1 %cmp.i140, label %if.then.i141, label %if.end24.esparser_get_offset.exit_crit_edge

if.end24.esparser_get_offset.exit_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %esparser_get_offset.exit

if.then.i141:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %wrap_count.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 39
  %60 = ptrtoint ptr %wrap_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wrap_count.i, align 4
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %wrap_count.i, align 4
  br label %esparser_get_offset.exit

esparser_get_offset.exit:                         ; preds = %if.then.i141, %if.end24.esparser_get_offset.exit_crit_edge
  %62 = ptrtoint ptr %last_offset.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.i139, ptr %last_offset.i, align 8
  %wrap_count3.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 39
  %63 = ptrtoint ptr %wrap_count3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wrap_count3.i, align 4
  %vififo_size.i142 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 31
  %65 = ptrtoint ptr %vififo_size.i142 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vififo_size.i142, align 4
  %mul.i = mul i32 %66, %64
  %add.i143 = add i32 %mul.i, %sub.i139
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf, i32 0, i32 5
  %67 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %timestamp, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 3
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 1
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 8
  %71 = ptrtoint ptr %timecode to i32
  call void @__asan_load4_noabort(i32 %71)
  %.unpack = load i32, ptr %timecode, align 8
  %72 = insertvalue [4 x i32] undef, i32 %.unpack, 0
  %.elt113 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %.elt113 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.unpack114 = load i32, ptr %.elt113, align 4
  %74 = insertvalue [4 x i32] %72, i32 %.unpack114, 1
  %.elt115 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %.elt115 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack116 = load i32, ptr %.elt115, align 8
  %76 = insertvalue [4 x i32] %74, i32 %.unpack116, 2
  %.elt117 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 3, i32 6
  %77 = ptrtoint ptr %.elt117 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack118 = load i32, ptr %.elt117, align 4
  %78 = insertvalue [4 x i32] %76, i32 %.unpack118, 3
  tail call void @amvdec_add_ts(ptr noundef %sess, i64 noundef %68, [4 x i32] %78, i32 noundef %add.i143, i32 noundef %70) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esparser_queue.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esparser_queue, %if.then31)) #5
          to label %do.end [label %if.then31], !srcloc !66

if.then31:                                        ; preds = %esparser_get_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %81 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %timestamp, align 8
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esparser_queue.__UNIQUE_ID_ddebug299, ptr noundef %80, ptr noundef nonnull @.str.13, i64 noundef %82, i32 noundef %retval.0.i120, i32 noundef %add.i143, i32 noundef %84) #5
  br label %do.end

do.end:                                           ; preds = %if.then31, %esparser_get_offset.exit
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %flags, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 2
  %86 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %field, align 4
  %sequence_out = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 22
  %87 = ptrtoint ptr %sequence_out to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sequence_out, align 4
  %inc = add i32 %88, 1
  store i32 %inc, ptr %sequence_out, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbuf, i32 0, i32 4
  %89 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %sequence, align 8
  %90 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fmt_out, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 809062486, i32 %93)
  %cmp38 = icmp eq i32 %93, 809062486
  br i1 %cmp38, label %if.then39, label %do.end.if.end45_crit_edge

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then39:                                        ; preds = %do.end
  %call40 = tail call fastcc i32 @vp9_update_header(ptr noundef %1, ptr noundef %vbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %timestamp, align 8
  tail call void @amvdec_remove_ts(ptr noundef %sess, i64 noundef %95) #5
  tail call void @vb2_buffer_done(ptr noundef %vbuf, i32 noundef 6) #5
  br label %cleanup

if.end45:                                         ; preds = %if.then39.if.end45_crit_edge, %do.end.if.end45_crit_edge
  %payload_size.0 = phi i32 [ %call40, %if.then39.if.end45_crit_edge ], [ %retval.0.i120, %do.end.if.end45_crit_edge ]
  %call.i145 = tail call ptr @vb2_plane_vaddr(ptr noundef %vbuf, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %payload_size.0)
  %cmp.i146 = icmp ult i32 %payload_size.0, 4096
  br i1 %cmp.i146, label %if.then.i148, label %if.end45.if.end.i150_crit_edge

if.end45.if.end.i150_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i150

if.then.i148:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i147 = sub nuw nsw i32 4096, %payload_size.0
  %add.ptr.i = getelementptr i8, ptr %call.i145, i32 %payload_size.0
  %96 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i147)
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.then.i148, %if.end45.if.end.i150_crit_edge
  %pad_size.0.i = phi i32 [ %sub.i147, %if.then.i148 ], [ 0, %if.end45.if.end.i150_crit_edge ]
  %add.i149 = add i32 %pad_size.0.i, %payload_size.0
  %add1.i = add i32 %add.i149, 512
  %97 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.not.i.i = icmp eq i32 %98, 0
  br i1 %cmp.not.i.i, label %if.end.i150.vb2_plane_size.exit.i_crit_edge, label %if.then.i.i

if.end.i150.vb2_plane_size.exit.i_crit_edge:      ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit.i

if.then.i.i:                                      ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf, i32 0, i32 10, i32 0, i32 4
  %99 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i.i, %if.end.i150.vb2_plane_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %100, %if.then.i.i ], [ 0, %if.end.i150.vb2_plane_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %retval.0.i.i)
  %cmp3.i = icmp ugt i32 %add1.i, %retval.0.i.i
  br i1 %cmp3.i, label %do.end.i152, label %if.end5.i

do.end.i152:                                      ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i151 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %101 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i151, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #8
  br label %esparser_pad_start_code.exit

if.end5.i:                                        ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6.i = getelementptr i8, ptr %call.i145, i32 %payload_size.0
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 %pad_size.0.i
  %103 = call ptr @memset(ptr %add.ptr7.i, i32 0, i32 512)
  %arrayidx.i = getelementptr i8, ptr %call.i145, i32 %add.i149
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx.i, align 1
  %add10.i = add i32 %add.i149, 1
  %arrayidx11.i = getelementptr i8, ptr %call.i145, i32 %add10.i
  %105 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx11.i, align 1
  %add13.i = add i32 %add.i149, 2
  %arrayidx14.i = getelementptr i8, ptr %call.i145, i32 %add13.i
  %106 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %arrayidx14.i, align 1
  %add16.i = add i32 %add.i149, 3
  %arrayidx17.i = getelementptr i8, ptr %call.i145, i32 %add16.i
  %107 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -1, ptr %arrayidx17.i, align 1
  br label %esparser_pad_start_code.exit

esparser_pad_start_code.exit:                     ; preds = %if.end5.i, %do.end.i152
  %call48 = tail call fastcc i32 @esparser_write_data(ptr noundef %1, i32 noundef %11, i32 noundef %add.i149)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %do.end53, label %if.end56

do.end53:                                         ; preds = %esparser_pad_start_code.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev54 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %108 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.14) #8
  %110 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %timestamp, align 8
  tail call void @amvdec_remove_ts(ptr noundef %sess, i64 noundef %111) #5
  tail call void @vb2_buffer_done(ptr noundef %vbuf, i32 noundef 6) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 8, i32 noundef 0) #5
  br label %cleanup

if.end56:                                         ; preds = %esparser_pad_start_code.exit
  call void @__sanitizer_cov_trace_pc() #7
  %esparser_queued_bufs57 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 17
  %call.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef %esparser_queued_bufs57, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %esparser_queued_bufs57, i32 1, i32 3, i32 1) #5
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %esparser_queued_bufs57, ptr %esparser_queued_bufs57, i32 1, ptr elementtype(i32) %esparser_queued_bufs57) #5, !srcloc !67
  tail call void @vb2_buffer_done(ptr noundef %vbuf, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end53, %if.then42, %esparser_vififo_get_free_space.exit137.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %esparser_vififo_get_free_space.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then42 ], [ 0, %do.end53 ], [ 0, %if.end56 ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %esparser_vififo_get_free_space.exit.cleanup_crit_edge ], [ -11, %esparser_vififo_get_free_space.exit137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esparser_power_up(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %vdec_ops2 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %vdec_ops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdec_ops2, align 4
  %esparser_reset = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %esparser_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %esparser_reset, align 4
  %call = tail call i32 @reset_control_reset(ptr noundef %7) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 20, i32 noundef 659472) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 28, i32 noundef 0) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 24, i32 noundef 0) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 36, i32 noundef 256) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 40, i32 noundef -256) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 20, i32 noundef 661520) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 0, i32 noundef 3) #5
  %vififo_paddr = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 30
  %8 = ptrtoint ptr %vififo_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vififo_paddr, align 8
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 128, i32 noundef %9) #5
  %10 = ptrtoint ptr %vififo_paddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vififo_paddr, align 8
  %vififo_size = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 31
  %12 = ptrtoint ptr %vififo_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vififo_size, align 4
  %add = add i32 %11, -8
  %sub = add i32 %add, %13
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 132, i32 noundef %sub) #5
  %call4 = tail call i32 @amvdec_read_parser(ptr noundef %1, i32 noundef 92) #5
  %and = and i32 %call4, -2
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 92, i32 noundef %and) #5
  %conf_esparser = getelementptr inbounds %struct.amvdec_ops, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %conf_esparser to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf_esparser, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15(ptr noundef %sess) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 48, i32 noundef 65535) #5
  tail call void @amvdec_write_parser(ptr noundef %1, i32 noundef 44, i32 noundef 256) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_parser(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_read_parser(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esparser_init(ptr noundef %pdev, ptr noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull @esparser_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %core) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i27 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %esparser_reset = getelementptr inbounds %struct.amvdec_core, ptr %core, i32 0, i32 12
  %0 = ptrtoint ptr %esparser_reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i27, ptr %esparser_reset, align 4
  %cmp.i = icmp ugt ptr %call.i27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %1 = ptrtoint ptr %esparser_reset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %esparser_reset, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %3, %do.end11 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esparser_isr(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amvdec_read_parser(ptr noundef %dev, i32 noundef 48) #5
  tail call void @amvdec_write_parser(ptr noundef %dev, i32 noundef 48, i32 noundef %call) #5
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amvdec_write_parser(ptr noundef %dev, i32 noundef 28, i32 noundef 0) #5
  tail call void @amvdec_write_parser(ptr noundef %dev, i32 noundef 24, i32 noundef 0) #5
  store i1 true, ptr @search_done, align 4
  tail call void @__wake_up(ptr noundef nonnull @wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_add_ts(ptr noundef, i64 noundef, [4 x i32], i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vp9_update_header(ptr nocapture noundef readonly %core, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %frame_size = alloca [8 x i32], align 4
  %tot_frame_size = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %frame_size) #5
  %0 = call ptr @memset(ptr %frame_size, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tot_frame_size) #5
  %1 = call ptr @memset(ptr %tot_frame_size, i32 255, i32 32)
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef 0) #5
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.do.end_crit_edge, label %vb2_plane_size.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

vb2_plane_size.exit:                              ; preds = %entry
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %4 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesused.i, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %vb2_plane_size.exit.do.end_crit_edge, label %if.end

vb2_plane_size.exit.do.end_crit_edge:             ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %vb2_plane_size.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %core, i32 0, i32 3
  br label %cleanup.sink.split

if.end:                                           ; preds = %vb2_plane_size.exit
  %sub = add i32 %5, -1
  %arrayidx = getelementptr i8, ptr %call, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp3 = icmp eq i32 %and, 192
  br i1 %cmp3, label %if.then5, label %if.end52.thread

if.then5:                                         ; preds = %if.end
  %and7 = and i32 %conv, 7
  %add = add nuw nsw i32 %and7, 1
  %10 = lshr i32 %conv, 3
  %and9 = and i32 %10, 3
  %add10.neg = xor i32 %and9, -1
  %mul.neg = mul nsw i32 %add, %add10.neg
  %sub11 = add i32 %mul.neg, %5
  %sub12 = add i32 %sub11, -2
  %arrayidx13 = getelementptr i8, ptr %call, i32 %sub12
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %9)
  %cmp16.not = icmp eq i8 %12, %9
  br i1 %cmp16.not, label %if.end19, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.then5
  %inc = add i32 %sub11, -1
  %13 = add nuw nsw i32 %and9, 1
  %arrayidx27 = getelementptr i8, ptr %call, i32 %inc
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond = icmp eq i32 %and9, 0
  br i1 %exitcond, label %if.end19.for.end_crit_edge, label %for.body26.1

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body26.1:                                     ; preds = %if.end19
  %arrayidx27.1 = getelementptr i8, ptr %call, i32 %sub11
  %16 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx27.1, align 1
  %conv28.1 = zext i8 %17 to i32
  %shl.1 = shl nuw nsw i32 %conv28.1, 8
  %or.1 = or i32 %shl.1, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1 = icmp eq i32 %and9, 1
  br i1 %exitcond.1, label %for.body26.1.for.end_crit_edge, label %for.body26.2

for.body26.1.for.end_crit_edge:                   ; preds = %for.body26.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body26.2:                                     ; preds = %for.body26.1
  %inc31.1 = add i32 %sub11, 1
  %arrayidx27.2 = getelementptr i8, ptr %call, i32 %inc31.1
  %18 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27.2, align 1
  %conv28.2 = zext i8 %19 to i32
  %shl.2 = shl nuw nsw i32 %conv28.2, 16
  %or.2 = or i32 %shl.2, %or.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2 = icmp eq i32 %and9, 2
  br i1 %exitcond.2, label %for.body26.2.for.end_crit_edge, label %for.body26.3

for.body26.2.for.end_crit_edge:                   ; preds = %for.body26.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body26.3:                                     ; preds = %for.body26.2
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2 = add i32 %sub11, 2
  %arrayidx27.3 = getelementptr i8, ptr %call, i32 %inc31.2
  %20 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx27.3, align 1
  %conv28.3 = zext i8 %21 to i32
  %shl.3 = shl nuw i32 %conv28.3, 24
  %or.3 = or i32 %shl.3, %or.2
  br label %for.end

for.end:                                          ; preds = %for.body26.3, %for.body26.2.for.end_crit_edge, %for.body26.1.for.end_crit_edge, %if.end19.for.end_crit_edge
  %or.lcssa = phi i32 [ %conv28, %if.end19.for.end_crit_edge ], [ %or.1, %for.body26.1.for.end_crit_edge ], [ %or.2, %for.body26.2.for.end_crit_edge ], [ %or.3, %for.body26.3 ]
  %22 = add i32 %and9, %sub11
  %23 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.lcssa, ptr %frame_size, align 4
  %24 = load i32, ptr %frame_size, align 4
  %25 = ptrtoint ptr %tot_frame_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tot_frame_size, align 4
  %26 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %exitcond289 = icmp eq i32 %and7, 0
  br i1 %exitcond289, label %for.end.if.end52_crit_edge, label %for.body.1

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.1:                                       ; preds = %for.end
  %arrayidx22.1 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 1
  %arrayidx27.1290 = getelementptr i8, ptr %call, i32 %22
  %27 = ptrtoint ptr %arrayidx27.1290 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27.1290, align 1
  %conv28.1291 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.1293 = icmp eq i32 %and9, 0
  br i1 %exitcond.1293, label %for.body.1.for.end.1_crit_edge, label %for.body26.1.1

for.body.1.for.end.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.1

for.body26.1.1:                                   ; preds = %for.body.1
  %inc31.1292 = add i32 %22, 1
  %arrayidx27.1.1 = getelementptr i8, ptr %call, i32 %inc31.1292
  %29 = ptrtoint ptr %arrayidx27.1.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx27.1.1, align 1
  %conv28.1.1 = zext i8 %30 to i32
  %shl.1.1 = shl nuw nsw i32 %conv28.1.1, 8
  %or.1.1 = or i32 %shl.1.1, %conv28.1291
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.1 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.1, label %for.body26.1.1.for.end.1_crit_edge, label %for.body26.2.1

for.body26.1.1.for.end.1_crit_edge:               ; preds = %for.body26.1.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.1

for.body26.2.1:                                   ; preds = %for.body26.1.1
  %inc31.1.1 = add i32 %22, 2
  %arrayidx27.2.1 = getelementptr i8, ptr %call, i32 %inc31.1.1
  %31 = ptrtoint ptr %arrayidx27.2.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx27.2.1, align 1
  %conv28.2.1 = zext i8 %32 to i32
  %shl.2.1 = shl nuw nsw i32 %conv28.2.1, 16
  %or.2.1 = or i32 %shl.2.1, %or.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.1 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.1, label %for.body26.2.1.for.end.1_crit_edge, label %for.body26.3.1

for.body26.2.1.for.end.1_crit_edge:               ; preds = %for.body26.2.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.1

for.body26.3.1:                                   ; preds = %for.body26.2.1
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.1 = add i32 %22, 3
  %arrayidx27.3.1 = getelementptr i8, ptr %call, i32 %inc31.2.1
  %33 = ptrtoint ptr %arrayidx27.3.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx27.3.1, align 1
  %conv28.3.1 = zext i8 %34 to i32
  %shl.3.1 = shl nuw i32 %conv28.3.1, 24
  %or.3.1 = or i32 %shl.3.1, %or.2.1
  br label %for.end.1

for.end.1:                                        ; preds = %for.body26.3.1, %for.body26.2.1.for.end.1_crit_edge, %for.body26.1.1.for.end.1_crit_edge, %for.body.1.for.end.1_crit_edge
  %or.lcssa.1 = phi i32 [ %conv28.1291, %for.body.1.for.end.1_crit_edge ], [ %or.1.1, %for.body26.1.1.for.end.1_crit_edge ], [ %or.2.1, %for.body26.2.1.for.end.1_crit_edge ], [ %or.3.1, %for.body26.3.1 ]
  %35 = add i32 %13, %22
  %36 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.lcssa.1, ptr %arrayidx22.1, align 4
  %37 = ptrtoint ptr %tot_frame_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tot_frame_size, align 4
  %39 = load i32, ptr %arrayidx22.1, align 4
  %add41.1 = add i32 %39, %38
  %arrayidx42.1 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add41.1, ptr %arrayidx42.1, align 4
  %41 = load i32, ptr %arrayidx22.1, align 4
  %add45.1 = add i32 %41, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and7)
  %exitcond289.1 = icmp eq i32 %and7, 1
  br i1 %exitcond289.1, label %for.end.1.if.end52_crit_edge, label %for.body.2

for.end.1.if.end52_crit_edge:                     ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.2:                                       ; preds = %for.end.1
  %arrayidx22.2 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 2
  %arrayidx27.2295 = getelementptr i8, ptr %call, i32 %35
  %42 = ptrtoint ptr %arrayidx27.2295 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx27.2295, align 1
  %conv28.2296 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.2298 = icmp eq i32 %and9, 0
  br i1 %exitcond.2298, label %for.body.2.for.end.2_crit_edge, label %for.body26.1.2

for.body.2.for.end.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.2

for.body26.1.2:                                   ; preds = %for.body.2
  %inc31.2297 = add i32 %35, 1
  %arrayidx27.1.2 = getelementptr i8, ptr %call, i32 %inc31.2297
  %44 = ptrtoint ptr %arrayidx27.1.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx27.1.2, align 1
  %conv28.1.2 = zext i8 %45 to i32
  %shl.1.2 = shl nuw nsw i32 %conv28.1.2, 8
  %or.1.2 = or i32 %shl.1.2, %conv28.2296
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.2 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.2, label %for.body26.1.2.for.end.2_crit_edge, label %for.body26.2.2

for.body26.1.2.for.end.2_crit_edge:               ; preds = %for.body26.1.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.2

for.body26.2.2:                                   ; preds = %for.body26.1.2
  %inc31.1.2 = add i32 %35, 2
  %arrayidx27.2.2 = getelementptr i8, ptr %call, i32 %inc31.1.2
  %46 = ptrtoint ptr %arrayidx27.2.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx27.2.2, align 1
  %conv28.2.2 = zext i8 %47 to i32
  %shl.2.2 = shl nuw nsw i32 %conv28.2.2, 16
  %or.2.2 = or i32 %shl.2.2, %or.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.2 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.2, label %for.body26.2.2.for.end.2_crit_edge, label %for.body26.3.2

for.body26.2.2.for.end.2_crit_edge:               ; preds = %for.body26.2.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.2

for.body26.3.2:                                   ; preds = %for.body26.2.2
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.2 = add i32 %35, 3
  %arrayidx27.3.2 = getelementptr i8, ptr %call, i32 %inc31.2.2
  %48 = ptrtoint ptr %arrayidx27.3.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx27.3.2, align 1
  %conv28.3.2 = zext i8 %49 to i32
  %shl.3.2 = shl nuw i32 %conv28.3.2, 24
  %or.3.2 = or i32 %shl.3.2, %or.2.2
  br label %for.end.2

for.end.2:                                        ; preds = %for.body26.3.2, %for.body26.2.2.for.end.2_crit_edge, %for.body26.1.2.for.end.2_crit_edge, %for.body.2.for.end.2_crit_edge
  %or.lcssa.2 = phi i32 [ %conv28.2296, %for.body.2.for.end.2_crit_edge ], [ %or.1.2, %for.body26.1.2.for.end.2_crit_edge ], [ %or.2.2, %for.body26.2.2.for.end.2_crit_edge ], [ %or.3.2, %for.body26.3.2 ]
  %50 = add i32 %13, %35
  %51 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.lcssa.2, ptr %arrayidx22.2, align 4
  %arrayidx39.2 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx39.2, align 4
  %54 = load i32, ptr %arrayidx22.2, align 4
  %add41.2 = add i32 %54, %53
  %arrayidx42.2 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add41.2, ptr %arrayidx42.2, align 4
  %56 = load i32, ptr %arrayidx22.2, align 4
  %add45.2 = add i32 %56, %add45.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and7)
  %exitcond289.2 = icmp eq i32 %and7, 2
  br i1 %exitcond289.2, label %for.end.2.if.end52_crit_edge, label %for.body.3

for.end.2.if.end52_crit_edge:                     ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.3:                                       ; preds = %for.end.2
  %arrayidx22.3 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 3
  %arrayidx27.3300 = getelementptr i8, ptr %call, i32 %50
  %57 = ptrtoint ptr %arrayidx27.3300 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx27.3300, align 1
  %conv28.3301 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.3 = icmp eq i32 %and9, 0
  br i1 %exitcond.3, label %for.body.3.for.end.3_crit_edge, label %for.body26.1.3

for.body.3.for.end.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.3

for.body26.1.3:                                   ; preds = %for.body.3
  %inc31.3 = add i32 %50, 1
  %arrayidx27.1.3 = getelementptr i8, ptr %call, i32 %inc31.3
  %59 = ptrtoint ptr %arrayidx27.1.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx27.1.3, align 1
  %conv28.1.3 = zext i8 %60 to i32
  %shl.1.3 = shl nuw nsw i32 %conv28.1.3, 8
  %or.1.3 = or i32 %shl.1.3, %conv28.3301
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.3 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.3, label %for.body26.1.3.for.end.3_crit_edge, label %for.body26.2.3

for.body26.1.3.for.end.3_crit_edge:               ; preds = %for.body26.1.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.3

for.body26.2.3:                                   ; preds = %for.body26.1.3
  %inc31.1.3 = add i32 %50, 2
  %arrayidx27.2.3 = getelementptr i8, ptr %call, i32 %inc31.1.3
  %61 = ptrtoint ptr %arrayidx27.2.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx27.2.3, align 1
  %conv28.2.3 = zext i8 %62 to i32
  %shl.2.3 = shl nuw nsw i32 %conv28.2.3, 16
  %or.2.3 = or i32 %shl.2.3, %or.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.3 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.3, label %for.body26.2.3.for.end.3_crit_edge, label %for.body26.3.3

for.body26.2.3.for.end.3_crit_edge:               ; preds = %for.body26.2.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.3

for.body26.3.3:                                   ; preds = %for.body26.2.3
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.3 = add i32 %50, 3
  %arrayidx27.3.3 = getelementptr i8, ptr %call, i32 %inc31.2.3
  %63 = ptrtoint ptr %arrayidx27.3.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx27.3.3, align 1
  %conv28.3.3 = zext i8 %64 to i32
  %shl.3.3 = shl nuw i32 %conv28.3.3, 24
  %or.3.3 = or i32 %shl.3.3, %or.2.3
  br label %for.end.3

for.end.3:                                        ; preds = %for.body26.3.3, %for.body26.2.3.for.end.3_crit_edge, %for.body26.1.3.for.end.3_crit_edge, %for.body.3.for.end.3_crit_edge
  %or.lcssa.3 = phi i32 [ %conv28.3301, %for.body.3.for.end.3_crit_edge ], [ %or.1.3, %for.body26.1.3.for.end.3_crit_edge ], [ %or.2.3, %for.body26.2.3.for.end.3_crit_edge ], [ %or.3.3, %for.body26.3.3 ]
  %65 = add i32 %13, %50
  %66 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.lcssa.3, ptr %arrayidx22.3, align 4
  %arrayidx39.3 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx39.3, align 4
  %69 = load i32, ptr %arrayidx22.3, align 4
  %add41.3 = add i32 %69, %68
  %arrayidx42.3 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add41.3, ptr %arrayidx42.3, align 4
  %71 = load i32, ptr %arrayidx22.3, align 4
  %add45.3 = add i32 %71, %add45.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and7)
  %exitcond289.3 = icmp eq i32 %and7, 3
  br i1 %exitcond289.3, label %for.end.3.if.end52_crit_edge, label %for.body.4

for.end.3.if.end52_crit_edge:                     ; preds = %for.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.4:                                       ; preds = %for.end.3
  %arrayidx22.4 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 4
  %arrayidx27.4 = getelementptr i8, ptr %call, i32 %65
  %72 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx27.4, align 1
  %conv28.4 = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.4 = icmp eq i32 %and9, 0
  br i1 %exitcond.4, label %for.body.4.for.end.4_crit_edge, label %for.body26.1.4

for.body.4.for.end.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.4

for.body26.1.4:                                   ; preds = %for.body.4
  %inc31.4 = add i32 %65, 1
  %arrayidx27.1.4 = getelementptr i8, ptr %call, i32 %inc31.4
  %74 = ptrtoint ptr %arrayidx27.1.4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx27.1.4, align 1
  %conv28.1.4 = zext i8 %75 to i32
  %shl.1.4 = shl nuw nsw i32 %conv28.1.4, 8
  %or.1.4 = or i32 %shl.1.4, %conv28.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.4 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.4, label %for.body26.1.4.for.end.4_crit_edge, label %for.body26.2.4

for.body26.1.4.for.end.4_crit_edge:               ; preds = %for.body26.1.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.4

for.body26.2.4:                                   ; preds = %for.body26.1.4
  %inc31.1.4 = add i32 %65, 2
  %arrayidx27.2.4 = getelementptr i8, ptr %call, i32 %inc31.1.4
  %76 = ptrtoint ptr %arrayidx27.2.4 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx27.2.4, align 1
  %conv28.2.4 = zext i8 %77 to i32
  %shl.2.4 = shl nuw nsw i32 %conv28.2.4, 16
  %or.2.4 = or i32 %shl.2.4, %or.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.4 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.4, label %for.body26.2.4.for.end.4_crit_edge, label %for.body26.3.4

for.body26.2.4.for.end.4_crit_edge:               ; preds = %for.body26.2.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.4

for.body26.3.4:                                   ; preds = %for.body26.2.4
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.4 = add i32 %65, 3
  %arrayidx27.3.4 = getelementptr i8, ptr %call, i32 %inc31.2.4
  %78 = ptrtoint ptr %arrayidx27.3.4 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx27.3.4, align 1
  %conv28.3.4 = zext i8 %79 to i32
  %shl.3.4 = shl nuw i32 %conv28.3.4, 24
  %or.3.4 = or i32 %shl.3.4, %or.2.4
  br label %for.end.4

for.end.4:                                        ; preds = %for.body26.3.4, %for.body26.2.4.for.end.4_crit_edge, %for.body26.1.4.for.end.4_crit_edge, %for.body.4.for.end.4_crit_edge
  %or.lcssa.4 = phi i32 [ %conv28.4, %for.body.4.for.end.4_crit_edge ], [ %or.1.4, %for.body26.1.4.for.end.4_crit_edge ], [ %or.2.4, %for.body26.2.4.for.end.4_crit_edge ], [ %or.3.4, %for.body26.3.4 ]
  %80 = add i32 %13, %65
  %81 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.lcssa.4, ptr %arrayidx22.4, align 4
  %arrayidx39.4 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx39.4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx39.4, align 4
  %84 = load i32, ptr %arrayidx22.4, align 4
  %add41.4 = add i32 %84, %83
  %arrayidx42.4 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 4
  %85 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add41.4, ptr %arrayidx42.4, align 4
  %86 = load i32, ptr %arrayidx22.4, align 4
  %add45.4 = add i32 %86, %add45.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and7)
  %exitcond289.4 = icmp eq i32 %and7, 4
  br i1 %exitcond289.4, label %for.end.4.if.end52_crit_edge, label %for.body.5

for.end.4.if.end52_crit_edge:                     ; preds = %for.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.5:                                       ; preds = %for.end.4
  %arrayidx22.5 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 5
  %arrayidx27.5 = getelementptr i8, ptr %call, i32 %80
  %87 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx27.5, align 1
  %conv28.5 = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.5 = icmp eq i32 %and9, 0
  br i1 %exitcond.5, label %for.body.5.for.end.5_crit_edge, label %for.body26.1.5

for.body.5.for.end.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.5

for.body26.1.5:                                   ; preds = %for.body.5
  %inc31.5 = add i32 %80, 1
  %arrayidx27.1.5 = getelementptr i8, ptr %call, i32 %inc31.5
  %89 = ptrtoint ptr %arrayidx27.1.5 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx27.1.5, align 1
  %conv28.1.5 = zext i8 %90 to i32
  %shl.1.5 = shl nuw nsw i32 %conv28.1.5, 8
  %or.1.5 = or i32 %shl.1.5, %conv28.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.5 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.5, label %for.body26.1.5.for.end.5_crit_edge, label %for.body26.2.5

for.body26.1.5.for.end.5_crit_edge:               ; preds = %for.body26.1.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.5

for.body26.2.5:                                   ; preds = %for.body26.1.5
  %inc31.1.5 = add i32 %80, 2
  %arrayidx27.2.5 = getelementptr i8, ptr %call, i32 %inc31.1.5
  %91 = ptrtoint ptr %arrayidx27.2.5 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx27.2.5, align 1
  %conv28.2.5 = zext i8 %92 to i32
  %shl.2.5 = shl nuw nsw i32 %conv28.2.5, 16
  %or.2.5 = or i32 %shl.2.5, %or.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.5 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.5, label %for.body26.2.5.for.end.5_crit_edge, label %for.body26.3.5

for.body26.2.5.for.end.5_crit_edge:               ; preds = %for.body26.2.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.5

for.body26.3.5:                                   ; preds = %for.body26.2.5
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.5 = add i32 %80, 3
  %arrayidx27.3.5 = getelementptr i8, ptr %call, i32 %inc31.2.5
  %93 = ptrtoint ptr %arrayidx27.3.5 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx27.3.5, align 1
  %conv28.3.5 = zext i8 %94 to i32
  %shl.3.5 = shl nuw i32 %conv28.3.5, 24
  %or.3.5 = or i32 %shl.3.5, %or.2.5
  br label %for.end.5

for.end.5:                                        ; preds = %for.body26.3.5, %for.body26.2.5.for.end.5_crit_edge, %for.body26.1.5.for.end.5_crit_edge, %for.body.5.for.end.5_crit_edge
  %or.lcssa.5 = phi i32 [ %conv28.5, %for.body.5.for.end.5_crit_edge ], [ %or.1.5, %for.body26.1.5.for.end.5_crit_edge ], [ %or.2.5, %for.body26.2.5.for.end.5_crit_edge ], [ %or.3.5, %for.body26.3.5 ]
  %95 = add i32 %13, %80
  %96 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.lcssa.5, ptr %arrayidx22.5, align 4
  %arrayidx39.5 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 4
  %97 = ptrtoint ptr %arrayidx39.5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx39.5, align 4
  %99 = load i32, ptr %arrayidx22.5, align 4
  %add41.5 = add i32 %99, %98
  %arrayidx42.5 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 5
  %100 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add41.5, ptr %arrayidx42.5, align 4
  %101 = load i32, ptr %arrayidx22.5, align 4
  %add45.5 = add i32 %101, %add45.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and7)
  %exitcond289.5 = icmp eq i32 %and7, 5
  br i1 %exitcond289.5, label %for.end.5.if.end52_crit_edge, label %for.body.6

for.end.5.if.end52_crit_edge:                     ; preds = %for.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.6:                                       ; preds = %for.end.5
  %arrayidx22.6 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 6
  %arrayidx27.6 = getelementptr i8, ptr %call, i32 %95
  %102 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx27.6, align 1
  %conv28.6 = zext i8 %103 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.6 = icmp eq i32 %and9, 0
  br i1 %exitcond.6, label %for.body.6.for.end.6_crit_edge, label %for.body26.1.6

for.body.6.for.end.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.6

for.body26.1.6:                                   ; preds = %for.body.6
  %inc31.6 = add i32 %95, 1
  %arrayidx27.1.6 = getelementptr i8, ptr %call, i32 %inc31.6
  %104 = ptrtoint ptr %arrayidx27.1.6 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx27.1.6, align 1
  %conv28.1.6 = zext i8 %105 to i32
  %shl.1.6 = shl nuw nsw i32 %conv28.1.6, 8
  %or.1.6 = or i32 %shl.1.6, %conv28.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.6 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.6, label %for.body26.1.6.for.end.6_crit_edge, label %for.body26.2.6

for.body26.1.6.for.end.6_crit_edge:               ; preds = %for.body26.1.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.6

for.body26.2.6:                                   ; preds = %for.body26.1.6
  %inc31.1.6 = add i32 %95, 2
  %arrayidx27.2.6 = getelementptr i8, ptr %call, i32 %inc31.1.6
  %106 = ptrtoint ptr %arrayidx27.2.6 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx27.2.6, align 1
  %conv28.2.6 = zext i8 %107 to i32
  %shl.2.6 = shl nuw nsw i32 %conv28.2.6, 16
  %or.2.6 = or i32 %shl.2.6, %or.1.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.6 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.6, label %for.body26.2.6.for.end.6_crit_edge, label %for.body26.3.6

for.body26.2.6.for.end.6_crit_edge:               ; preds = %for.body26.2.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.6

for.body26.3.6:                                   ; preds = %for.body26.2.6
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.6 = add i32 %95, 3
  %arrayidx27.3.6 = getelementptr i8, ptr %call, i32 %inc31.2.6
  %108 = ptrtoint ptr %arrayidx27.3.6 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx27.3.6, align 1
  %conv28.3.6 = zext i8 %109 to i32
  %shl.3.6 = shl nuw i32 %conv28.3.6, 24
  %or.3.6 = or i32 %shl.3.6, %or.2.6
  br label %for.end.6

for.end.6:                                        ; preds = %for.body26.3.6, %for.body26.2.6.for.end.6_crit_edge, %for.body26.1.6.for.end.6_crit_edge, %for.body.6.for.end.6_crit_edge
  %or.lcssa.6 = phi i32 [ %conv28.6, %for.body.6.for.end.6_crit_edge ], [ %or.1.6, %for.body26.1.6.for.end.6_crit_edge ], [ %or.2.6, %for.body26.2.6.for.end.6_crit_edge ], [ %or.3.6, %for.body26.3.6 ]
  %110 = add i32 %13, %95
  %111 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or.lcssa.6, ptr %arrayidx22.6, align 4
  %arrayidx39.6 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 5
  %112 = ptrtoint ptr %arrayidx39.6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx39.6, align 4
  %114 = load i32, ptr %arrayidx22.6, align 4
  %add41.6 = add i32 %114, %113
  %arrayidx42.6 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 6
  %115 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add41.6, ptr %arrayidx42.6, align 4
  %116 = load i32, ptr %arrayidx22.6, align 4
  %add45.6 = add i32 %116, %add45.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and7)
  %exitcond289.6 = icmp eq i32 %and7, 6
  br i1 %exitcond289.6, label %for.end.6.if.end52_crit_edge, label %for.body.7

for.end.6.if.end52_crit_edge:                     ; preds = %for.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

for.body.7:                                       ; preds = %for.end.6
  %arrayidx22.7 = getelementptr inbounds [8 x i32], ptr %frame_size, i32 0, i32 7
  %arrayidx27.7 = getelementptr i8, ptr %call, i32 %110
  %117 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx27.7, align 1
  %conv28.7 = zext i8 %118 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %exitcond.7 = icmp eq i32 %and9, 0
  br i1 %exitcond.7, label %for.body.7.for.end.7_crit_edge, label %for.body26.1.7

for.body.7.for.end.7_crit_edge:                   ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.7

for.body26.1.7:                                   ; preds = %for.body.7
  %inc31.7 = add i32 %110, 1
  %arrayidx27.1.7 = getelementptr i8, ptr %call, i32 %inc31.7
  %119 = ptrtoint ptr %arrayidx27.1.7 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx27.1.7, align 1
  %conv28.1.7 = zext i8 %120 to i32
  %shl.1.7 = shl nuw nsw i32 %conv28.1.7, 8
  %or.1.7 = or i32 %shl.1.7, %conv28.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and9)
  %exitcond.1.7 = icmp eq i32 %and9, 1
  br i1 %exitcond.1.7, label %for.body26.1.7.for.end.7_crit_edge, label %for.body26.2.7

for.body26.1.7.for.end.7_crit_edge:               ; preds = %for.body26.1.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.7

for.body26.2.7:                                   ; preds = %for.body26.1.7
  %inc31.1.7 = add i32 %110, 2
  %arrayidx27.2.7 = getelementptr i8, ptr %call, i32 %inc31.1.7
  %121 = ptrtoint ptr %arrayidx27.2.7 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx27.2.7, align 1
  %conv28.2.7 = zext i8 %122 to i32
  %shl.2.7 = shl nuw nsw i32 %conv28.2.7, 16
  %or.2.7 = or i32 %shl.2.7, %or.1.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and9)
  %exitcond.2.7 = icmp eq i32 %and9, 2
  br i1 %exitcond.2.7, label %for.body26.2.7.for.end.7_crit_edge, label %for.body26.3.7

for.body26.2.7.for.end.7_crit_edge:               ; preds = %for.body26.2.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.7

for.body26.3.7:                                   ; preds = %for.body26.2.7
  call void @__sanitizer_cov_trace_pc() #7
  %inc31.2.7 = add i32 %110, 3
  %arrayidx27.3.7 = getelementptr i8, ptr %call, i32 %inc31.2.7
  %123 = ptrtoint ptr %arrayidx27.3.7 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx27.3.7, align 1
  %conv28.3.7 = zext i8 %124 to i32
  %shl.3.7 = shl nuw i32 %conv28.3.7, 24
  %or.3.7 = or i32 %shl.3.7, %or.2.7
  br label %for.end.7

for.end.7:                                        ; preds = %for.body26.3.7, %for.body26.2.7.for.end.7_crit_edge, %for.body26.1.7.for.end.7_crit_edge, %for.body.7.for.end.7_crit_edge
  %or.lcssa.7 = phi i32 [ %conv28.7, %for.body.7.for.end.7_crit_edge ], [ %or.1.7, %for.body26.1.7.for.end.7_crit_edge ], [ %or.2.7, %for.body26.2.7.for.end.7_crit_edge ], [ %or.3.7, %for.body26.3.7 ]
  %125 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or.lcssa.7, ptr %arrayidx22.7, align 4
  %arrayidx39.7 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 6
  %126 = ptrtoint ptr %arrayidx39.7 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx39.7, align 4
  %128 = load i32, ptr %arrayidx22.7, align 4
  %add41.7 = add i32 %128, %127
  %arrayidx42.7 = getelementptr inbounds [8 x i32], ptr %tot_frame_size, i32 0, i32 7
  %129 = ptrtoint ptr %arrayidx42.7 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add41.7, ptr %arrayidx42.7, align 4
  %130 = load i32, ptr %arrayidx22.7, align 4
  %add45.7 = add i32 %130, %add45.6
  br label %if.end52

if.end52.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %5, ptr %frame_size, align 4
  %132 = ptrtoint ptr %tot_frame_size to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %5, ptr %tot_frame_size, align 4
  %add54269 = add i32 %5, 16
  br label %vb2_plane_size.exit260

if.end52:                                         ; preds = %for.end.7, %for.end.6.if.end52_crit_edge, %for.end.5.if.end52_crit_edge, %for.end.4.if.end52_crit_edge, %for.end.3.if.end52_crit_edge, %for.end.2.if.end52_crit_edge, %for.end.1.if.end52_crit_edge, %for.end.if.end52_crit_edge
  %add45.lcssa = phi i32 [ %26, %for.end.if.end52_crit_edge ], [ %add45.1, %for.end.1.if.end52_crit_edge ], [ %add45.2, %for.end.2.if.end52_crit_edge ], [ %add45.3, %for.end.3.if.end52_crit_edge ], [ %add45.4, %for.end.4.if.end52_crit_edge ], [ %add45.5, %for.end.5.if.end52_crit_edge ], [ %add45.6, %for.end.6.if.end52_crit_edge ], [ %add45.7, %for.end.7 ]
  %mul53 = shl nuw nsw i32 %add, 4
  %add54 = add i32 %add45.lcssa, %mul53
  br label %vb2_plane_size.exit260

vb2_plane_size.exit260:                           ; preds = %if.end52, %if.end52.thread
  %add54272 = phi i32 [ %add54269, %if.end52.thread ], [ %add54, %if.end52 ]
  %num_frames.0270 = phi i32 [ 1, %if.end52.thread ], [ %add, %if.end52 ]
  %133 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add54272, i32 %134)
  %cmp56.not = icmp ult i32 %add54272, %134
  %dev150 = getelementptr inbounds %struct.amvdec_core, ptr %core, i32 0, i32 3
  br i1 %cmp56.not, label %vb2_plane_size.exit260.for.body68_crit_edge, label %vb2_plane_size.exit260.cleanup.sink.split_crit_edge

vb2_plane_size.exit260.cleanup.sink.split_crit_edge: ; preds = %vb2_plane_size.exit260
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

vb2_plane_size.exit260.for.body68_crit_edge:      ; preds = %vb2_plane_size.exit260
  br label %for.body68

for.body68:                                       ; preds = %if.end153.for.body68_crit_edge, %vb2_plane_size.exit260.for.body68_crit_edge
  %cur_frame.1288.in = phi i32 [ %cur_frame.1288, %if.end153.for.body68_crit_edge ], [ %num_frames.0270, %vb2_plane_size.exit260.for.body68_crit_edge ]
  %old_header.0287 = phi ptr [ %add.ptr, %if.end153.for.body68_crit_edge ], [ null, %vb2_plane_size.exit260.for.body68_crit_edge ]
  %cur_frame.1288 = add nsw i32 %cur_frame.1288.in, -1
  %arrayidx69 = getelementptr [8 x i32], ptr %frame_size, i32 0, i32 %cur_frame.1288
  %135 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %136, 4
  %arrayidx71 = getelementptr [8 x i32], ptr %tot_frame_size, i32 0, i32 %cur_frame.1288
  %137 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx71, align 4
  %sub72 = sub i32 %138, %136
  %mul73 = shl i32 %cur_frame.1288, 4
  %add74 = add i32 %sub72, %mul73
  %add.ptr = getelementptr i8, ptr %call, i32 %add74
  %add.ptr75 = getelementptr i8, ptr %call, i32 %sub72
  %add.ptr76 = getelementptr i8, ptr %add.ptr, i32 16
  %139 = call ptr @memmove(ptr %add.ptr76, ptr %add.ptr75, i32 %136)
  %140 = lshr i32 %add70, 24
  %conv79 = trunc i32 %140 to i8
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv79, ptr %add.ptr, align 1
  %142 = lshr i32 %add70, 16
  %conv83 = trunc i32 %142 to i8
  %arrayidx84 = getelementptr i8, ptr %add.ptr, i32 1
  %143 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv83, ptr %arrayidx84, align 1
  %144 = lshr i32 %add70, 8
  %conv87 = trunc i32 %144 to i8
  %arrayidx88 = getelementptr i8, ptr %add.ptr, i32 2
  %145 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv87, ptr %arrayidx88, align 1
  %conv91 = trunc i32 %add70 to i8
  %arrayidx92 = getelementptr i8, ptr %add.ptr, i32 3
  %146 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv91, ptr %arrayidx92, align 1
  %conv95 = xor i8 %conv79, -1
  %arrayidx96 = getelementptr i8, ptr %add.ptr, i32 4
  %147 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv95, ptr %arrayidx96, align 1
  %conv100 = xor i8 %conv83, -1
  %arrayidx101 = getelementptr i8, ptr %add.ptr, i32 5
  %148 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv100, ptr %arrayidx101, align 1
  %conv105 = xor i8 %conv87, -1
  %arrayidx106 = getelementptr i8, ptr %add.ptr, i32 6
  %149 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv105, ptr %arrayidx106, align 1
  %150 = trunc i32 %136 to i8
  %conv110 = sub i8 -5, %150
  %arrayidx111 = getelementptr i8, ptr %add.ptr, i32 7
  %151 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv110, ptr %arrayidx111, align 1
  %arrayidx112 = getelementptr i8, ptr %add.ptr, i32 8
  %152 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx112, align 1
  %arrayidx113 = getelementptr i8, ptr %add.ptr, i32 9
  %153 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %arrayidx113, align 1
  %arrayidx114 = getelementptr i8, ptr %add.ptr, i32 10
  %154 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %arrayidx114, align 1
  %arrayidx115 = getelementptr i8, ptr %add.ptr, i32 11
  %155 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %arrayidx115, align 1
  %arrayidx116 = getelementptr i8, ptr %add.ptr, i32 12
  %156 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 65, ptr %arrayidx116, align 1
  %arrayidx117 = getelementptr i8, ptr %add.ptr, i32 13
  %157 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 77, ptr %arrayidx117, align 1
  %arrayidx118 = getelementptr i8, ptr %add.ptr, i32 14
  %158 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 76, ptr %arrayidx118, align 1
  %arrayidx119 = getelementptr i8, ptr %add.ptr, i32 15
  %159 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 86, ptr %arrayidx119, align 1
  %tobool.not = icmp eq ptr %old_header.0287, null
  br i1 %tobool.not, label %for.body68.if.end153_crit_edge, label %if.else121

for.body68.if.end153_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.else121:                                       ; preds = %for.body68
  %add.ptr123 = getelementptr i8, ptr %add.ptr76, i32 %136
  %cmp124 = icmp ugt ptr %old_header.0287, %add.ptr123
  br i1 %cmp124, label %do.body127, label %if.else141

do.body127:                                       ; preds = %if.else121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_update_header.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_update_header, %if.then132)) #5
          to label %do.end136 [label %if.then132], !srcloc !66

if.then132:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev150, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vp9_update_header.__UNIQUE_ID_ddebug298, ptr noundef %161, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #5
  br label %do.end136

do.end136:                                        ; preds = %if.then132, %do.body127
  %sub.ptr.lhs.cast = ptrtoint ptr %old_header.0287 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 16
  %add139 = add i32 %sub.ptr.sub, %136
  %add140 = sub i32 %add139, %sub.ptr.rhs.cast
  %162 = call ptr @memset(ptr %add.ptr123, i32 0, i32 %add140)
  br label %if.end153

if.else141:                                       ; preds = %if.else121
  %cmp144 = icmp ult ptr %old_header.0287, %add.ptr123
  br i1 %cmp144, label %do.end149, label %if.else141.if.end153_crit_edge

if.else141.if.end153_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

do.end149:                                        ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #7
  %163 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev150, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #8
  br label %if.end153

if.end153:                                        ; preds = %do.end149, %if.else141.if.end153_crit_edge, %do.end136, %for.body68.if.end153_crit_edge
  %cmp66 = icmp sgt i32 %cur_frame.1288.in, 1
  br i1 %cmp66, label %if.end153.for.body68_crit_edge, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end153.for.body68_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body68

cleanup.sink.split:                               ; preds = %vb2_plane_size.exit260.cleanup.sink.split_crit_edge, %do.end
  %dev150.sink = phi ptr [ %dev, %do.end ], [ %dev150, %vb2_plane_size.exit260.cleanup.sink.split_crit_edge ]
  %165 = ptrtoint ptr %dev150.sink to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev150.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %166, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end153.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %add54272, %if.end153.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tot_frame_size) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %frame_size) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_remove_ts(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_remove_by_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 435, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 440, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 442, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @esparser_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @esparser_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 449, i32 3}
!14 = !{ptr @esparser_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @esparser_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"search_done", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 58, i32 12}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 57, i32 8}
!20 = !{ptr @wq, !19, !"wq", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 332, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @esparser_queue.__UNIQUE_ID_ddebug299, !22, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 355, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @esparser_queue._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @esparser_queue._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 247, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @esparser_vififo_get_free_space._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @esparser_vififo_get_free_space._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 98, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vp9_update_header._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @vp9_update_header._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @vp9_update_header._entry.20, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 137, i32 3}
!43 = !{ptr @vp9_update_header._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 171, i32 4}
!46 = !{ptr @vp9_update_header.__UNIQUE_ID_ddebug298, !45, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 176, i32 4}
!49 = !{ptr @vp9_update_header._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vp9_update_header._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/meson/vdec/esparser.c", i32 203, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @esparser_pad_start_code._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @esparser_pad_start_code._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 2148968464, i64 2148968469, i64 2148968482, i64 2148968526, i64 2148968560, i64 2148968581}
!67 = !{i64 2148367571, i64 2148367597, i64 2148367626, i64 2148367660, i64 2148367691, i64 2148367714}
