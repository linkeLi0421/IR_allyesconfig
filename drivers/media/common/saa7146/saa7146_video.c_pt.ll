; ModuleID = '/llk/IR_all_yes/drivers/media/common/saa7146/saa7146_video.c_pt.bc'
source_filename = "../drivers/media/common/saa7146/saa7146_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+saa7146_start_preview\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_start_preview\09\09\09\09"
module asm "\09.long\09__crc_saa7146_start_preview\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_start_preview:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_start_preview\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_start_preview:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7146_stop_preview\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_stop_preview\09\09\09\09"
module asm "\09.long\09__crc_saa7146_stop_preview\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_stop_preview:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_stop_preview\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_stop_preview:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.saa7146_format = type { i32, i32, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_use_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue, %struct.v4l2_vbi_format, %struct.timer_list, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr, %struct.saa7146_overlay, %struct.v4l2_framebuffer, ptr, ptr, %struct.saa7146_dmaqueue, %struct.v4l2_pix_format, i32, ptr, i32, i32, i32, i32, %struct.saa7146_dma, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.saa7146_overlay = type { ptr, %struct.v4l2_window, [16 x %struct.v4l2_clip], i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.99 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.94, i32, i32 }
%union.anon.94 = type { i32 }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.96, i32, i32, %union.anon.98 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.96 = type { i32 }
%union.anon.98 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_streamparm = type { i32, %union.anon.109 }
%union.anon.109 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.saa7146_buf = type { %struct.videobuf_buffer, ptr, ptr, [3 x %struct.saa7146_pgtable] }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.videobuf_dmabuf = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__param_str_max_memory = internal constant [22 x i8] c"saa7146_vv.max_memory\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_memory = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_max_memory = internal constant %struct.kernel_param { ptr @__param_str_max_memory, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_memory } }, section "__param", align 4
@__UNIQUE_ID_max_memorytype296 = internal constant [35 x i8] c"saa7146_vv.parmtype=max_memory:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_memory297 = internal constant [84 x i8] c"saa7146_vv.parm=max_memory:maximum memory usage for capture buffers (default: 32Mb)\00", section ".modinfo", align 1
@formats = internal global { [10 x %struct.saa7146_format], [40 x i8] } { [10 x %struct.saa7146_format] [%struct.saa7146_format { i32 826427218, i32 535, i8 8, i8 0, i8 0 }, %struct.saa7146_format { i32 1346520914, i32 528, i8 16, i8 0, i8 0 }, %struct.saa7146_format { i32 861030210, i32 513, i8 24, i8 0, i8 0 }, %struct.saa7146_format { i32 877807426, i32 514, i8 32, i8 0, i8 0 }, %struct.saa7146_format { i32 876758866, i32 514, i8 32, i8 0, i8 2 }, %struct.saa7146_format { i32 1497715271, i32 6, i8 8, i8 0, i8 0 }, %struct.saa7146_format { i32 1345466932, i32 4105, i8 16, i8 3, i8 0 }, %struct.saa7146_format { i32 842094169, i32 4106, i8 12, i8 3, i8 0 }, %struct.saa7146_format { i32 842093913, i32 4106, i8 12, i8 2, i8 0 }, %struct.saa7146_format { i32 1498831189, i32 0, i8 16, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@saa7146_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saa7146_vv\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7146_format_by_fourcc\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/common/saa7146/saa7146_video.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): unknown pixelformat:'%4.4s'\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146_vv: %s(): unknown pixelformat:'%4.4s'\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7146_start_preview.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7146_start_preview\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): dev:%p, fh:%p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7146_vv: %s(): dev:%p, fh:%p\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7146_start_preview.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(): no overlay data available. try S_FMT first.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"saa7146_vv: %s(): no overlay data available. try S_FMT first.\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7146_start_preview.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): streaming capture is active\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146_vv: %s(): streaming capture is active\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7146_start_preview.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.12, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): overlay is already active\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): overlay is already active\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7146_start_preview.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.16, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): cannot get necessary overlay resources\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"saa7146_vv: %s(): cannot get necessary overlay resources\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7146_start_preview.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.18, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): %dx%d+%d+%d 0x%08x field=%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146_vv: %s(): %dx%d+%d+%d 0x%08x field=%s\0A\00", [49 x i8] zeroinitializer }, align 32
@v4l2_field_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@saa7146_start_preview.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.20, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): enabling overlay failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146_vv: %s(): enabling overlay failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__kstrtab_saa7146_start_preview = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_start_preview = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_start_preview = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_start_preview to i32), ptr @__kstrtab_saa7146_start_preview, ptr @__kstrtabns_saa7146_start_preview }, section "___ksymtab_gpl+saa7146_start_preview", align 4
@saa7146_stop_preview.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.6, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7146_stop_preview\00", [43 x i8] zeroinitializer }, align 32
@saa7146_stop_preview.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.10, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@saa7146_stop_preview.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): no active overlay\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"saa7146_vv: %s(): no active overlay\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7146_stop_preview.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): overlay is active, but in another open\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"saa7146_vv: %s(): overlay is active, but in another open\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_saa7146_stop_preview = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_stop_preview = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_stop_preview = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_stop_preview to i32), ptr @__kstrtab_saa7146_stop_preview, ptr @__kstrtabns_saa7146_stop_preview }, section "___ksymtab_gpl+saa7146_stop_preview", align 4
@saa7146_video_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr @vidioc_g_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr @vidioc_s_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr @vidioc_try_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr null, ptr @vidioc_dqbuf, ptr null, ptr null, ptr @vidioc_overlay, ptr @vidioc_g_fbuf, ptr @vidioc_s_fbuf, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@saa7146_vbi_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr null, ptr @vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@saa7146_video_uops = dso_local constant { %struct.saa7146_use_ops, [44 x i8] } { %struct.saa7146_use_ops { ptr @video_init, ptr @video_open, ptr @video_close, ptr @video_irq_done, ptr @video_read }, [44 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vidioc_try_fmt_vid_overlay\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dev:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7146_vv: %s(): dev:%p\0A\00", [38 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): no fb base set\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7146_vv: %s(): no fb base set\0A\00", [62 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): no fb fmt set\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7146_vv: %s(): no fb fmt set\0A\00", [63 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.34, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): min width/height. (%d,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): min width/height. (%d,%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.36, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): clipcount too big\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"saa7146_vv: %s(): clipcount too big\0A\00", [59 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.38, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): no known field mode '%d'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"saa7146_vv: %s(): no known field mode '%d'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7146 v4l2\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.10, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): set to pixelformat '%4.4s'\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"saa7146_vv: %s(): set to pixelformat '%4.4s'\0A\00", [50 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_overlay.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vidioc_s_fmt_vid_overlay\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): V4L2_BUF_TYPE_VIDEO_OVERLAY: dev:%p, fh:%p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_OVERLAY: dev:%p, fh:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.43, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.38, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): w:%d, h:%d, bytesperline:%d, sizeimage:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"saa7146_vv: %s(): w:%d, h:%d, bytesperline:%d, sizeimage:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@vidioc_overlay.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_overlay\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): VIDIOC_OVERLAY on:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"saa7146_vv: %s(): VIDIOC_OVERLAY on:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@vidioc_s_fbuf.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vidioc_s_fbuf\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): VIDIOC_S_FBUF\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7146_vv: %s(): VIDIOC_S_FBUF\0A\00", [63 x i8] zeroinitializer }, align 32
@vidioc_s_fbuf.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.59, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s(): planar pixelformat '%4.4s' not allowed for overlay\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"saa7146_vv: %s(): planar pixelformat '%4.4s' not allowed for overlay\0A\00", [58 x i8] zeroinitializer }, align 32
@vidioc_s_fbuf.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.63, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): setting bytesperline to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"saa7146_vv: %s(): setting bytesperline to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@vidioc_streamon.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidioc_streamon\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): VIDIOC_STREAMON, type:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"saa7146_vv: %s(): VIDIOC_STREAMON, type:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@video_begin.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.6, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"video_begin\00", [20 x i8] zeroinitializer }, align 32
@video_begin.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): already capturing\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"saa7146_vv: %s(): already capturing\0A\00", [59 x i8] zeroinitializer }, align 32
@video_begin.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): already capturing in another open\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"saa7146_vv: %s(): already capturing in another open\0A\00", [43 x i8] zeroinitializer }, align 32
@video_begin.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.73, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s(): warning: suspending overlay video for streaming capture\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"saa7146_vv: %s(): warning: suspending overlay video for streaming capture\0A\00", [53 x i8] zeroinitializer }, align 32
@video_begin.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.75, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): suspending video failed. aborting\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"saa7146_vv: %s(): suspending video failed. aborting\0A\00", [43 x i8] zeroinitializer }, align 32
@video_begin.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.77, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): cannot get capture resource %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"saa7146_vv: %s(): cannot get capture resource %d\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_streamoff.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_streamoff\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): VIDIOC_STREAMOFF, type:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): VIDIOC_STREAMOFF, type:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@vidioc_streamoff.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.82, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): not capturing\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7146_vv: %s(): not capturing\0A\00", [63 x i8] zeroinitializer }, align 32
@vidioc_streamoff.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.84, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): capturing, but in another open\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"saa7146_vv: %s(): capturing, but in another open\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_streamoff.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.86, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): warning: videobuf_streamoff() failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"saa7146_vv: %s(): warning: videobuf_streamoff() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@video_end.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.6, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video_end\00", [22 x i8] zeroinitializer }, align 32
@video_end.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.82, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@video_end.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.84, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vidioc_s_std.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_std\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): VIDIOC_S_STD\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"saa7146_vv: %s(): VIDIOC_S_STD\0A\00", [32 x i8] zeroinitializer }, align 32
@vidioc_s_std.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.92, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s(): cannot change video standard while streaming capture is active\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"saa7146_vv: %s(): cannot change video standard while streaming capture is active\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_s_std.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.75, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vidioc_s_std.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.94, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): VIDIOC_S_STD: standard not found\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"saa7146_vv: %s(): VIDIOC_S_STD: standard not found\0A\00", [44 x i8] zeroinitializer }, align 32
@vidioc_s_std.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.96, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): VIDIOC_S_STD: set to standard to '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"saa7146_vv: %s(): VIDIOC_S_STD: set to standard to '%s'\0A\00", [39 x i8] zeroinitializer }, align 32
@video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&vv->video_dmaq.timeout)\00", [38 x i8] zeroinitializer }, align 32
@video_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @buffer_setup, ptr @buffer_prepare, ptr @buffer_queue, ptr @buffer_release }, [16 x i8] zeroinitializer }, align 32
@buffer_setup.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): %d buffers, %d bytes each\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): %d buffers, %d bytes each\0A\00", [51 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(): vbuf:%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7146_vv: %s(): vbuf:%p\0A\00", [37 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.105, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): w (%d) / h (%d) out of bounds\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"saa7146_vv: %s(): w (%d) / h (%d) out of bounds\0A\00", [47 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.107, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): size mismatch\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7146_vv: %s(): size mismatch\0A\00", [63 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.109, i8 1, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"saa7146_vv: %s(): buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.111, i8 1, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): error out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7146_vv: %s(): error out\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7146_pgtable_build.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7146_pgtable_build\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): dev:%p, buf:%p, sg_len:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): dev:%p, buf:%p, sg_len:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7146_pgtable_build.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.116, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"saa7146_vv: %s(): size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7146_pgtable_build.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.116, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@buffer_queue.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.103, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_release.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.103, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_release\00", [17 x i8] zeroinitializer }, align 32
@video_irq_done.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video_irq_done\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): called\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7146_vv: %s(): called\0A\00", [38 x i8] zeroinitializer }, align 32
@video_read.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.121, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_read\00", [21 x i8] zeroinitializer }, align 32
@video_read.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.69, i8 1, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@video_read.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.71, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963796, i64 9963797]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 16]
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"max_memory\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 9, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 21, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 90, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 103, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 107, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 113, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 120, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 128, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 140, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 146, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 163, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 173, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 178, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"saa7146_video_ioctl_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 970, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"saa7146_vbi_ioctl_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 997, i32 29 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"saa7146_video_uops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1281, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 686, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 689, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 693, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 697, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 702, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 724, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 444, i32 31 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 446, i32 33 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 744, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 753, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 765, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 621, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 670, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 865, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 471, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 483, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 500, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 922, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 324, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 328, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 331, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 336, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 340, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 358, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 941, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 947, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 952, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 962, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 387, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 821, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 824, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 853, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 857, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1180, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [11 x i8] c"video_qops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1166, i32 40 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1135, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1047, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1054, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1061, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1065, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1113, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 204, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 224, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1148, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1159, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1229, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.512 = private constant [48 x i8] c"../drivers/media/common/saa7146/saa7146_video.c\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1247, i32 2 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_max_memory297, ptr @__UNIQUE_ID_max_memorytype296, ptr @__ksymtab_saa7146_start_preview, ptr @__ksymtab_saa7146_stop_preview, ptr @__param_max_memory, ptr @max_memory, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @saa7146_video_ioctl_ops, ptr @saa7146_vbi_ioctl_ops, ptr @saa7146_video_uops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @video_init.__key, ptr @.str.98, ptr @video_qops, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_memory to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_vbi_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_video_uops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @saa7146_format_by_fourcc(ptr nocapture readnone %dev, i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  %fourcc.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fourcc.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %fourcc, ptr %fourcc.addr, align 4
  %1 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fourcc)
  %cmp1 = icmp eq i32 %1, %fourcc
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.017.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ]
  %add.ptr = getelementptr %struct.saa7146_format, ptr @formats, i32 %i.017.lcssa
  br label %cleanup

for.inc:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %fourcc)
  %cmp1.1 = icmp eq i32 %2, %fourcc
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %3 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %fourcc)
  %cmp1.2 = icmp eq i32 %3, %fourcc
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %4 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %fourcc)
  %cmp1.3 = icmp eq i32 %4, %fourcc
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %5 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %fourcc)
  %cmp1.4 = icmp eq i32 %5, %fourcc
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %6 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %fourcc)
  %cmp1.5 = icmp eq i32 %6, %fourcc
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %7 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fourcc)
  %cmp1.6 = icmp eq i32 %7, %fourcc
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %8 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %fourcc)
  %cmp1.7 = icmp eq i32 %8, %fourcc
  br i1 %cmp1.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %9 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %fourcc)
  %cmp1.8 = icmp eq i32 %9, %fourcc
  br i1 %cmp1.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %10 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %fourcc)
  %cmp1.9 = icmp eq i32 %10, %fourcc
  br i1 %cmp1.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc.9.cleanup_crit_edge, label %do.body3

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_format_by_fourcc, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !289

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fourcc.addr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body3, %for.inc.9.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ null, %if.then7 ], [ null, %for.inc.9.cleanup_crit_edge ], [ null, %do.body3 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_start_preview(ptr noundef %fh) #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %fmt) #7
  %4 = call ptr @memset(ptr %fmt, i32 255, i32 204)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %5 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %ov = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %ov to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ov, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.body12, label %if.end35

do.body12:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %8 = load i32, ptr @saa7146_debug, align 4
  %and13 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !289

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end35:                                         ; preds = %do.end9
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %video_status, align 4
  %and36 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37.not = icmp eq i32 %and36, 0
  br i1 %cmp37.not, label %if.end35.if.end64_crit_edge, label %land.rhs

if.end35.if.end64_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

land.rhs:                                         ; preds = %if.end35
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video_fh, align 4
  %cmp38 = icmp eq ptr %12, %fh
  br i1 %cmp38, label %do.body41, label %land.rhs.if.end64_crit_edge

land.rhs.if.end64_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.body41:                                        ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %13 = load i32, ptr @saa7146_debug, align 4
  %and42 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.cleanup_crit_edge, label %do.body45

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then57)) #7
          to label %cleanup [label %if.then57], !srcloc !289

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end64:                                         ; preds = %land.rhs.if.end64_crit_edge, %if.end35.if.end64_crit_edge
  %and66 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67.not = icmp eq i32 %and66, 0
  br i1 %cmp67.not, label %if.end64.if.end125_crit_edge, label %land.rhs68

if.end64.if.end125_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

land.rhs68:                                       ; preds = %if.end64
  %video_fh69 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %video_fh69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video_fh69, align 4
  %cmp70 = icmp eq ptr %15, %fh
  br i1 %cmp70, label %do.body78, label %land.rhs68.if.end125_crit_edge

land.rhs68.if.end125_crit_edge:                   ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

do.body78:                                        ; preds = %land.rhs68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %16 = load i32, ptr @saa7146_debug, align 4
  %and79 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.body82

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body82:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then94)) #7
          to label %cleanup [label %if.then94], !srcloc !289

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end125:                                        ; preds = %land.rhs68.if.end125_crit_edge, %if.end64.if.end125_crit_edge
  %call126 = tail call i32 @saa7146_res_get(ptr noundef %fh, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %do.body129, label %if.end152

do.body129:                                       ; preds = %if.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %17 = load i32, ptr @saa7146_debug, align 4
  %and130 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body129.cleanup_crit_edge, label %do.body133

do.body129.cleanup_crit_edge:                     ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body133:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then145)) #7
          to label %cleanup [label %if.then145], !srcloc !289

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end152:                                        ; preds = %if.end125
  %fmt153 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %win = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1
  %18 = call ptr @memcpy(ptr %fmt153, ptr %win, i32 40)
  %call155 = call i32 @vidioc_try_fmt_vid_overlay(ptr noundef null, ptr noundef %fh, ptr noundef nonnull %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156.not = icmp eq i32 %call155, 0
  br i1 %cmp156.not, label %if.end159, label %if.then157

if.then157:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %video_fh158 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %video_fh158 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video_fh158, align 4
  tail call void @saa7146_res_free(ptr noundef %20, i32 noundef 3) #7
  br label %cleanup

if.end159:                                        ; preds = %if.end152
  %21 = call ptr @memcpy(ptr %win, ptr %fmt153, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %22 = load i32, ptr @saa7146_debug, align 4
  %and164 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end159.do.end198_crit_edge, label %do.body167

if.end159.do.end198_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end198

do.body167:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then179)) #7
          to label %do.end198 [label %if.then179], !srcloc !289

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %27 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %win, align 4
  %top = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top, align 4
  %ov_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %ov_fmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ov_fmt, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %field = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 1
  %35 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %field, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %34, ptr noundef %38) #7
  br label %do.end198

do.end198:                                        ; preds = %if.then179, %do.body167, %if.end159.do.end198_crit_edge
  %call199 = tail call i32 @saa7146_enable_overlay(ptr noundef %fh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200.not = icmp eq i32 %call199, 0
  br i1 %cmp200.not, label %if.end226, label %do.body202

do.body202:                                       ; preds = %do.end198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %39 = load i32, ptr @saa7146_debug, align 4
  %and203 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body202.do.end224_crit_edge, label %do.body206

do.body202.do.end224_crit_edge:                   ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end224

do.body206:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_start_preview.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_start_preview, %if.then218)) #7
          to label %do.end224 [label %if.then218], !srcloc !289

if.then218:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_start_preview.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.5, i32 noundef %call199) #7
  br label %do.end224

do.end224:                                        ; preds = %if.then218, %do.body206, %do.body202.do.end224_crit_edge
  %video_fh225 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %40 = ptrtoint ptr %video_fh225 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %video_fh225, align 4
  tail call void @saa7146_res_free(ptr noundef %41, i32 noundef 3) #7
  br label %cleanup

if.end226:                                        ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %video_status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %video_status, align 4
  %video_fh228 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %video_fh228 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fh, ptr %video_fh228, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end226, %do.end224, %if.then157, %if.then145, %do.body133, %do.body129.cleanup_crit_edge, %if.then94, %do.body82, %do.body78.cleanup_crit_edge, %if.then57, %do.body45, %do.body41.cleanup_crit_edge, %if.then28, %do.body16, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then157 ], [ %call199, %do.end224 ], [ 0, %if.end226 ], [ -11, %if.then28 ], [ -11, %do.body12.cleanup_crit_edge ], [ -16, %if.then57 ], [ -16, %do.body41.cleanup_crit_edge ], [ 0, %if.then94 ], [ 0, %do.body78.cleanup_crit_edge ], [ -16, %if.then145 ], [ -16, %do.body129.cleanup_crit_edge ], [ -11, %do.body16 ], [ -16, %do.body45 ], [ 0, %do.body82 ], [ -16, %do.body133 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %fmt) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_overlay, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %1) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %base = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %do.body11, label %if.end34

do.body11:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %7 = load i32, ptr @saa7146_debug, align 4
  %and12 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.body15

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_overlay, %if.then27)) #7
          to label %cleanup [label %if.then27], !srcloc !289

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end34:                                         ; preds = %do.end9
  %ov_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %ov_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ov_fmt, align 4
  %cmp35 = icmp eq ptr %9, null
  br i1 %cmp35, label %do.body37, label %if.end60

do.body37:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and38 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.cleanup_crit_edge, label %do.body41

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_overlay, %if.then53)) #7
          to label %cleanup [label %if.then53], !srcloc !289

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end34
  %width = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %12)
  %cmp61 = icmp ult i32 %12, 48
  br i1 %cmp61, label %if.end60.do.body65_crit_edge, label %lor.lhs.false

if.end60.do.body65_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

lor.lhs.false:                                    ; preds = %if.end60
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp63 = icmp ult i32 %14, 32
  br i1 %cmp63, label %lor.lhs.false.do.body65_crit_edge, label %if.end92

lor.lhs.false.do.body65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

do.body65:                                        ; preds = %lor.lhs.false.do.body65_crit_edge, %if.end60.do.body65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %15 = load i32, ptr @saa7146_debug, align 4
  %and66 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.cleanup_crit_edge, label %do.body69

do.body65.cleanup_crit_edge:                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body69:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_overlay, %if.then81)) #7
          to label %cleanup [label %if.then81], !srcloc !289

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %height85 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %height85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height85, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef %17, i32 noundef %19) #7
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clipcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp93 = icmp ugt i32 %21, 16
  br i1 %cmp93, label %do.body95, label %if.end118

do.body95:                                        ; preds = %if.end92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %22 = load i32, ptr @saa7146_debug, align 4
  %and96 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body95.cleanup_crit_edge, label %do.body99

do.body95.cleanup_crit_edge:                      ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body99:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_overlay, %if.then111)) #7
          to label %cleanup [label %if.then111], !srcloc !289

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end118:                                        ; preds = %if.end92
  %field119 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %field119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field119, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %standard, align 4
  %h_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %h_max_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %h_max_out, align 4
  %v_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %v_max_out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v_max_out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp121 = icmp eq i32 %24, 0
  %div = sdiv i32 %30, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div)
  %cmp125 = icmp ugt i32 %14, %div
  %cond = select i1 %cmp125, i32 4, i32 2
  %field.0 = select i1 %cmp121, i32 %cond, i32 %24
  %31 = zext i32 %field.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %field.0, label %do.body128 [
    i32 2, label %if.end118.sw.bb_crit_edge
    i32 3, label %if.end118.sw.bb_crit_edge216
    i32 7, label %if.end118.sw.bb_crit_edge217
    i32 4, label %if.end118.sw.epilog_crit_edge
  ]

if.end118.sw.epilog_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end118.sw.bb_crit_edge217:                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end118.sw.bb_crit_edge216:                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end118.sw.bb_crit_edge:                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end118.sw.bb_crit_edge, %if.end118.sw.bb_crit_edge216, %if.end118.sw.bb_crit_edge217
  br label %sw.epilog

do.body128:                                       ; preds = %if.end118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %32 = load i32, ptr @saa7146_debug, align 4
  %and129 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body128.cleanup_crit_edge, label %do.body132

do.body128.cleanup_crit_edge:                     ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body132:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_overlay, %if.then144)) #7
          to label %cleanup [label %if.then144], !srcloc !289

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.27, i32 noundef %field.0) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end118.sw.epilog_crit_edge
  %maxh.0 = phi i32 [ %30, %if.end118.sw.epilog_crit_edge ], [ %div, %sw.bb ]
  %33 = ptrtoint ptr %field119 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %field.0, ptr %field119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %28)
  %cmp154 = icmp ugt i32 %12, %28
  br i1 %cmp154, label %if.then155, label %sw.epilog.if.end158_crit_edge

sw.epilog.if.end158_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then155:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %28, ptr %width, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %sw.epilog.if.end158_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %maxh.0)
  %cmp161 = icmp ugt i32 %14, %maxh.0
  br i1 %cmp161, label %if.then162, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %maxh.0, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %if.end158.cleanup_crit_edge, %if.then144, %do.body132, %do.body128.cleanup_crit_edge, %if.then111, %do.body99, %do.body95.cleanup_crit_edge, %if.then81, %do.body69, %do.body65.cleanup_crit_edge, %if.then53, %do.body41, %do.body37.cleanup_crit_edge, %if.then27, %do.body15, %do.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then27 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %if.then53 ], [ -22, %do.body37.cleanup_crit_edge ], [ -22, %if.then81 ], [ -22, %do.body65.cleanup_crit_edge ], [ -22, %if.then111 ], [ -22, %do.body95.cleanup_crit_edge ], [ -22, %if.then144 ], [ -22, %do.body128.cleanup_crit_edge ], [ 0, %if.then162 ], [ 0, %if.end158.cleanup_crit_edge ], [ -22, %do.body15 ], [ -22, %do.body41 ], [ -22, %do.body69 ], [ -22, %do.body99 ], [ -22, %do.body132 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_res_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_enable_overlay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_stop_preview(ptr noundef %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_stop_preview, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_stop_preview.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22, ptr noundef %1, ptr noundef %fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_status, align 4
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %do.end9.if.end37_crit_edge, label %land.rhs

do.end9.if.end37_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.rhs:                                         ; preds = %do.end9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video_fh, align 4
  %cmp11 = icmp eq ptr %8, %fh
  br i1 %cmp11, label %do.body14, label %land.rhs.if.end37_crit_edge

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body14:                                        ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_stop_preview, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !289

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_stop_preview.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end37:                                         ; preds = %land.rhs.if.end37_crit_edge, %do.end9.if.end37_crit_edge
  %and39 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %do.body42, label %if.end65

do.body42:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and43 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.cleanup_crit_edge, label %do.body46

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_stop_preview, %if.then58)) #7
          to label %cleanup [label %if.then58], !srcloc !289

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_stop_preview.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end65:                                         ; preds = %if.end37
  %video_fh66 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %video_fh66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video_fh66, align 4
  %cmp67.not = icmp eq ptr %12, %fh
  br i1 %cmp67.not, label %if.end92, label %do.body69

do.body69:                                        ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %13 = load i32, ptr @saa7146_debug, align 4
  %and70 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.cleanup_crit_edge, label %do.body73

do.body69.cleanup_crit_edge:                      ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_stop_preview, %if.then85)) #7
          to label %cleanup [label %if.then85], !srcloc !289

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_stop_preview.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end92:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %video_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %video_status, align 4
  %15 = ptrtoint ptr %video_fh66 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %video_fh66, align 4
  tail call void @saa7146_disable_overlay(ptr noundef %fh) #7
  tail call void @saa7146_res_free(ptr noundef %fh, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then85, %do.body73, %do.body69.cleanup_crit_edge, %if.then58, %do.body46, %do.body42.cleanup_crit_edge, %if.then30, %do.body18, %do.body14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ -16, %if.then30 ], [ -16, %do.body14.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %do.body42.cleanup_crit_edge ], [ -16, %if.then85 ], [ -16, %do.body69.cleanup_crit_edge ], [ -16, %do.body18 ], [ 0, %do.body46 ], [ -16, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_disable_overlay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_s_ctrl(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %vv_data = getelementptr i8, ptr %1, i32 424
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb12
    i32 9963778, label %sw.bb34
    i32 9963796, label %sw.bb56
    i32 9963797, label %sw.bb59
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mem = getelementptr i8, ptr %1, i32 320
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr1 = getelementptr i8, ptr %8, i32 112
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !291
  %10 = and i32 %9, -256
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val4, align 4
  %shl = shl i32 %13, 24
  %or = or i32 %shl, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !292
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %add.ptr6 = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1073758208) #7, !srcloc !293
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mem15 = getelementptr i8, ptr %1, i32 320
  %19 = ptrtoint ptr %mem15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem15, align 4
  %add.ptr16 = getelementptr i8, ptr %20, i32 112
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  %22 = and i32 %21, -65281
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val21, align 4
  %shl22 = shl i32 %25, 16
  %or23 = or i32 %shl22, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !296
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %27 = ptrtoint ptr %mem15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem15, align 4
  %add.ptr28 = getelementptr i8, ptr %28, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %26) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !297
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %mem15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem15, align 4
  %add.ptr33 = getelementptr i8, ptr %30, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 1073758208) #7, !srcloc !293
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mem37 = getelementptr i8, ptr %1, i32 320
  %31 = ptrtoint ptr %mem37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem37, align 4
  %add.ptr38 = getelementptr i8, ptr %32, i32 112
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #7, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !298
  %34 = and i32 %33, 16777215
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val43, align 4
  %or45 = or i32 %35, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !299
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %39 = ptrtoint ptr %mem37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem37, align 4
  %add.ptr50 = getelementptr i8, ptr %40, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %38) #7, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !300
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %mem37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem37, align 4
  %add.ptr55 = getelementptr i8, ptr %42, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 1073758208) #7, !srcloc !293
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %video_status, align 4
  %and57 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool.not = icmp eq i32 %and57, 0
  br i1 %tobool.not, label %if.end, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  %val58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val58, align 4
  %hflip = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 18
  %47 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %hflip, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %video_status60 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %video_status60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %video_status60, align 4
  %and61 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end64, label %sw.bb59.cleanup_crit_edge

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  %val65 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %50 = ptrtoint ptr %val65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val65, align 4
  %vflip = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 17
  %52 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %vflip, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end64, %if.end, %sw.bb34, %sw.bb12, %sw.bb
  %video_status66 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %53 = ptrtoint ptr %video_status66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %video_status66, align 4
  %and67 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %cmp.not = icmp eq i32 %and67, 0
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %if.then68

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %55 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %video_fh, align 4
  %call69 = tail call i32 @saa7146_stop_preview(ptr noundef %56)
  %call70 = tail call i32 @saa7146_start_preview(ptr noundef %56)
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %sw.epilog.cleanup_crit_edge, %sw.bb59.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.bb56.cleanup_crit_edge ], [ -16, %sw.bb59.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.40, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %ext = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext, align 4
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %3, i32 noundef 32) #7
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %10 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2063597563, ptr %capabilities, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ext_vv_data, align 4
  %capabilities8 = getelementptr inbounds %struct.saa7146_ext_vv, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %capabilities8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capabilities8, align 4
  %or = or i32 %14, -2063597563
  store i32 %or, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ugt i32 %1, 9
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [10 x %struct.saa7146_format], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %video_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 14
  %4 = call ptr @memcpy(ptr %fmt, ptr %video_fmt, i32 48)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %win = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1
  %4 = call ptr @memcpy(ptr %fmt, ptr %win, i32 40)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %__fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fmt_vid_cap, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, ptr noundef %1, ptr noundef %__fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_status, align 4
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %do.end9.if.end37_crit_edge, label %land.rhs

do.end9.if.end37_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.rhs:                                         ; preds = %do.end9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video_fh, align 4
  %cmp11 = icmp eq ptr %8, %__fh
  br i1 %cmp11, label %do.body14, label %land.rhs.if.end37_crit_edge

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body14:                                        ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fmt_vid_cap, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !289

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end37:                                         ; preds = %land.rhs.if.end37_crit_edge, %do.end9.if.end37_crit_edge
  %call38 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %__fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %video_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 14
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %video_fmt, ptr %fmt, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and43 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %do.body46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fmt_vid_cap, %if.then58)) #7
          to label %cleanup [label %if.then58], !srcloc !289

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %pixelformat = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 14, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.42, ptr noundef %pixelformat) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body46, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then30, %do.body18, %do.body14.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then30 ], [ -16, %do.body14.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %if.end41.cleanup_crit_edge ], [ -16, %do.body18 ], [ 0, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_overlay(ptr nocapture noundef readnone %file, ptr noundef %__fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fmt_vid_overlay.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fmt_vid_overlay, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fmt_vid_overlay.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, ptr noundef %1, ptr noundef %__fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %call10 = tail call i32 @vidioc_try_fmt_vid_overlay(ptr noundef %file, ptr noundef %__fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %ov = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9
  %win = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %win, ptr %fmt, i32 40)
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clipcount, align 4
  %nclips = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 3
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 16)
  %9 = ptrtoint ptr %nclips to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nclips, align 4
  %clips = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 2
  %clips24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %clips24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clips24, align 4
  %mul = mul i32 %8, 20
  %12 = call ptr @memcpy(ptr %clips, ptr %11, i32 %mul)
  %13 = ptrtoint ptr %ov to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %__fh, ptr %ov, align 4
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %video_status, align 4
  %and29 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 0
  br i1 %cmp30.not, label %if.end12.cleanup_crit_edge, label %land.rhs

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %if.end12
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video_fh, align 4
  %cmp31 = icmp eq ptr %17, %__fh
  br i1 %cmp31, label %if.then33, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 @saa7146_stop_preview(ptr noundef %__fh)
  %call35 = tail call i32 @saa7146_start_preview(ptr noundef %__fh)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %land.rhs.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_cap, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.50, ptr noundef %1, ptr noundef %fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %fmt10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %7 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fourcc.addr.i, align 4
  %8 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp1.i = icmp eq i32 %8, %6
  br i1 %cmp1.i, label %do.end9.if.then.i_crit_edge, label %for.inc.i

do.end9.if.then.i_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %do.end9.if.then.i_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %do.end9.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.saa7146_format, ptr @formats, i32 %i.017.lcssa.i
  br label %saa7146_format_by_fourcc.exit

for.inc.i:                                        ; preds = %do.end9
  %9 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp1.1.i = icmp eq i32 %9, %6
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %10 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp1.2.i = icmp eq i32 %10, %6
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %11 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp1.3.i = icmp eq i32 %11, %6
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %12 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp1.4.i = icmp eq i32 %12, %6
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %13 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %6)
  %cmp1.5.i = icmp eq i32 %13, %6
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %14 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %6)
  %cmp1.6.i = icmp eq i32 %14, %6
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %15 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %6)
  %cmp1.7.i = icmp eq i32 %15, %6
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %16 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp1.8.i = icmp eq i32 %16, %6
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %17 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %6)
  %cmp1.9.i = icmp eq i32 %17, %6
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %18 = load i32, ptr @saa7146_debug, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge, label %do.body3.i

for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_format_by_fourcc.exit.thread

do.body3.i:                                       ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_cap, %if.then7.i)) #7
          to label %saa7146_format_by_fourcc.exit [label %if.then7.i], !srcloc !289

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fourcc.addr.i) #7
  br label %saa7146_format_by_fourcc.exit.thread

saa7146_format_by_fourcc.exit.thread:             ; preds = %if.then7.i, %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  br label %cleanup

saa7146_format_by_fourcc.exit:                    ; preds = %do.body3.i, %if.then.i
  %retval.0.i179 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %do.body3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %cmp = icmp eq ptr %retval.0.i179, null
  br i1 %cmp, label %saa7146_format_by_fourcc.exit.cleanup_crit_edge, label %if.end13

saa7146_format_by_fourcc.exit.cleanup_crit_edge:  ; preds = %saa7146_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %saa7146_format_by_fourcc.exit
  %field15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field15, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %standard, align 4
  %h_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %h_max_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h_max_out, align 4
  %v_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %v_max_out to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v_max_out, align 8
  %27 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %20, label %do.body28 [
    i32 0, label %if.then18
    i32 7, label %sw.bb
    i32 2, label %if.end13.sw.bb23_crit_edge
    i32 3, label %if.end13.sw.bb23_crit_edge191
    i32 4, label %if.end13.sw.bb26_crit_edge
  ]

if.end13.sw.bb26_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end13.sw.bb23_crit_edge191:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end13.sw.bb23_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.then18:                                        ; preds = %if.end13
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %div = sdiv i32 %26, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %div)
  %cmp20 = icmp ugt i32 %29, %div
  br i1 %cmp20, label %if.then18.sw.bb26_crit_edge, label %if.then18.sw.bb23_crit_edge

if.then18.sw.bb23_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.then18.sw.bb26_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %last_field = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 15
  %30 = ptrtoint ptr %last_field to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %last_field, align 4
  %div22 = sdiv i32 %26, 2
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then18.sw.bb23_crit_edge, %if.end13.sw.bb23_crit_edge, %if.end13.sw.bb23_crit_edge191
  %field.0185 = phi i32 [ 3, %if.then18.sw.bb23_crit_edge ], [ %20, %if.end13.sw.bb23_crit_edge ], [ %20, %if.end13.sw.bb23_crit_edge191 ]
  %last_field24 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 15
  %31 = ptrtoint ptr %last_field24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %last_field24, align 4
  %div25 = sdiv i32 %26, 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.then18.sw.bb26_crit_edge, %if.end13.sw.bb26_crit_edge
  %last_field27 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 15
  %32 = ptrtoint ptr %last_field27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %last_field27, align 4
  br label %sw.epilog

do.body28:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %33 = load i32, ptr @saa7146_debug, align 4
  %and29 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.cleanup_crit_edge, label %do.body32

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_cap, %if.then44)) #7
          to label %cleanup [label %if.then44], !srcloc !289

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.50, i32 noundef %20) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb23, %sw.bb
  %field.0184 = phi i32 [ 4, %sw.bb26 ], [ %field.0185, %sw.bb23 ], [ 7, %sw.bb ]
  %maxh.0 = phi i32 [ %26, %sw.bb26 ], [ %div25, %sw.bb23 ], [ %div22, %sw.bb ]
  %34 = ptrtoint ptr %field15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %field.0184, ptr %field15, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %colorspace, align 4
  %36 = ptrtoint ptr %fmt10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fmt10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %24)
  %cmp55 = icmp ugt i32 %37, %24
  br i1 %cmp55, label %if.then56, label %sw.epilog.if.end59_crit_edge

sw.epilog.if.end59_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %fmt10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %24, ptr %fmt10, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %sw.epilog.if.end59_crit_edge
  %height61 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %height61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %maxh.0)
  %cmp62 = icmp ugt i32 %40, %maxh.0
  br i1 %cmp62, label %if.then63, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %height61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %maxh.0, ptr %height61, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end59.if.end66_crit_edge
  %42 = ptrtoint ptr %fmt10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt10, align 4
  %depth = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i179, i32 0, i32 2
  %44 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %depth, align 4
  %conv = zext i8 %45 to i32
  %mul = mul i32 %43, %conv
  %div69172 = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytesperline, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %div69172)
  %cmp71 = icmp ult i32 %47, %div69172
  br i1 %cmp71, label %if.then73, label %if.end66.if.end76_crit_edge

if.end66.if.end76_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div69172, ptr %bytesperline, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end66.if.end76_crit_edge
  %49 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytesperline, align 4
  %51 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %depth, align 4
  %conv80 = zext i8 %52 to i32
  %div82 = shl nuw nsw i32 %conv80, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %div82)
  %cmp83 = icmp ugt i32 %50, %div82
  br i1 %cmp83, label %if.then85, label %if.end76.if.end88_crit_edge

if.end76.if.end88_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div69172, ptr %bytesperline, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end76.if.end88_crit_edge
  %54 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bytesperline, align 4
  %56 = ptrtoint ptr %height61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height61, align 4
  %mul93 = mul i32 %57, %55
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %58 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul93, ptr %sizeimage, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %59 = load i32, ptr @saa7146_debug, align 4
  %and96 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end88.cleanup_crit_edge, label %do.body99

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body99:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_vid_cap, %if.then111)) #7
          to label %cleanup [label %if.then111], !srcloc !289

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %fmt10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fmt10, align 4
  %62 = ptrtoint ptr %height61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height61, align 4
  %64 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytesperline, align 4
  %66 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sizeimage, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %do.body99, %if.end88.cleanup_crit_edge, %if.then44, %do.body32, %do.body28.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.thread
  %retval.0 = phi i32 [ -22, %saa7146_format_by_fourcc.exit.cleanup_crit_edge ], [ -22, %if.then44 ], [ -22, %do.body28.cleanup_crit_edge ], [ 0, %if.then111 ], [ 0, %if.end88.cleanup_crit_edge ], [ -22, %saa7146_format_by_fourcc.exit.thread ], [ -22, %do.body32 ], [ 0, %do.body99 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr nocapture noundef readnone %file, ptr noundef %__fh, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 4, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 2
  br label %cleanup.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.then
  %vbi_q.sink = phi ptr [ %vbi_q, %if.then3 ], [ %video_q, %if.then ]
  %call4 = tail call i32 @videobuf_reqbufs(ptr noundef %vbi_q.sink, ptr noundef %b) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %file, ptr noundef %__fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 4, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 2
  br label %cleanup.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.then
  %vbi_q.sink = phi ptr [ %vbi_q, %if.then3 ], [ %video_q, %if.then ]
  %call4 = tail call i32 @videobuf_querybuf(ptr noundef %vbi_q.sink, ptr noundef %buf) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %file, ptr noundef %__fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 4, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 2
  br label %cleanup.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.then
  %vbi_q.sink = phi ptr [ %vbi_q, %if.then3 ], [ %video_q, %if.then ]
  %call4 = tail call i32 @videobuf_qbuf(ptr noundef %vbi_q.sink, ptr noundef %buf) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_dqbuf(ptr nocapture noundef readonly %file, ptr noundef %__fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 4, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 2
  br label %cleanup.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.then
  %vbi_q.sink = phi ptr [ %vbi_q, %if.then3 ], [ %video_q, %if.then ]
  %f_flags4 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags4, align 4
  %and5 = and i32 %4, 2048
  %call6 = tail call i32 @videobuf_dqbuf(ptr noundef %vbi_q.sink, ptr noundef %buf, i32 noundef %and5) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call6, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_overlay(ptr nocapture noundef readnone %file, ptr noundef %fh, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_overlay.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_overlay, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !289

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_overlay.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %on) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool9.not = icmp eq i32 %on, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @saa7146_start_preview(ptr noundef %fh)
  br label %if.end13

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @saa7146_stop_preview(ptr noundef %fh)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %err.0 = phi i32 [ %call11, %if.then10 ], [ %call12, %if.else ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %ov_fb = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 10
  %4 = call ptr @memcpy(ptr %fb, ptr %ov_fb, i32 44)
  %5 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %fb, align 4
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fbuf(ptr nocapture noundef readnone %file, ptr noundef readonly %fh, ptr nocapture noundef readonly %fb) #0 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fbuf.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fbuf, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fbuf.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %call10 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call10, label %do.end9.if.end13_crit_edge, label %land.lhs.true

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end9
  %call11 = tail call zeroext i1 @capable(i32 noundef 17) #7
  br i1 %call11, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %do.end9.if.end13_crit_edge
  %pixelformat = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fb, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %7 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fourcc.addr.i, align 4
  %8 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp1.i = icmp eq i32 %8, %6
  br i1 %cmp1.i, label %if.end13.if.then.i_crit_edge, label %for.inc.i

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end13.if.then.i_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %if.end13.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.saa7146_format, ptr @formats, i32 %i.017.lcssa.i
  br label %saa7146_format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end13
  %9 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp1.1.i = icmp eq i32 %9, %6
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %10 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp1.2.i = icmp eq i32 %10, %6
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %11 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp1.3.i = icmp eq i32 %11, %6
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %12 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp1.4.i = icmp eq i32 %12, %6
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %13 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %6)
  %cmp1.5.i = icmp eq i32 %13, %6
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %14 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %6)
  %cmp1.6.i = icmp eq i32 %14, %6
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %15 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %6)
  %cmp1.7.i = icmp eq i32 %15, %6
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %16 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp1.8.i = icmp eq i32 %16, %6
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %17 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %6)
  %cmp1.9.i = icmp eq i32 %17, %6
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %18 = load i32, ptr @saa7146_debug, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge, label %do.body3.i

for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_format_by_fourcc.exit.thread

do.body3.i:                                       ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fbuf, %if.then7.i)) #7
          to label %saa7146_format_by_fourcc.exit [label %if.then7.i], !srcloc !289

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fourcc.addr.i) #7
  br label %saa7146_format_by_fourcc.exit.thread

saa7146_format_by_fourcc.exit.thread:             ; preds = %if.then7.i, %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  br label %cleanup

saa7146_format_by_fourcc.exit:                    ; preds = %do.body3.i, %if.then.i
  %retval.0.i153 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %do.body3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %cmp = icmp eq ptr %retval.0.i153, null
  br i1 %cmp, label %saa7146_format_by_fourcc.exit.cleanup_crit_edge, label %if.end17

saa7146_format_by_fourcc.exit.cleanup_crit_edge:  ; preds = %saa7146_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %saa7146_format_by_fourcc.exit
  %flags = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i153, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %if.end17.if.end45_crit_edge, label %do.body21

if.end17.if.end45_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body21:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %22 = load i32, ptr @saa7146_debug, align 4
  %and22 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.if.end45_crit_edge, label %do.body25

do.body21.if.end45_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fbuf.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fbuf, %if.then37)) #7
          to label %if.end45 [label %if.then37], !srcloc !289

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fbuf.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, ptr noundef nonnull %retval.0.i153) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %do.body25, %do.body21.if.end45_crit_edge, %if.end17.if.end45_crit_edge
  %ov_fb = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 10
  %23 = call ptr @memcpy(ptr %ov_fb, ptr %fb, i32 44)
  %ov_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %ov_fmt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i153, ptr %ov_fmt, align 4
  %fmt84 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 10, i32 3
  %bytesperline = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 10, i32 3, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytesperline, align 4
  %27 = ptrtoint ptr %fmt84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp87 = icmp ult i32 %26, %28
  br i1 %cmp87, label %if.then89, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then89:                                        ; preds = %if.end45
  %depth = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i153, i32 0, i32 2
  %29 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %depth, align 4
  %conv93 = zext i8 %30 to i32
  %mul = mul i32 %28, %conv93
  %div143 = lshr i32 %mul, 3
  %31 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div143, ptr %bytesperline, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %32 = load i32, ptr @saa7146_debug, align 4
  %and98 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.then89.cleanup_crit_edge, label %do.body101

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body101:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_fbuf.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_fbuf, %if.then113)) #7
          to label %cleanup [label %if.then113], !srcloc !289

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesperline, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_fbuf.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.56, i32 noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body101, %if.then89.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.thread, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %saa7146_format_by_fourcc.exit.cleanup_crit_edge ], [ 0, %if.then89.cleanup_crit_edge ], [ 0, %if.then113 ], [ 0, %if.end45.cleanup_crit_edge ], [ -22, %saa7146_format_by_fourcc.exit.thread ], [ 0, %do.body101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %file, ptr noundef %__fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_streamon.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_streamon, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !289

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_streamon.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef %type) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %call9 = tail call fastcc i32 @video_begin(ptr noundef %__fh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %type, label %if.end12.cleanup_crit_edge [
    i32 1, label %if.then13
    i32 4, label %if.then17
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 2
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.then13
  %vbi_q.sink = phi ptr [ %vbi_q, %if.then17 ], [ %video_q, %if.then13 ]
  %call18 = tail call i32 @videobuf_streamon(ptr noundef %vbi_q.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call18, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamoff(ptr nocapture noundef readnone %file, ptr noundef %__fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_streamoff.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_streamoff, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_streamoff.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %type) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_status, align 4
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not.not = icmp eq i32 %and10, 0
  br i1 %cmp.not.not, label %do.body12, label %if.end35

do.body12:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %7 = load i32, ptr @saa7146_debug, align 4
  %and13 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_streamoff.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_streamoff, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !289

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_streamoff.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.79) #7
  br label %cleanup

if.end35:                                         ; preds = %do.end9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video_fh, align 4
  %cmp36.not = icmp eq ptr %9, %__fh
  br i1 %cmp36.not, label %if.end61, label %do.body38

do.body38:                                        ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and39 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.cleanup_crit_edge, label %do.body42

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_streamoff.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_streamoff, %if.then54)) #7
          to label %cleanup [label %if.then54], !srcloc !289

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_streamoff.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.79) #7
  br label %cleanup

if.end61:                                         ; preds = %if.end35
  %11 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %type, label %if.end61.do.body72_crit_edge [
    i32 1, label %if.then63
    i32 4, label %if.then66
  ]

if.end61.do.body72_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 2
  br label %if.end69

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %__fh, i32 0, i32 3
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then63
  %vbi_q.sink = phi ptr [ %vbi_q, %if.then66 ], [ %video_q, %if.then63 ]
  %call67 = tail call i32 @videobuf_streamoff(ptr noundef %vbi_q.sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp70.not = icmp eq i32 %call67, 0
  br i1 %cmp70.not, label %if.else96, label %if.end69.do.body72_crit_edge

if.end69.do.body72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

do.body72:                                        ; preds = %if.end69.do.body72_crit_edge, %if.end61.do.body72_crit_edge
  %err.0126 = phi i32 [ %call67, %if.end69.do.body72_crit_edge ], [ -22, %if.end61.do.body72_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %12 = load i32, ptr @saa7146_debug, align 4
  %and73 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body72.do.end94_crit_edge, label %do.body76

do.body72.do.end94_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94

do.body76:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_streamoff.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_streamoff, %if.then88)) #7
          to label %do.end94 [label %if.then88], !srcloc !289

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_streamoff.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.79) #7
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %do.body76, %do.body72.do.end94_crit_edge
  %13 = tail call fastcc i32 @video_end(ptr noundef %__fh)
  br label %cleanup

if.else96:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = tail call fastcc i32 @video_end(ptr noundef %__fh)
  br label %cleanup

cleanup:                                          ; preds = %if.else96, %do.end94, %if.then54, %do.body42, %do.body38.cleanup_crit_edge, %if.then28, %do.body16, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 0, %do.body12.cleanup_crit_edge ], [ -16, %if.then54 ], [ -16, %do.body38.cleanup_crit_edge ], [ %err.0126, %do.end94 ], [ %call97, %if.else96 ], [ 0, %do.body16 ], [ -16, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %norm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %standard, align 4
  %id = getelementptr inbounds %struct.saa7146_standard, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %id, align 8
  %8 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_std.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_std, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_std.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_status, align 4
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %if.end35, label %do.body12

do.body12:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %7 = load i32, ptr @saa7146_debug, align 4
  %and13 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_std.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_std, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !289

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_std.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.89) #7
  br label %cleanup

if.end35:                                         ; preds = %do.end9
  %and37 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38.not = icmp eq i32 %and37, 0
  br i1 %cmp38.not, label %if.end35.if.end68_crit_edge, label %if.then39

if.end35.if.end68_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then39:                                        ; preds = %if.end35
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video_fh, align 4
  %ov_suspend = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %ov_suspend to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ov_suspend, align 4
  %call41 = tail call i32 @saa7146_stop_preview(ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.then39.if.end68_crit_edge, label %do.body44

if.then39.if.end68_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.body44:                                        ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and45 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.cleanup_crit_edge, label %do.body48

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_std.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_std, %if.then60)) #7
          to label %cleanup [label %if.then60], !srcloc !289

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_std.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.89) #7
  br label %cleanup

if.end68:                                         ; preds = %if.then39.if.end68_crit_edge, %if.end35.if.end68_crit_edge
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_vv_data, align 4
  %num_stds = getelementptr inbounds %struct.saa7146_ext_vv, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %num_stds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_stds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp69194 = icmp sgt i32 %15, 0
  br i1 %cmp69194, label %for.body.lr.ph, label %if.end68.for.end_crit_edge

if.end68.for.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end68
  %stds = getelementptr inbounds %struct.saa7146_ext_vv, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %stds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stds, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %id71 = getelementptr %struct.saa7146_standard, ptr %17, i32 %i.0195, i32 1
  %18 = ptrtoint ptr %id71 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %id71, align 8
  %and72 = and i64 %19, %id
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72)
  %tobool73.not = icmp eq i64 %and72, 0
  br i1 %tobool73.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.inc.if.end91_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end91_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end68.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end68.for.end_crit_edge ], [ %i.0195, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %15)
  %cmp78.not = icmp eq i32 %i.0.lcssa, %15
  br i1 %cmp78.not, label %for.end.if.end91_crit_edge, label %if.then79

for.end.if.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then79:                                        ; preds = %for.end
  %stds81 = getelementptr inbounds %struct.saa7146_ext_vv, ptr %13, i32 0, i32 4
  %20 = ptrtoint ptr %stds81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stds81, align 4
  %arrayidx82 = getelementptr %struct.saa7146_standard, ptr %21, i32 %i.0.lcssa
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %standard to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx82, ptr %standard, align 4
  %23 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ext_vv_data, align 4
  %std_callback = getelementptr inbounds %struct.saa7146_ext_vv, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %std_callback to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %std_callback, align 4
  %cmp84.not = icmp eq ptr %26, null
  br i1 %cmp84.not, label %if.then79.if.end91_crit_edge, label %if.then85

if.then79.if.end91_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %call89 = tail call i32 %26(ptr noundef %1, ptr noundef %arrayidx82) #7
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %if.then79.if.end91_crit_edge, %for.end.if.end91_crit_edge, %for.inc.if.end91_crit_edge
  %cmp78.not203 = phi i1 [ false, %if.then79.if.end91_crit_edge ], [ false, %if.then85 ], [ true, %for.end.if.end91_crit_edge ], [ true, %for.inc.if.end91_crit_edge ]
  %ov_suspend92 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 12
  %27 = ptrtoint ptr %ov_suspend92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ov_suspend92, align 4
  %cmp93.not = icmp eq ptr %28, null
  br i1 %cmp93.not, label %if.end91.if.end98_crit_edge, label %if.then94

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 @saa7146_start_preview(ptr noundef nonnull %28)
  %29 = ptrtoint ptr %ov_suspend92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ov_suspend92, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end91.if.end98_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %30 = load i32, ptr @saa7146_debug, align 4
  %and102 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %cmp78.not203, label %do.body101, label %do.body125

do.body101:                                       ; preds = %if.end98
  br i1 %tobool103.not, label %do.body101.cleanup_crit_edge, label %do.body105

do.body101.cleanup_crit_edge:                     ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body105:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_std.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_std, %if.then117)) #7
          to label %cleanup [label %if.then117], !srcloc !289

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_std.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.89) #7
  br label %cleanup

do.body125:                                       ; preds = %if.end98
  br i1 %tobool103.not, label %do.body125.cleanup_crit_edge, label %do.body129

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body129:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_std.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_std, %if.then141)) #7
          to label %cleanup [label %if.then141], !srcloc !289

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  %standard142 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %standard142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %standard142, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_std.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.89, ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %do.body129, %do.body125.cleanup_crit_edge, %if.then117, %do.body105, %do.body101.cleanup_crit_edge, %if.then60, %do.body48, %do.body44.cleanup_crit_edge, %if.then28, %do.body16, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then28 ], [ -16, %do.body12.cleanup_crit_edge ], [ %call41, %if.then60 ], [ %call41, %do.body44.cleanup_crit_edge ], [ -22, %if.then117 ], [ -22, %do.body101.cleanup_crit_edge ], [ 0, %if.then141 ], [ 0, %do.body125.cleanup_crit_edge ], [ -16, %do.body16 ], [ %call41, %do.body48 ], [ -22, %do.body105 ], [ 0, %do.body129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %parm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %readbuffers, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 16
  %7 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %standard, align 4
  %id = getelementptr inbounds %struct.saa7146_standard, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id, align 8
  %conv = trunc i64 %10 to i32
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  tail call void @v4l2_video_std_frame_period(i32 noundef %conv, ptr noundef %timeperframe) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %vbi_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %fmt, ptr %vbi_fmt, i32 44)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_init(ptr noundef %dev, ptr noundef %vv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %video_dmaq = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 13
  %queue = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 13, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %prev.i, align 4
  %timeout = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 13, i32 3
  tail call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @saa7146_buffer_timeout, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @video_init.__key) #7
  %2 = ptrtoint ptr %video_dmaq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %video_dmaq, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext_vv_data, align 4
  %stds = getelementptr inbounds %struct.saa7146_ext_vv, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %stds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stds, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 16
  %7 = ptrtoint ptr %standard to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %standard, align 4
  %current_hps_source = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 19
  %8 = ptrtoint ptr %current_hps_source to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %current_hps_source, align 4
  %current_hps_sync = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 20
  %9 = ptrtoint ptr %current_hps_sync to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %current_hps_sync, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_open(ptr noundef %dev, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 2
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  %v4l2_lock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 4
  tail call void @videobuf_queue_sg_init(ptr noundef %video_q, ptr noundef nonnull @video_qops, ptr noundef %dev1, ptr noundef %slock, i32 noundef 1, i32 noundef 4, i32 noundef 224, ptr noundef %file, ptr noundef %v4l2_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_close(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_status, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.rhs

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.rhs:                                         ; preds = %entry
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video_fh, align 4
  %cmp1 = icmp eq ptr %7, %1
  br i1 %cmp1, label %if.then, label %land.rhs.if.else_crit_edge

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call fastcc i32 @video_end(ptr noundef %1)
  br label %if.end14

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %entry.if.else_crit_edge
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 0
  br i1 %cmp5.not, label %if.else.if.end14_crit_edge, label %land.rhs6

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.rhs6:                                        ; preds = %if.else
  %video_fh7 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %video_fh7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video_fh7, align 4
  %cmp8 = icmp eq ptr %10, %1
  br i1 %cmp8, label %if.then12, label %land.rhs6.if.end14_crit_edge

land.rhs6.if.end14_crit_edge:                     ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @saa7146_stop_preview(ptr noundef %1)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.rhs6.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.then
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 2
  tail call void @videobuf_stop(ptr noundef %video_q) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_irq_done(ptr noundef %dev, i32 noundef %st) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %video_dmaq = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 13
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_irq_done.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_irq_done, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !289

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_irq_done.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %curr = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curr, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end8.if.end10_crit_edge, label %if.then9

do.end8.if.end10_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @saa7146_buffer_finish(ptr noundef %dev, ptr noundef %video_dmaq, i32 noundef 4) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end8.if.end10_crit_edge
  tail call void @saa7146_buffer_next(ptr noundef %dev, ptr noundef %video_dmaq, i32 noundef 0) #7
  tail call void @_raw_spin_unlock(ptr noundef %slock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_read.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_read, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_read.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %video_status, align 4
  %and10 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %if.end61, label %if.then11

if.then11:                                        ; preds = %do.end9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video_fh, align 4
  %cmp12 = icmp eq ptr %10, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %cmp12, label %do.body14, label %do.body38

do.body14:                                        ; preds = %if.then11
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_read.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_read, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !289

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_read.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.123) #7
  br label %cleanup

do.body38:                                        ; preds = %if.then11
  br i1 %tobool16.not, label %do.body38.cleanup_crit_edge, label %do.body42

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_read.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_read, %if.then54)) #7
          to label %cleanup [label %if.then54], !srcloc !289

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_read.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.123) #7
  br label %cleanup

if.end61:                                         ; preds = %do.end9
  %call62 = tail call fastcc i32 @video_begin(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end65, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and66 = and i32 %13, 2048
  %call67 = tail call i32 @videobuf_read_one(ptr noundef %video_q, ptr noundef %data, i32 noundef %count, ptr noundef %ppos, i32 noundef %and66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  %call71 = tail call fastcc i32 @video_end(ptr noundef %1)
  %call71.call67 = select i1 %cmp68.not, i32 %call71, i32 %call67
  br label %out

out:                                              ; preds = %if.end65, %if.end61.out_crit_edge
  %ret.0 = phi i32 [ %call62, %if.end61.out_crit_edge ], [ %call71.call67, %if.end65 ]
  %ov_suspend = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %ov_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ov_suspend, align 4
  %cmp73.not = icmp eq ptr %15, null
  br i1 %cmp73.not, label %out.cleanup_crit_edge, label %if.then74

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then74:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = tail call i32 @saa7146_start_preview(ptr noundef nonnull %15)
  %16 = ptrtoint ptr %ov_suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ov_suspend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %out.cleanup_crit_edge, %if.then54, %do.body42, %do.body38.cleanup_crit_edge, %if.then30, %do.body18, %do.body14.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then30 ], [ -16, %do.body14.cleanup_crit_edge ], [ -16, %if.then54 ], [ -16, %do.body38.cleanup_crit_edge ], [ %ret.0, %if.then74 ], [ %ret.0, %out.cleanup_crit_edge ], [ -16, %do.body18 ], [ -16, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dqbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @video_begin(ptr noundef %fh) unnamed_addr #0 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_begin.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_begin.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.68, ptr noundef %1, ptr noundef %fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_status, align 4
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %if.end61, label %if.then11

if.then11:                                        ; preds = %do.end9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video_fh, align 4
  %cmp12 = icmp eq ptr %8, %fh
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %cmp12, label %do.body14, label %do.body38

do.body14:                                        ; preds = %if.then11
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_begin.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !289

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_begin.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68) #7
  br label %cleanup

do.body38:                                        ; preds = %if.then11
  br i1 %tobool16.not, label %do.body38.cleanup_crit_edge, label %do.body42

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_begin.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then54)) #7
          to label %cleanup [label %if.then54], !srcloc !289

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_begin.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68) #7
  br label %cleanup

if.end61:                                         ; preds = %do.end9
  %and63 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %cmp64.not = icmp eq i32 %and63, 0
  br i1 %cmp64.not, label %if.end61.if.end118_crit_edge, label %do.body66

if.end61.if.end118_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

do.body66:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and67 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.end88_crit_edge, label %do.body70

do.body66.do.end88_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88

do.body70:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_begin.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then82)) #7
          to label %do.end88 [label %if.then82], !srcloc !289

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_begin.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.68) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body70, %do.body66.do.end88_crit_edge
  %video_fh89 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %video_fh89 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video_fh89, align 4
  %ov_suspend = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %ov_suspend to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ov_suspend, align 4
  %call91 = tail call i32 @saa7146_stop_preview(ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92.not = icmp eq i32 %call91, 0
  br i1 %cmp92.not, label %do.end88.if.end118_crit_edge, label %do.body94

do.end88.if.end118_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

do.body94:                                        ; preds = %do.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %14 = load i32, ptr @saa7146_debug, align 4
  %and95 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body94.cleanup_crit_edge, label %do.body98

do.body94.cleanup_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body98:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_begin.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then110)) #7
          to label %cleanup [label %if.then110], !srcloc !289

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_begin.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.68) #7
  br label %cleanup

if.end118:                                        ; preds = %do.end88.if.end118_crit_edge, %if.end61.if.end118_crit_edge
  %pixelformat = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %17 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fourcc.addr.i, align 4
  %18 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp1.i = icmp eq i32 %18, %16
  br i1 %cmp1.i, label %if.end118.if.then.i_crit_edge, label %for.inc.i

if.end118.if.then.i_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end118.if.then.i_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %if.end118.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.saa7146_format, ptr @formats, i32 %i.017.lcssa.i
  br label %saa7146_format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end118
  %19 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %16)
  %cmp1.1.i = icmp eq i32 %19, %16
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %20 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %16)
  %cmp1.2.i = icmp eq i32 %20, %16
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %21 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %16)
  %cmp1.3.i = icmp eq i32 %21, %16
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %22 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp1.4.i = icmp eq i32 %22, %16
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %23 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %16)
  %cmp1.5.i = icmp eq i32 %23, %16
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %24 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %16)
  %cmp1.6.i = icmp eq i32 %24, %16
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %25 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %16)
  %cmp1.7.i = icmp eq i32 %25, %16
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %26 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %16)
  %cmp1.8.i = icmp eq i32 %26, %16
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %27 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %16)
  %cmp1.9.i = icmp eq i32 %27, %16
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %28 = load i32, ptr @saa7146_debug, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge, label %do.body3.i

for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_format_by_fourcc.exit.thread

do.body3.i:                                       ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then7.i)) #7
          to label %saa7146_format_by_fourcc.exit [label %if.then7.i], !srcloc !289

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fourcc.addr.i) #7
  br label %saa7146_format_by_fourcc.exit.thread

saa7146_format_by_fourcc.exit.thread:             ; preds = %if.then7.i, %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  br label %cleanup

saa7146_format_by_fourcc.exit:                    ; preds = %do.body3.i, %if.then.i
  %retval.0.i211 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %do.body3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %tobool120.not = icmp eq ptr %retval.0.i211, null
  br i1 %tobool120.not, label %saa7146_format_by_fourcc.exit.cleanup_crit_edge, label %if.end122

saa7146_format_by_fourcc.exit.cleanup_crit_edge:  ; preds = %saa7146_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end122:                                        ; preds = %saa7146_format_by_fourcc.exit
  %flags = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i211, i32 0, i32 3
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp124.not = icmp eq i8 %31, 0
  %. = select i1 %cmp124.not, i32 1, i32 7
  %call128 = tail call i32 @saa7146_res_get(ptr noundef %fh, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %do.body132, label %do.body164

do.body132:                                       ; preds = %if.end122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %32 = load i32, ptr @saa7146_debug, align 4
  %and133 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body132.do.end154_crit_edge, label %do.body136

do.body132.do.end154_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end154

do.body136:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_begin.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_begin, %if.then148)) #7
          to label %do.end154 [label %if.then148], !srcloc !289

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_begin.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.68, i32 noundef %.) #7
  br label %do.end154

do.end154:                                        ; preds = %if.then148, %do.body136, %do.body132.do.end154_crit_edge
  %ov_suspend155 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %ov_suspend155 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ov_suspend155, align 4
  %cmp156.not = icmp eq ptr %34, null
  br i1 %cmp156.not, label %do.end154.cleanup_crit_edge, label %if.then158

do.end154.cleanup_crit_edge:                      ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then158:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = tail call i32 @saa7146_start_preview(ptr noundef nonnull %34)
  %35 = ptrtoint ptr %ov_suspend155 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ov_suspend155, align 4
  br label %cleanup

do.body164:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !301
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8) #7, !srcloc !293
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !302
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem, align 4
  %add.ptr.i212 = getelementptr i8, ptr %39, i32 220
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212) #7, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !303
  %41 = or i32 %40, 8
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  %add.ptr12.i = getelementptr i8, ptr %43, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %41) #7, !srcloc !293
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #7
  %video_fh167 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %video_fh167 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %fh, ptr %video_fh167, align 4
  %45 = ptrtoint ptr %video_status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %video_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body164, %if.then158, %do.end154.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.thread, %if.then110, %do.body98, %do.body94.cleanup_crit_edge, %if.then54, %do.body42, %do.body38.cleanup_crit_edge, %if.then30, %do.body18, %do.body14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body164 ], [ 0, %if.then30 ], [ 0, %do.body14.cleanup_crit_edge ], [ -16, %if.then54 ], [ -16, %do.body38.cleanup_crit_edge ], [ %call91, %if.then110 ], [ %call91, %do.body94.cleanup_crit_edge ], [ -22, %saa7146_format_by_fourcc.exit.cleanup_crit_edge ], [ -16, %if.then158 ], [ -16, %do.end154.cleanup_crit_edge ], [ 0, %do.body18 ], [ -16, %do.body42 ], [ %call91, %do.body98 ], [ -22, %saa7146_format_by_fourcc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @video_end(ptr noundef %fh) unnamed_addr #0 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %video_dmaq = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_end.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_end, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_end.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.88, ptr noundef %1, ptr noundef %fh) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_status = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %video_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %video_status, align 4
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not.not = icmp eq i32 %and10, 0
  br i1 %cmp.not.not, label %do.body12, label %if.end35

do.body12:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %7 = load i32, ptr @saa7146_debug, align 4
  %and13 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_end.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_end, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !289

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_end.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.88) #7
  br label %cleanup

if.end35:                                         ; preds = %do.end9
  %video_fh = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %video_fh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video_fh, align 4
  %cmp36.not = icmp eq ptr %9, %fh
  br i1 %cmp36.not, label %if.end61, label %do.body38

do.body38:                                        ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and39 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.cleanup_crit_edge, label %do.body42

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_end.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_end, %if.then54)) #7
          to label %cleanup [label %if.then54], !srcloc !289

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @video_end.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.88) #7
  br label %cleanup

if.end61:                                         ; preds = %if.end35
  %pixelformat = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %13 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fourcc.addr.i, align 4
  %14 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp1.i = icmp eq i32 %14, %12
  br i1 %cmp1.i, label %if.end61.if.then.i_crit_edge, label %for.inc.i

if.end61.if.then.i_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end61.if.then.i_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %if.end61.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.saa7146_format, ptr @formats, i32 %i.017.lcssa.i
  br label %saa7146_format_by_fourcc.exit

for.inc.i:                                        ; preds = %if.end61
  %15 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp1.1.i = icmp eq i32 %15, %12
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %16 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp1.2.i = icmp eq i32 %16, %12
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %17 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %12)
  %cmp1.3.i = icmp eq i32 %17, %12
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %18 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp1.4.i = icmp eq i32 %18, %12
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %19 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %12)
  %cmp1.5.i = icmp eq i32 %19, %12
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %20 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %12)
  %cmp1.6.i = icmp eq i32 %20, %12
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %21 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %12)
  %cmp1.7.i = icmp eq i32 %21, %12
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %22 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %12)
  %cmp1.8.i = icmp eq i32 %22, %12
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %23 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %12)
  %cmp1.9.i = icmp eq i32 %23, %12
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %24 = load i32, ptr @saa7146_debug, align 4
  %and.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge, label %do.body3.i

for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_format_by_fourcc.exit.thread

do.body3.i:                                       ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_end, %if.then7.i)) #7
          to label %saa7146_format_by_fourcc.exit [label %if.then7.i], !srcloc !289

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fourcc.addr.i) #7
  br label %saa7146_format_by_fourcc.exit.thread

saa7146_format_by_fourcc.exit.thread:             ; preds = %if.then7.i, %for.inc.9.i.saa7146_format_by_fourcc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  br label %cleanup

saa7146_format_by_fourcc.exit:                    ; preds = %do.body3.i, %if.then.i
  %retval.0.i8 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %do.body3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %tobool63.not = icmp eq ptr %retval.0.i8, null
  br i1 %tobool63.not, label %saa7146_format_by_fourcc.exit.cleanup_crit_edge, label %if.end65

saa7146_format_by_fourcc.exit.cleanup_crit_edge:  ; preds = %saa7146_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %saa7146_format_by_fourcc.exit
  %flags66 = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i8, i32 0, i32 3
  %25 = ptrtoint ptr %flags66 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags66, align 1
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp68.not = icmp eq i8 %27, 0
  %. = select i1 %cmp68.not, i32 16384, i32 28672
  %.1 = select i1 %cmp68.not, i32 1, i32 7
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 3
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !304
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #7, !srcloc !293
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !305
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem, align 4
  %add.ptr.i9 = getelementptr i8, ptr %31, i32 220
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #7, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !306
  %33 = and i32 %32, -9
  %34 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem, align 4
  %add.ptr12.i = getelementptr i8, ptr %35, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %33) #7, !srcloc !293
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !307
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem, align 4
  %add.ptr90 = getelementptr i8, ptr %37, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %.) #7, !srcloc !293
  %curr = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %curr, align 4
  %tobool91.not = icmp eq ptr %39, null
  br i1 %tobool91.not, label %if.end65.if.end93_crit_edge, label %if.then92

if.end65.if.end93_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then92:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @saa7146_buffer_finish(ptr noundef %1, ptr noundef %video_dmaq, i32 noundef 4) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end65.if.end93_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call78) #7
  %40 = ptrtoint ptr %video_fh to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %video_fh, align 4
  %41 = ptrtoint ptr %video_status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %video_status, align 4
  tail call void @saa7146_res_free(ptr noundef %fh, i32 noundef %.1) #7
  %ov_suspend = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 12
  %42 = ptrtoint ptr %ov_suspend to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ov_suspend, align 4
  %cmp97.not = icmp eq ptr %43, null
  br i1 %cmp97.not, label %if.end93.cleanup_crit_edge, label %if.then99

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %call101 = tail call i32 @saa7146_start_preview(ptr noundef nonnull %43)
  %44 = ptrtoint ptr %ov_suspend to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %ov_suspend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %if.end93.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.cleanup_crit_edge, %saa7146_format_by_fourcc.exit.thread, %if.then54, %do.body42, %do.body38.cleanup_crit_edge, %if.then28, %do.body16, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 0, %do.body12.cleanup_crit_edge ], [ -16, %if.then54 ], [ -16, %do.body38.cleanup_crit_edge ], [ -22, %saa7146_format_by_fourcc.exit.cleanup_crit_edge ], [ 0, %if.then99 ], [ 0, %if.end93.cleanup_crit_edge ], [ 0, %do.body16 ], [ -16, %do.body42 ], [ -22, %saa7146_format_by_fourcc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_buffer_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_video_std_frame_period(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_buffer_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_sg_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %count, ptr nocapture noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vv_data, align 4
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %10 = add i32 %9, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %10)
  %11 = icmp ult i32 %10, -32
  br i1 %11, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sizeimage = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 5
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizeimage, align 4
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %size, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %mul = mul i32 %17, %14
  %18 = load i32, ptr @max_memory, align 4
  %mul2 = shl i32 %18, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp3 = icmp ugt i32 %mul, %mul2
  br i1 %cmp3, label %if.then4, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %mul2, %14
  %19 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %count, align 4
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %20 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.body8

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_setup.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_setup, %if.then12)) #7
          to label %do.end16 [label %if.then12], !srcloc !289

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_setup.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef %22, i32 noundef %24) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body8, %do.body.do.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %q, ptr noundef %vb, i32 noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %8 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, ptr noundef %vb) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %video_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14
  %9 = ptrtoint ptr %video_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %video_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %10)
  %cmp = icmp ult i32 %10, 48
  br i1 %cmp, label %do.end9.do.body22_crit_edge, label %lor.lhs.false

do.end9.do.body22_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

lor.lhs.false:                                    ; preds = %do.end9
  %height = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp11 = icmp ult i32 %12, 32
  br i1 %cmp11, label %lor.lhs.false.do.body22_crit_edge, label %lor.lhs.false12

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 16
  %13 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %standard, align 4
  %h_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %h_max_out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_max_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp15 = icmp ugt i32 %10, %16
  br i1 %cmp15, label %lor.lhs.false12.do.body22_crit_edge, label %lor.lhs.false16

lor.lhs.false12.do.body22_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %v_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %v_max_out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v_max_out, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp20 = icmp ugt i32 %12, %18
  br i1 %cmp20, label %lor.lhs.false16.do.body22_crit_edge, label %if.end49

lor.lhs.false16.do.body22_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %lor.lhs.false16.do.body22_crit_edge, %lor.lhs.false12.do.body22_crit_edge, %lor.lhs.false.do.body22_crit_edge, %do.end9.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %19 = load i32, ptr @saa7146_debug, align 4
  %and23 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.cleanup224_crit_edge, label %do.body26

do.body22.cleanup224_crit_edge:                   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup224

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then38)) #7
          to label %cleanup224 [label %if.then38], !srcloc !289

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %video_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %video_fmt, align 4
  %height42 = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 1
  %22 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102, i32 noundef %21, i32 noundef %23) #7
  br label %cleanup224

if.end49:                                         ; preds = %lor.lhs.false16
  %sizeimage = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 5
  %24 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sizeimage, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %26 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp52.not = icmp eq i32 %27, 0
  br i1 %cmp52.not, label %if.end49.do.body80_crit_edge, label %land.lhs.true

if.end49.do.body80_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80

land.lhs.true:                                    ; preds = %if.end49
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %28 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %25)
  %cmp54 = icmp ult i32 %29, %25
  br i1 %cmp54, label %do.body56, label %land.lhs.true.do.body80_crit_edge

land.lhs.true.do.body80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80

do.body56:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %30 = load i32, ptr @saa7146_debug, align 4
  %and57 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.cleanup224_crit_edge, label %do.body60

do.body56.cleanup224_crit_edge:                   ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup224

do.body60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then72)) #7
          to label %cleanup224 [label %if.then72], !srcloc !289

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.102) #7
  br label %cleanup224

do.body80:                                        ; preds = %land.lhs.true.do.body80_crit_edge, %if.end49.do.body80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %31 = load i32, ptr @saa7146_debug, align 4
  %and81 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.end108_crit_edge, label %do.body84

do.body80.do.end108_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

do.body84:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then96)) #7
          to label %do.end108 [label %if.then96], !srcloc !289

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %video_fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %video_fmt, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %field102 = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 3
  %36 = ptrtoint ptr %field102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %field102, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.102, i32 noundef %33, i32 noundef %35, i32 noundef %25, ptr noundef %39) #7
  br label %do.end108

do.end108:                                        ; preds = %if.then96, %do.body84, %do.body80.do.end108_crit_edge
  %width110 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %40 = ptrtoint ptr %width110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width110, align 8
  %42 = ptrtoint ptr %video_fmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %video_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp113.not = icmp eq i32 %41, %43
  br i1 %cmp113.not, label %lor.lhs.false114, label %do.end108.if.then142_crit_edge

do.end108.if.then142_crit_edge:                   ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false114:                                 ; preds = %do.end108
  %bytesperline = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 4
  %44 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytesperline, align 8
  %bytesperline117 = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 4
  %46 = ptrtoint ptr %bytesperline117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytesperline117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp118.not = icmp eq i32 %45, %47
  br i1 %cmp118.not, label %lor.lhs.false119, label %lor.lhs.false114.if.then142_crit_edge

lor.lhs.false114.if.then142_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false119:                                 ; preds = %lor.lhs.false114
  %height121 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %48 = ptrtoint ptr %height121 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height121, align 4
  %50 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp124.not = icmp eq i32 %49, %51
  br i1 %cmp124.not, label %lor.lhs.false125, label %lor.lhs.false119.if.then142_crit_edge

lor.lhs.false119.if.then142_crit_edge:            ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false125:                                 ; preds = %lor.lhs.false119
  %size127 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %52 = ptrtoint ptr %size127 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %25)
  %cmp128.not = icmp eq i32 %53, %25
  br i1 %cmp128.not, label %lor.lhs.false129, label %lor.lhs.false125.if.then142_crit_edge

lor.lhs.false125.if.then142_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false129:                                 ; preds = %lor.lhs.false125
  %field131 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %54 = ptrtoint ptr %field131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %field131, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %field)
  %cmp132.not = icmp eq i32 %55, %field
  br i1 %cmp132.not, label %lor.lhs.false133, label %lor.lhs.false129.if.then142_crit_edge

lor.lhs.false129.if.then142_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false133:                                 ; preds = %lor.lhs.false129
  %field137 = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 3
  %56 = ptrtoint ptr %field137 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %field137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %field)
  %cmp138.not = icmp eq i32 %57, %field
  br i1 %cmp138.not, label %lor.lhs.false139, label %lor.lhs.false133.if.then142_crit_edge

lor.lhs.false133.if.then142_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false139:                                 ; preds = %lor.lhs.false133
  %fmt = getelementptr inbounds %struct.saa7146_buf, ptr %vb, i32 0, i32 1
  %58 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fmt, align 8
  %cmp141.not = icmp eq ptr %59, %video_fmt
  br i1 %cmp141.not, label %lor.lhs.false139.if.end143_crit_edge, label %lor.lhs.false139.if.then142_crit_edge

lor.lhs.false139.if.then142_crit_edge:            ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false139.if.end143_crit_edge:             ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then142:                                       ; preds = %lor.lhs.false139.if.then142_crit_edge, %lor.lhs.false133.if.then142_crit_edge, %lor.lhs.false129.if.then142_crit_edge, %lor.lhs.false125.if.then142_crit_edge, %lor.lhs.false119.if.then142_crit_edge, %lor.lhs.false114.if.then142_crit_edge, %do.end108.if.then142_crit_edge
  tail call void @saa7146_dma_free(ptr noundef %5, ptr noundef %q, ptr noundef %vb) #7
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %lor.lhs.false139.if.end143_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp145 = icmp eq i32 %61, 0
  br i1 %cmp145, label %if.then146, label %if.end143.if.end198_crit_edge

if.end143.if.end198_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then146:                                       ; preds = %if.end143
  %bytesperline148 = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 4
  %62 = ptrtoint ptr %bytesperline148 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytesperline148, align 4
  %bytesperline150 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 4
  %64 = ptrtoint ptr %bytesperline150 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bytesperline150, align 8
  %65 = ptrtoint ptr %video_fmt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %video_fmt, align 4
  %67 = ptrtoint ptr %width110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %width110, align 8
  %68 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height, align 4
  %height158 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %70 = ptrtoint ptr %height158 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %height158, align 4
  %size160 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %71 = ptrtoint ptr %size160 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %25, ptr %size160, align 4
  %field162 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %72 = ptrtoint ptr %field162 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %field, ptr %field162, align 8
  %fmt164 = getelementptr inbounds %struct.saa7146_buf, ptr %vb, i32 0, i32 1
  %73 = ptrtoint ptr %fmt164 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %video_fmt, ptr %fmt164, align 8
  %field166 = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 3
  %74 = ptrtoint ptr %field166 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %field166, align 4
  store i32 %75, ptr %field162, align 8
  %pixelformat = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 14, i32 2
  %76 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pixelformat, align 4
  %call170 = tail call ptr @saa7146_format_by_fourcc(ptr undef, i32 noundef %77)
  tail call fastcc void @release_all_pagetables(ptr noundef %5, ptr noundef %vb)
  %trans = getelementptr inbounds %struct.saa7146_format, ptr %call170, i32 0, i32 1
  %78 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %trans, align 4
  %and171 = and i32 %79, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %cmp172.not = icmp eq i32 %and171, 0
  %pci184 = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %80 = ptrtoint ptr %pci184 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci184, align 4
  %pt185 = getelementptr inbounds %struct.saa7146_buf, ptr %vb, i32 0, i32 3
  %call187 = tail call i32 @saa7146_pgtable_alloc(ptr noundef %81, ptr noundef %pt185) #7
  br i1 %cmp172.not, label %if.then146.if.end188_crit_edge, label %if.then173

if.then146.if.end188_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

if.then173:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %pci184 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci184, align 4
  %arrayidx178 = getelementptr %struct.saa7146_buf, ptr %vb, i32 0, i32 3, i32 1
  %call179 = tail call i32 @saa7146_pgtable_alloc(ptr noundef %83, ptr noundef %arrayidx178) #7
  %84 = ptrtoint ptr %pci184 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci184, align 4
  %arrayidx182 = getelementptr %struct.saa7146_buf, ptr %vb, i32 0, i32 3, i32 2
  %call183 = tail call i32 @saa7146_pgtable_alloc(ptr noundef %85, ptr noundef %arrayidx182) #7
  br label %if.end188

if.end188:                                        ; preds = %if.then173, %if.then146.if.end188_crit_edge
  %ov_fb = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 10
  %call190 = tail call i32 @videobuf_iolock(ptr noundef %q, ptr noundef %vb, ptr noundef %ov_fb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end188.do.body201_crit_edge

if.end188.do.body201_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body201

if.end193:                                        ; preds = %if.end188
  %call194 = tail call fastcc i32 @saa7146_pgtable_build(ptr noundef %5, ptr noundef %vb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end193.if.end198_crit_edge, label %if.end193.do.body201_crit_edge

if.end193.do.body201_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body201

if.end193.if.end198_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.end198:                                        ; preds = %if.end193.if.end198_crit_edge, %if.end143.if.end198_crit_edge
  %86 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %state, align 4
  %activate = getelementptr inbounds %struct.saa7146_buf, ptr %vb, i32 0, i32 2
  %87 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @buffer_activate, ptr %activate, align 4
  br label %cleanup224

do.body201:                                       ; preds = %if.end193.do.body201_crit_edge, %if.end188.do.body201_crit_edge
  %err.0.ph = phi i32 [ %call194, %if.end193.do.body201_crit_edge ], [ %call190, %if.end188.do.body201_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %88 = load i32, ptr @saa7146_debug, align 4
  %and202 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %do.body201.do.end223_crit_edge, label %do.body205

do.body201.do.end223_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end223

do.body205:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then217)) #7
          to label %do.end223 [label %if.then217], !srcloc !289

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.102) #7
  br label %do.end223

do.end223:                                        ; preds = %if.then217, %do.body205, %do.body201.do.end223_crit_edge
  tail call void @saa7146_dma_free(ptr noundef %5, ptr noundef %q, ptr noundef %vb) #7
  br label %cleanup224

cleanup224:                                       ; preds = %do.end223, %if.end198, %if.then72, %do.body60, %do.body56.cleanup224_crit_edge, %if.then38, %do.body26, %do.body22.cleanup224_crit_edge
  %retval.0 = phi i32 [ %err.0.ph, %do.end223 ], [ 0, %if.end198 ], [ -22, %if.then38 ], [ -22, %do.body22.cleanup224_crit_edge ], [ -22, %if.then72 ], [ -22, %do.body56.cleanup224_crit_edge ], [ -22, %do.body26 ], [ -22, %do.body60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr nocapture noundef readonly %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %8 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_queue.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_queue, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_queue.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.118, ptr noundef %vb) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  %video_dmaq = getelementptr inbounds %struct.saa7146_vv, ptr %7, i32 0, i32 13
  %call11 = tail call i32 @saa7146_buffer_queue(ptr noundef %10, ptr noundef %video_dmaq, ptr noundef %vb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_release(ptr noundef %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_release.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_release, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !289

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_release.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.119, ptr noundef %vb) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  tail call void @saa7146_dma_free(ptr noundef %5, ptr noundef %q, ptr noundef %vb) #7
  %pci.i = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci.i, align 4
  %pt.i = getelementptr inbounds %struct.saa7146_buf, ptr %vb, i32 0, i32 3
  tail call void @saa7146_pgtable_free(ptr noundef %8, ptr noundef %pt.i) #7
  %9 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci.i, align 4
  %arrayidx3.i = getelementptr %struct.saa7146_buf, ptr %vb, i32 0, i32 3, i32 1
  tail call void @saa7146_pgtable_free(ptr noundef %10, ptr noundef %arrayidx3.i) #7
  %11 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci.i, align 4
  %arrayidx6.i = getelementptr %struct.saa7146_buf, ptr %vb, i32 0, i32 3, i32 2
  tail call void @saa7146_pgtable_free(ptr noundef %12, ptr noundef %arrayidx6.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_dma_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_all_pagetables(ptr nocapture noundef readonly %dev, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3
  tail call void @saa7146_pgtable_free(ptr noundef %1, ptr noundef %pt) #7
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %arrayidx3 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1
  tail call void @saa7146_pgtable_free(ptr noundef %3, ptr noundef %arrayidx3) #7
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %arrayidx6 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2
  tail call void @saa7146_pgtable_free(ptr noundef %5, ptr noundef %arrayidx6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_pgtable_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7146_pgtable_build(ptr noundef %dev, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %fourcc.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci1, align 4
  %call = tail call ptr @videobuf_to_dma(ptr noundef %buf) #7
  %sglist = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sglist, align 4
  %sglen = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sglen, align 4
  %fmt = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc.addr.i)
  %10 = ptrtoint ptr %fourcc.addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fourcc.addr.i, align 4
  %11 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1.i = icmp eq i32 %11, %9
  br i1 %cmp1.i, label %entry.if.then.i_crit_edge, label %for.inc.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.saa7146_format, ptr @formats, i32 %i.017.lcssa.i
  br label %saa7146_format_by_fourcc.exit

for.inc.i:                                        ; preds = %entry
  %12 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp1.1.i = icmp eq i32 %12, %9
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %13 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp1.2.i = icmp eq i32 %13, %9
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %14 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp1.3.i = icmp eq i32 %14, %9
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %15 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp1.4.i = icmp eq i32 %15, %9
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %16 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp1.5.i = icmp eq i32 %16, %9
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %17 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp1.6.i = icmp eq i32 %17, %9
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %18 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %9)
  %cmp1.7.i = icmp eq i32 %18, %9
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %19 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %9)
  %cmp1.8.i = icmp eq i32 %19, %9
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %20 = load i32, ptr getelementptr inbounds ([10 x %struct.saa7146_format], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %9)
  %cmp1.9.i = icmp eq i32 %20, %9
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %21 = load i32, ptr @saa7146_debug, align 4
  %and.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.9.i.saa7146_format_by_fourcc.exit_crit_edge, label %do.body3.i

for.inc.9.i.saa7146_format_by_fourcc.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_format_by_fourcc.exit

do.body3.i:                                       ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_pgtable_build, %if.then7.i)) #7
          to label %saa7146_format_by_fourcc.exit [label %if.then7.i], !srcloc !289

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %fourcc.addr.i) #7
  br label %saa7146_format_by_fourcc.exit

saa7146_format_by_fourcc.exit:                    ; preds = %if.then7.i, %do.body3.i, %for.inc.9.i.saa7146_format_by_fourcc.exit_crit_edge, %if.then.i
  %retval.0.i292 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.then7.i ], [ null, %for.inc.9.i.saa7146_format_by_fourcc.exit_crit_edge ], [ null, %do.body3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc.addr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %22 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %saa7146_format_by_fourcc.exit.do.end11_crit_edge, label %do.body3

saa7146_format_by_fourcc.exit.do.end11_crit_edge: ; preds = %saa7146_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body3:                                         ; preds = %saa7146_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_pgtable_build.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_pgtable_build, %if.then8)) #7
          to label %do.end11 [label %if.then8], !srcloc !289

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_pgtable_build.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, ptr noundef %dev, ptr noundef %buf, i32 noundef %5) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %saa7146_format_by_fourcc.exit.do.end11_crit_edge
  %trans = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i292, i32 0, i32 1
  %23 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trans, align 4
  %and12 = and i32 %24, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp.not = icmp eq i32 %and12, 0
  br i1 %cmp.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end11
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fmt, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %mul = mul i32 %30, %28
  %depth = getelementptr inbounds %struct.saa7146_format, ptr %retval.0.i292, i32 0, i32 2
  %31 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %depth, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %32, label %if.then13.cleanup188_crit_edge [
    i8 12, label %sw.bb
    i8 16, label %sw.bb56
  ]

if.then13.cleanup188_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

sw.bb:                                            ; preds = %if.then13
  %add = add i32 %mul, 4096
  %div283 = lshr i32 %add, 12
  %sub = add nsw i32 %div283, -1
  %div20 = sdiv i32 %mul, 4
  %add21 = add i32 %div20, %mul
  %add22 = add i32 %add21, 4096
  %div23284 = lshr i32 %add22, 12
  %sub24 = add nsw i32 %div23284, -1
  %div25 = sdiv i32 %mul, 2
  %add27 = add i32 %add, %div25
  %div28285 = lshr i32 %add27, 12
  %sub29 = add nsw i32 %div28285, -1
  %rem = and i32 %mul, 4095
  %rem32 = and i32 %add21, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %34 = load i32, ptr @saa7146_debug, align 4
  %and34 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.bb.sw.epilog_crit_edge, label %do.body37

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body37:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_pgtable_build.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_pgtable_build, %if.then49)) #7
          to label %sw.epilog [label %if.then49], !srcloc !289

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_pgtable_build.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.113, i32 noundef %mul, i32 noundef %sub, i32 noundef %sub24, i32 noundef %sub29, i32 noundef %rem, i32 noundef %rem32) #7
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.then13
  %add57 = add i32 %mul, 4096
  %div58280 = lshr i32 %add57, 12
  %sub59 = add nsw i32 %div58280, -1
  %div60 = sdiv i32 %mul, 2
  %add61 = add i32 %div60, %mul
  %add62 = add i32 %add61, 4096
  %div63281 = lshr i32 %add62, 12
  %sub64 = add nsw i32 %div63281, -1
  %mul65 = shl i32 %mul, 1
  %add66 = add i32 %mul65, 4096
  %div67282 = lshr i32 %add66, 12
  %sub68 = add nsw i32 %div67282, -1
  %rem69 = and i32 %mul, 4095
  %rem72 = and i32 %add61, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %35 = load i32, ptr @saa7146_debug, align 4
  %and74 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %sw.bb56.sw.epilog_crit_edge, label %do.body77

sw.bb56.sw.epilog_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body77:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_pgtable_build.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_pgtable_build, %if.then89)) #7
          to label %sw.epilog [label %if.then89], !srcloc !289

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_pgtable_build.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.113, i32 noundef %mul, i32 noundef %sub59, i32 noundef %sub64, i32 noundef %sub68, i32 noundef %rem69, i32 noundef %rem72) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then89, %do.body77, %sw.bb56.sw.epilog_crit_edge, %if.then49, %do.body37, %sw.bb.sw.epilog_crit_edge
  %m1.0 = phi i32 [ %sub59, %if.then89 ], [ %sub59, %sw.bb56.sw.epilog_crit_edge ], [ %sub, %if.then49 ], [ %sub, %sw.bb.sw.epilog_crit_edge ], [ %sub, %do.body37 ], [ %sub59, %do.body77 ]
  %m2.0 = phi i32 [ %sub64, %if.then89 ], [ %sub64, %sw.bb56.sw.epilog_crit_edge ], [ %sub24, %if.then49 ], [ %sub24, %sw.bb.sw.epilog_crit_edge ], [ %sub24, %do.body37 ], [ %sub64, %do.body77 ]
  %m3.0 = phi i32 [ %sub68, %if.then89 ], [ %sub68, %sw.bb56.sw.epilog_crit_edge ], [ %sub29, %if.then49 ], [ %sub29, %sw.bb.sw.epilog_crit_edge ], [ %sub29, %do.body37 ], [ %sub68, %do.body77 ]
  %o1.0 = phi i32 [ %rem69, %if.then89 ], [ %rem69, %sw.bb56.sw.epilog_crit_edge ], [ %rem, %if.then49 ], [ %rem, %sw.bb.sw.epilog_crit_edge ], [ %rem, %do.body37 ], [ %rem69, %do.body77 ]
  %o2.0 = phi i32 [ %rem72, %if.then89 ], [ %rem72, %sw.bb56.sw.epilog_crit_edge ], [ %rem32, %if.then49 ], [ %rem32, %sw.bb.sw.epilog_crit_edge ], [ %rem32, %do.body37 ], [ %rem72, %do.body77 ]
  %cpu = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 0, i32 1
  %cpu96 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %cpu96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cpu96, align 4
  %cpu97 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 1
  %38 = ptrtoint ptr %cpu97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpu97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp98300 = icmp sgt i32 %5, 0
  br i1 %cmp98300, label %for.cond100.preheader.preheader, label %sw.epilog.for.end109_crit_edge

sw.epilog.for.end109_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end109

for.cond100.preheader.preheader:                  ; preds = %sw.epilog
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpu, align 4
  br label %for.cond100.preheader

for.cond100.preheader:                            ; preds = %for.inc106.for.cond100.preheader_crit_edge, %for.cond100.preheader.preheader
  %list.0303 = phi ptr [ %incdec.ptr108, %for.inc106.for.cond100.preheader_crit_edge ], [ %3, %for.cond100.preheader.preheader ]
  %i.0302 = phi i32 [ %inc107, %for.inc106.for.cond100.preheader_crit_edge ], [ 0, %for.cond100.preheader.preheader ]
  %ptr1.0301 = phi ptr [ %ptr1.1.lcssa, %for.inc106.for.cond100.preheader_crit_edge ], [ %41, %for.cond100.preheader.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %list.0303, i32 0, i32 4
  %42 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp102297.not = icmp eq i32 %43, 0
  br i1 %cmp102297.not, label %for.cond100.preheader.for.inc106_crit_edge, label %for.body104.lr.ph

for.cond100.preheader.for.inc106_crit_edge:       ; preds = %for.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc106

for.body104.lr.ph:                                ; preds = %for.cond100.preheader
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %list.0303, i32 0, i32 3
  %offset = getelementptr inbounds %struct.scatterlist, ptr %list.0303, i32 0, i32 1
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.body104.lr.ph
  %p.0299 = phi i32 [ 0, %for.body104.lr.ph ], [ %inc, %for.body104.for.body104_crit_edge ]
  %ptr1.1298 = phi ptr [ %ptr1.0301, %for.body104.lr.ph ], [ %incdec.ptr, %for.body104.for.body104_crit_edge ]
  %44 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address, align 4
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset, align 4
  %sub105 = sub i32 %45, %47
  %48 = call i32 @llvm.bswap.i32(i32 %sub105)
  %49 = ptrtoint ptr %ptr1.1298 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ptr1.1298, align 4
  %inc = add i32 %p.0299, 1
  %incdec.ptr = getelementptr i32, ptr %ptr1.1298, i32 1
  %mul101 = shl i32 %inc, 12
  %50 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_length, align 4
  %cmp102 = icmp ult i32 %mul101, %51
  br i1 %cmp102, label %for.body104.for.body104_crit_edge, label %for.body104.for.inc106_crit_edge

for.body104.for.inc106_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc106

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104

for.inc106:                                       ; preds = %for.body104.for.inc106_crit_edge, %for.cond100.preheader.for.inc106_crit_edge
  %ptr1.1.lcssa = phi ptr [ %ptr1.0301, %for.cond100.preheader.for.inc106_crit_edge ], [ %incdec.ptr, %for.body104.for.inc106_crit_edge ]
  %inc107 = add nuw nsw i32 %i.0302, 1
  %incdec.ptr108 = getelementptr %struct.scatterlist, ptr %list.0303, i32 1
  %exitcond.not = icmp eq i32 %inc107, %5
  br i1 %exitcond.not, label %for.inc106.for.end109_crit_edge, label %for.inc106.for.cond100.preheader_crit_edge

for.inc106.for.cond100.preheader_crit_edge:       ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond100.preheader

for.inc106.for.end109_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end109

for.end109:                                       ; preds = %for.inc106.for.end109_crit_edge, %sw.epilog.for.end109_crit_edge
  %52 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sglist, align 4
  %offset111 = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %offset111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset111, align 4
  %offset112 = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 0, i32 3
  %56 = ptrtoint ptr %offset112 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %offset112, align 4
  %add114 = add i32 %55, %o1.0
  %offset115 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 3
  %57 = ptrtoint ptr %offset115 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add114, ptr %offset115, align 4
  %add117 = add i32 %55, %o2.0
  %offset118 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 3
  %58 = ptrtoint ptr %offset118 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add117, ptr %offset118, align 4
  %59 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %m1.0, i32 %m2.0)
  %cmp121.not304 = icmp sgt i32 %m1.0, %m2.0
  br i1 %cmp121.not304, label %for.end109.for.end128_crit_edge, label %for.body123.preheader

for.end109.for.end128_crit_edge:                  ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end128

for.body123.preheader:                            ; preds = %for.end109
  %61 = add nsw i32 %m2.0, 1
  br label %for.body123

for.body123:                                      ; preds = %for.body123.for.body123_crit_edge, %for.body123.preheader
  %i.1306 = phi i32 [ %inc126, %for.body123.for.body123_crit_edge ], [ %m1.0, %for.body123.preheader ]
  %ptr2.0305 = phi ptr [ %incdec.ptr127, %for.body123.for.body123_crit_edge ], [ %37, %for.body123.preheader ]
  %arrayidx124 = getelementptr i32, ptr %60, i32 %i.1306
  %62 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx124, align 4
  %64 = ptrtoint ptr %ptr2.0305 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ptr2.0305, align 4
  %inc126 = add nsw i32 %i.1306, 1
  %incdec.ptr127 = getelementptr i32, ptr %ptr2.0305, i32 1
  %exitcond323 = icmp eq i32 %i.1306, %m2.0
  br i1 %exitcond323, label %for.body123.for.end128_crit_edge, label %for.body123.for.body123_crit_edge

for.body123.for.body123_crit_edge:                ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body123

for.body123.for.end128_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end128

for.end128:                                       ; preds = %for.body123.for.end128_crit_edge, %for.end109.for.end128_crit_edge
  %ptr2.0.lcssa = phi ptr [ %37, %for.end109.for.end128_crit_edge ], [ %incdec.ptr127, %for.body123.for.end128_crit_edge ]
  %i.1.lcssa = phi i32 [ %m1.0, %for.end109.for.end128_crit_edge ], [ %61, %for.body123.for.end128_crit_edge ]
  %add.ptr = getelementptr i32, ptr %ptr2.0.lcssa, i32 -1
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %i.1.lcssa)
  %cmp130309 = icmp slt i32 %i.1.lcssa, 1024
  br i1 %cmp130309, label %for.end128.for.body132_crit_edge, label %for.end128.for.end136_crit_edge

for.end128.for.end136_crit_edge:                  ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.end128.for.body132_crit_edge:                 ; preds = %for.end128
  br label %for.body132

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %for.end128.for.body132_crit_edge
  %i.2311 = phi i32 [ %inc134, %for.body132.for.body132_crit_edge ], [ %i.1.lcssa, %for.end128.for.body132_crit_edge ]
  %ptr2.1310 = phi ptr [ %incdec.ptr135, %for.body132.for.body132_crit_edge ], [ %ptr2.0.lcssa, %for.end128.for.body132_crit_edge ]
  %67 = ptrtoint ptr %ptr2.1310 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %ptr2.1310, align 4
  %inc134 = add nsw i32 %i.2311, 1
  %incdec.ptr135 = getelementptr i32, ptr %ptr2.1310, i32 1
  %exitcond324.not = icmp eq i32 %inc134, 1024
  br i1 %exitcond324.not, label %for.body132.for.end136_crit_edge, label %for.body132.for.body132_crit_edge

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body132

for.body132.for.end136_crit_edge:                 ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.end136:                                       ; preds = %for.body132.for.end136_crit_edge, %for.end128.for.end136_crit_edge
  %68 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %m2.0, i32 %m3.0)
  %cmp139.not312 = icmp sgt i32 %m2.0, %m3.0
  br i1 %cmp139.not312, label %for.end136.for.end146_crit_edge, label %for.body141.preheader

for.end136.for.end146_crit_edge:                  ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end146

for.body141.preheader:                            ; preds = %for.end136
  %70 = add nsw i32 %m3.0, 1
  br label %for.body141

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %for.body141.preheader
  %i.3314 = phi i32 [ %inc144, %for.body141.for.body141_crit_edge ], [ %m2.0, %for.body141.preheader ]
  %ptr3.0313 = phi ptr [ %incdec.ptr145, %for.body141.for.body141_crit_edge ], [ %39, %for.body141.preheader ]
  %arrayidx142 = getelementptr i32, ptr %69, i32 %i.3314
  %71 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx142, align 4
  %73 = ptrtoint ptr %ptr3.0313 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ptr3.0313, align 4
  %inc144 = add nsw i32 %i.3314, 1
  %incdec.ptr145 = getelementptr i32, ptr %ptr3.0313, i32 1
  %exitcond325 = icmp eq i32 %i.3314, %m3.0
  br i1 %exitcond325, label %for.body141.for.end146_crit_edge, label %for.body141.for.body141_crit_edge

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body141

for.body141.for.end146_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end146

for.end146:                                       ; preds = %for.body141.for.end146_crit_edge, %for.end136.for.end146_crit_edge
  %ptr3.0.lcssa = phi ptr [ %39, %for.end136.for.end146_crit_edge ], [ %incdec.ptr145, %for.body141.for.end146_crit_edge ]
  %i.3.lcssa = phi i32 [ %m2.0, %for.end136.for.end146_crit_edge ], [ %70, %for.body141.for.end146_crit_edge ]
  %add.ptr147 = getelementptr i32, ptr %ptr3.0.lcssa, i32 -1
  %74 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %i.3.lcssa)
  %cmp149317 = icmp slt i32 %i.3.lcssa, 1024
  br i1 %cmp149317, label %for.end146.for.body151_crit_edge, label %for.end146.for.end155_crit_edge

for.end146.for.end155_crit_edge:                  ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end155

for.end146.for.body151_crit_edge:                 ; preds = %for.end146
  br label %for.body151

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %for.end146.for.body151_crit_edge
  %i.4319 = phi i32 [ %inc153, %for.body151.for.body151_crit_edge ], [ %i.3.lcssa, %for.end146.for.body151_crit_edge ]
  %ptr3.1318 = phi ptr [ %incdec.ptr154, %for.body151.for.body151_crit_edge ], [ %ptr3.0.lcssa, %for.end146.for.body151_crit_edge ]
  %76 = ptrtoint ptr %ptr3.1318 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ptr3.1318, align 4
  %inc153 = add nsw i32 %i.4319, 1
  %incdec.ptr154 = getelementptr i32, ptr %ptr3.1318, i32 1
  %exitcond326.not = icmp eq i32 %inc153, 1024
  br i1 %exitcond326.not, label %for.body151.for.end155_crit_edge, label %for.body151.for.body151_crit_edge

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body151

for.body151.for.end155_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end155

for.end155:                                       ; preds = %for.body151.for.end155_crit_edge, %for.end146.for.end155_crit_edge
  %77 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cpu, align 4
  %add.ptr157 = getelementptr i32, ptr %78, i32 %m1.0
  %79 = ptrtoint ptr %add.ptr157 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %m1.0)
  %cmp161320 = icmp slt i32 %m1.0, 1024
  br i1 %cmp161320, label %for.end155.for.body163_crit_edge, label %for.end155.cleanup188_crit_edge

for.end155.cleanup188_crit_edge:                  ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

for.end155.for.body163_crit_edge:                 ; preds = %for.end155
  br label %for.body163

for.body163:                                      ; preds = %for.body163.for.body163_crit_edge, %for.end155.for.body163_crit_edge
  %i.5322 = phi i32 [ %inc165, %for.body163.for.body163_crit_edge ], [ %m1.0, %for.end155.for.body163_crit_edge ]
  %ptr1.2321 = phi ptr [ %incdec.ptr166, %for.body163.for.body163_crit_edge ], [ %add.ptr157, %for.end155.for.body163_crit_edge ]
  %81 = ptrtoint ptr %ptr1.2321 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ptr1.2321, align 4
  %inc165 = add nsw i32 %i.5322, 1
  %incdec.ptr166 = getelementptr i32, ptr %ptr1.2321, i32 1
  %exitcond327.not = icmp eq i32 %inc165, 1024
  br i1 %exitcond327.not, label %for.body163.cleanup188_crit_edge, label %for.body163.for.body163_crit_edge

for.body163.for.body163_crit_edge:                ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body163

for.body163.cleanup188_crit_edge:                 ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.else:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %pt183 = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3
  %call185 = call i32 @saa7146_pgtable_build_single(ptr noundef %1, ptr noundef %pt183, ptr noundef %3, i32 noundef %5) #7
  br label %cleanup188

cleanup188:                                       ; preds = %if.else, %for.body163.cleanup188_crit_edge, %for.end155.cleanup188_crit_edge, %if.then13.cleanup188_crit_edge
  %retval.1 = phi i32 [ %call185, %if.else ], [ -1, %if.then13.cleanup188_crit_edge ], [ 0, %for.end155.cleanup188_crit_edge ], [ 0, %for.body163.cleanup188_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_activate(ptr noundef %dev, ptr noundef %buf, ptr noundef %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 4
  tail call void @saa7146_set_capture(ptr noundef %dev, ptr noundef %buf, ptr noundef %next) #7
  %timeout = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 13, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 50
  %call = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_pgtable_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_pgtable_build_single(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_set_capture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_buffer_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_buffer_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_read_one(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !264, !265, !267, !268, !270, !271, !272, !273, !275, !276, !278}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @__param_max_memory, !1, !"__param_max_memory", i1 false, i1 false}
!1 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_memorytype296, !1, !"__UNIQUE_ID_max_memorytype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_memory297, !4, !"__UNIQUE_ID_max_memory297", i1 false, i1 false}
!4 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 12, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 90, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @saa7146_format_by_fourcc.__UNIQUE_ID_ddebug298, !6, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!11 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 103, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug299, !13, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 107, i32 3}
!19 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug300, !18, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 113, i32 3}
!23 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug301, !22, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 120, i32 4}
!27 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug302, !26, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 123, i32 3}
!31 = distinct !{null, !30, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!32 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 128, i32 3}
!35 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug304, !34, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 140, i32 2}
!39 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug305, !38, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 146, i32 3}
!43 = !{ptr @saa7146_start_preview.__UNIQUE_ID_ddebug306, !42, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__ksymtab_saa7146_start_preview, !46, !"__ksymtab_saa7146_start_preview", i1 false, i1 false}
!46 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 156, i32 1}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 163, i32 2}
!49 = !{ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug307, !48, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!50 = !{ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug308, !51, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!51 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 167, i32 3}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 173, i32 3}
!54 = !{ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug309, !53, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!55 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 178, i32 3}
!58 = !{ptr @saa7146_stop_preview.__UNIQUE_ID_ddebug310, !57, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__ksymtab_saa7146_stop_preview, !61, !"__ksymtab_saa7146_stop_preview", i1 false, i1 false}
!61 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 191, i32 1}
!62 = !{ptr @saa7146_video_ioctl_ops, !63, !"saa7146_video_ioctl_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 970, i32 29}
!64 = !{ptr @saa7146_vbi_ioctl_ops, !65, !"saa7146_vbi_ioctl_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 997, i32 29}
!66 = !{ptr @saa7146_video_uops, !67, !"saa7146_video_uops", i1 false, i1 false}
!67 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1281, i32 30}
!68 = !{ptr @__param_str_max_memory, !1, !"__param_str_max_memory", i1 false, i1 false}
!69 = !{ptr @max_memory, !70, !"max_memory", i1 false, i1 false}
!70 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 9, i32 12}
!71 = !{ptr @formats, !72, !"formats", i1 false, i1 false}
!72 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 21, i32 30}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 686, i32 2}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug330, !74, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!77 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 689, i32 3}
!80 = !{ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug331, !79, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!81 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 693, i32 3}
!84 = !{ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug332, !83, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!85 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 697, i32 3}
!88 = !{ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug333, !87, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!89 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 702, i32 3}
!92 = !{ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug334, !91, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!93 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 724, i32 3}
!96 = !{ptr @vidioc_try_fmt_vid_overlay.__UNIQUE_ID_ddebug335, !95, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!97 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 444, i32 31}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 446, i32 33}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 744, i32 2}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug336, !103, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!106 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug337, !108, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!108 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 746, i32 3}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 753, i32 2}
!111 = !{ptr @vidioc_s_fmt_vid_cap.__UNIQUE_ID_ddebug338, !110, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!112 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 765, i32 2}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @vidioc_s_fmt_vid_overlay.__UNIQUE_ID_ddebug339, !114, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!117 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 621, i32 2}
!120 = !{ptr @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug327, !119, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!121 = !{ptr @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug328, !122, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!122 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 650, i32 3}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 670, i32 2}
!125 = !{ptr @vidioc_try_fmt_vid_cap.__UNIQUE_ID_ddebug329, !124, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!126 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 865, i32 2}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @vidioc_overlay.__UNIQUE_ID_ddebug345, !128, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!131 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 471, i32 2}
!134 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @vidioc_s_fbuf.__UNIQUE_ID_ddebug323, !133, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!136 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 483, i32 3}
!139 = !{ptr @vidioc_s_fbuf.__UNIQUE_ID_ddebug324, !138, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!140 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 489, i32 4}
!143 = distinct !{null, !142, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!144 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 500, i32 3}
!147 = !{ptr @vidioc_s_fbuf.__UNIQUE_ID_ddebug326, !146, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!148 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 922, i32 2}
!151 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @vidioc_streamon.__UNIQUE_ID_ddebug346, !150, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!153 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 324, i32 2}
!156 = !{ptr @video_begin.__UNIQUE_ID_ddebug314, !155, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 328, i32 4}
!159 = !{ptr @video_begin.__UNIQUE_ID_ddebug315, !158, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!160 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 331, i32 3}
!163 = !{ptr @video_begin.__UNIQUE_ID_ddebug316, !162, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!164 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 336, i32 3}
!167 = !{ptr @video_begin.__UNIQUE_ID_ddebug317, !166, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!168 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 340, i32 4}
!171 = !{ptr @video_begin.__UNIQUE_ID_ddebug318, !170, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!172 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 358, i32 3}
!175 = !{ptr @video_begin.__UNIQUE_ID_ddebug319, !174, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!176 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 941, i32 2}
!179 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @vidioc_streamoff.__UNIQUE_ID_ddebug347, !178, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!181 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 947, i32 3}
!184 = !{ptr @vidioc_streamoff.__UNIQUE_ID_ddebug348, !183, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!185 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 952, i32 3}
!188 = !{ptr @vidioc_streamoff.__UNIQUE_ID_ddebug349, !187, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!189 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 962, i32 3}
!192 = !{ptr @vidioc_streamoff.__UNIQUE_ID_ddebug350, !191, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!193 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 387, i32 2}
!196 = !{ptr @video_end.__UNIQUE_ID_ddebug320, !195, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!197 = !{ptr @video_end.__UNIQUE_ID_ddebug321, !198, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!198 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 390, i32 3}
!199 = !{ptr @video_end.__UNIQUE_ID_ddebug322, !200, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!200 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 395, i32 3}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 821, i32 2}
!203 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @vidioc_s_std.__UNIQUE_ID_ddebug340, !202, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!205 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 824, i32 3}
!208 = !{ptr @vidioc_s_std.__UNIQUE_ID_ddebug341, !207, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!209 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @vidioc_s_std.__UNIQUE_ID_ddebug342, !211, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!211 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 832, i32 4}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 853, i32 3}
!214 = !{ptr @vidioc_s_std.__UNIQUE_ID_ddebug343, !213, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!215 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 857, i32 2}
!218 = !{ptr @vidioc_s_std.__UNIQUE_ID_ddebug344, !217, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!219 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @video_init.__key, !221, !"__key", i1 false, i1 false}
!221 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1180, i32 2}
!222 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @video_qops, !224, !"video_qops", i1 false, i1 false}
!224 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1166, i32 40}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1135, i32 2}
!227 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @buffer_setup.__UNIQUE_ID_ddebug356, !226, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!229 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1047, i32 2}
!232 = !{ptr @.str.103, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug351, !231, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!234 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1054, i32 3}
!237 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug352, !236, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!238 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1061, i32 3}
!241 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug353, !240, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!242 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1065, i32 2}
!245 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug354, !244, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!246 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1113, i32 2}
!249 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug355, !248, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!250 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 204, i32 2}
!253 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @saa7146_pgtable_build.__UNIQUE_ID_ddebug311, !252, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!255 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 224, i32 5}
!258 = !{ptr @saa7146_pgtable_build.__UNIQUE_ID_ddebug312, !257, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!259 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @saa7146_pgtable_build.__UNIQUE_ID_ddebug313, !261, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!261 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 235, i32 5}
!262 = !{ptr @.str.118, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1148, i32 2}
!264 = !{ptr @buffer_queue.__UNIQUE_ID_ddebug357, !263, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!265 = !{ptr @.str.119, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1159, i32 2}
!267 = !{ptr @buffer_release.__UNIQUE_ID_ddebug358, !266, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1229, i32 2}
!270 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @video_irq_done.__UNIQUE_ID_ddebug359, !269, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!272 = !{ptr @.str.122, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1247, i32 2}
!275 = !{ptr @video_read.__UNIQUE_ID_ddebug360, !274, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!276 = !{ptr @video_read.__UNIQUE_ID_ddebug361, !277, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!277 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1252, i32 4}
!278 = !{ptr @video_read.__UNIQUE_ID_ddebug362, !279, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!279 = !{!"../drivers/media/common/saa7146/saa7146_video.c", i32 1255, i32 3}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{i64 2148842631, i64 2148842636, i64 2148842649, i64 2148842693, i64 2148842727, i64 2148842748}
!290 = !{i64 7182908}
!291 = !{i64 2156732563}
!292 = !{i64 2156732834}
!293 = !{i64 7182490}
!294 = !{i64 2156733361}
!295 = !{i64 2156734199}
!296 = !{i64 2156734470}
!297 = !{i64 2156734997}
!298 = !{i64 2156735835}
!299 = !{i64 2156736106}
!300 = !{i64 2156736633}
!301 = !{i64 2156704912}
!302 = !{i64 2156615911}
!303 = !{i64 2156616823}
!304 = !{i64 2156713658}
!305 = !{i64 2156613174}
!306 = !{i64 2156614088}
!307 = !{i64 2156714154}
