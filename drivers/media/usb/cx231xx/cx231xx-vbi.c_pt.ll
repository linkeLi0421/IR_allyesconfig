; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-vbi.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cx231xx_uninit_vbi_isoc\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_uninit_vbi_isoc\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_uninit_vbi_isoc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_uninit_vbi_isoc:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_uninit_vbi_isoc\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_uninit_vbi_isoc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cx231xx_init_vbi_isoc\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_init_vbi_isoc\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_init_vbi_isoc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_init_vbi_isoc:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_init_vbi_isoc\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_init_vbi_isoc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128 }
%struct.anon.121 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.anon.123 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { ptr, ptr }
%struct.anon.125 = type { ptr, ptr, ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.cx231xx_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.list_head, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@cx231xx_vbi_qops = dso_local global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vbi_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vbi_buf_prepare, ptr null, ptr null, ptr @vbi_start_streaming, ptr @vbi_stop_streaming, ptr @vbi_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@cx231xx_uninit_vbi_isoc.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx231xx\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx231xx_uninit_vbi_isoc\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/cx231xx/cx231xx-vbi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"called cx231xx_uninit_vbi_isoc\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_cx231xx_uninit_vbi_isoc = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_uninit_vbi_isoc = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_uninit_vbi_isoc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_uninit_vbi_isoc to i32), ptr @__kstrtab_cx231xx_uninit_vbi_isoc, ptr @__kstrtabns_cx231xx_uninit_vbi_isoc }, section "___ksymtab_gpl+cx231xx_uninit_vbi_isoc", align 4
@cx231xx_init_vbi_isoc.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx231xx_init_vbi_isoc\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"called cx231xx_vbi_isoc\0A\00", [39 x i8] zeroinitializer }, align 32
@cx231xx_init_vbi_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 378, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot alloc memory for usb buffers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_init_vbi_isoc._entry_ptr = internal global ptr @cx231xx_init_vbi_isoc._entry, section ".printk_index", align 4
@cx231xx_init_vbi_isoc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 386, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot allocate memory for usbtransfer\0A\00", [56 x i8] zeroinitializer }, align 32
@cx231xx_init_vbi_isoc._entry_ptr.11 = internal global ptr @cx231xx_init_vbi_isoc._entry.9, section ".printk_index", align 4
@cx231xx_init_vbi_isoc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 412, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to allocate %i bytes for transfer buffer %i\0A\00", [44 x i8] zeroinitializer }, align 32
@cx231xx_init_vbi_isoc._entry_ptr.14 = internal global ptr @cx231xx_init_vbi_isoc._entry.12, section ".printk_index", align 4
@cx231xx_init_vbi_isoc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dma_q->wq\00", [21 x i8] zeroinitializer }, align 32
@cx231xx_init_vbi_isoc._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.2, i32 430, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", [60 x i8] zeroinitializer }, align 32
@cx231xx_init_vbi_isoc._entry_ptr.18 = internal global ptr @cx231xx_init_vbi_isoc._entry.16, section ".printk_index", align 4
@__kstrtab_cx231xx_init_vbi_isoc = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_init_vbi_isoc = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_init_vbi_isoc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_init_vbi_isoc to i32), ptr @__kstrtab_cx231xx_init_vbi_isoc, ptr @__kstrtabns_cx231xx_init_vbi_isoc }, section "___ksymtab_gpl+cx231xx_init_vbi_isoc", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 60, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"URB status %d [%s].\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 64, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"URB packet %d, status %d [%s].\0A\00", [32 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.33 = internal global ptr @print_err_status._entry.31, section ".printk_index", align 4
@cx231xx_irq_vbi_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 275, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"urb completion error %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx231xx_irq_vbi_callback\00", [39 x i8] zeroinitializer }, align 32
@cx231xx_irq_vbi_callback._entry_ptr = internal global ptr @cx231xx_irq_vbi_callback._entry, section ".printk_index", align 4
@cx231xx_irq_vbi_callback._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 290, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"urb resubmit failed (error=%i)\0A\00", [32 x i8] zeroinitializer }, align 32
@cx231xx_irq_vbi_callback._entry_ptr.38 = internal global ptr @cx231xx_irq_vbi_callback._entry.36, section ".printk_index", align 4
@get_next_vbi_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 572, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No active queue to serve\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_next_vbi_buf\00", [47 x i8] zeroinitializer }, align 32
@get_next_vbi_buf._entry_ptr = internal global ptr @get_next_vbi_buf._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 96]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 96]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 96]
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"cx231xx_vbi_qops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 240, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 302, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 351, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 377, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 385, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 410, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 423, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 429, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1163, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 30, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 34, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 37, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 40, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 43, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 46, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 49, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 52, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 55, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 59, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 62, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 274, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 289, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [43 x i8] c"../drivers/media/usb/cx231xx/cx231xx-vbi.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 572, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__ksymtab_cx231xx_init_vbi_isoc, ptr @__ksymtab_cx231xx_uninit_vbi_isoc, ptr @cx231xx_init_vbi_isoc._entry, ptr @cx231xx_init_vbi_isoc._entry.12, ptr @cx231xx_init_vbi_isoc._entry.16, ptr @cx231xx_init_vbi_isoc._entry.9, ptr @cx231xx_init_vbi_isoc._entry_ptr, ptr @cx231xx_init_vbi_isoc._entry_ptr.11, ptr @cx231xx_init_vbi_isoc._entry_ptr.14, ptr @cx231xx_init_vbi_isoc._entry_ptr.18, ptr @cx231xx_irq_vbi_callback._entry, ptr @cx231xx_irq_vbi_callback._entry.36, ptr @cx231xx_irq_vbi_callback._entry_ptr, ptr @cx231xx_irq_vbi_callback._entry_ptr.38, ptr @get_next_vbi_buf._entry, ptr @get_next_vbi_buf._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.31, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.33, ptr @cx231xx_vbi_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @cx231xx_init_vbi_isoc.__key, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_vbi_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_vbi_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_vbi_isoc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_vbi_isoc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_vbi_isoc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_vbi_isoc._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_irq_vbi_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_irq_vbi_callback._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_vbi_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vbi_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm, align 8
  %and = and i64 %3, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 12, i32 18
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nplanes, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 8
  %mul = shl i32 %6, 2
  %mul2 = mul i32 %mul, %cond
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul2, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %norm, align 8
  %and = and i64 %5, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 12, i32 18
  %width = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %mul = shl i32 %7, 2
  %mul1 = mul i32 %mul, %cond
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1)
  %cmp.not = icmp eq i32 %mul1, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul1)
  %cmp14 = icmp ult i32 %11, %mul1
  br i1 %cmp14, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i12

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i12:                                      ; preds = %vb2_plane_size.exit.thread
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul1)
  %cmp1.i = icmp ult i32 %13, %mul1
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i12.if.end42.i_crit_edge

if.then.i12.if.end42.i_crit_edge:                 ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i12
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !90

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i12.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %15, %if.then38.i ], [ %mul1, %if.then.i12.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56, i32 0, i32 11
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %alt_max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56, i32 7
  %3 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alt_max_pkt_size, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %call3 = tail call i32 @cx231xx_init_vbi_isoc(ptr noundef %1, i32 noundef 4, i32 noundef 5, i32 noundef %6, ptr noundef nonnull @cx231xx_isoc_vbi_copy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %vbi_mode.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56
  %slock.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #9
  %buf8.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56, i32 2, i32 11
  %7 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %buf8.i, align 4
  %8 = ptrtoint ptr %vbi_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbi_mode.i, align 4
  %cmp16.not35.i = icmp eq ptr %9, %vbi_mode.i
  br i1 %cmp16.not35.i, label %if.then.return_all_buffers.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.return_all_buffers.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in36.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %9, %if.then.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in36.i, i32 -736
  %10 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in36.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in36.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #9
  %cmp16.not.i = icmp eq ptr %.pn.i, %vbi_mode.i
  br i1 %cmp16.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %if.then.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call4.i) #9
  br label %if.end

if.end:                                           ; preds = %return_all_buffers.exit, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vbi_mode.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56
  %slock.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #9
  %buf8.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 56, i32 2, i32 11
  %2 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buf8.i, align 4
  %3 = ptrtoint ptr %vbi_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vbi_mode.i, align 4
  %cmp16.not35.i = icmp eq ptr %4, %vbi_mode.i
  br i1 %cmp16.not35.i, label %entry.return_all_buffers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.return_all_buffers.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in36.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %4, %entry.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in36.i, i32 -736
  %5 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in36.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in36.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #9
  %cmp16.not.i = icmp eq ptr %.pn.i, %vbi_mode.i
  br i1 %cmp16.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %entry.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call4.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %vbi_mode = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 56
  %slock = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 56, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %list = getelementptr inbounds %struct.cx231xx_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 56, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %vbi_mode) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vbi_mode, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_uninit_vbi_isoc(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_uninit_vbi_isoc.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_uninit_vbi_isoc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_uninit_vbi_isoc.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nfields = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 12
  %2 = ptrtoint ptr %nfields to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nfields, align 4
  %num_bufs = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 1
  %3 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp94 = icmp sgt i32 %4, 0
  br i1 %cmp94, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %urb8 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 2
  %transfer_buffer = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end47.for.body_crit_edge ]
  %5 = ptrtoint ptr %urb8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb8, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.095
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %for.body.if.end47_crit_edge, label %if.then10

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then10:                                        ; preds = %for.body
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !92
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not = icmp eq i32 %and.i, 0
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %8) #9
  br label %if.end28

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %8) #9
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx31 = getelementptr ptr, ptr %11, i32 %i.095
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %13, null
  br i1 %tobool32.not, label %if.end28.if.end42_crit_edge, label %if.then33

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx41 = getelementptr ptr, ptr %15, i32 %i.095
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %if.end28.if.end42_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %8) #9
  %17 = ptrtoint ptr %urb8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb8, align 4
  %arrayidx46 = getelementptr ptr, ptr %18, i32 %i.095
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end42, %for.body.if.end47_crit_edge
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx51 = getelementptr ptr, ptr %21, i32 %i.095
  %22 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx51, align 4
  %inc = add nuw nsw i32 %i.095, 1
  %23 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_bufs, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %if.end47.for.body_crit_edge, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %do.end.for.end_crit_edge
  %urb54 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 2
  %25 = ptrtoint ptr %urb54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb54, align 4
  tail call void @kfree(ptr noundef %26) #9
  %transfer_buffer57 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 3
  %27 = ptrtoint ptr %transfer_buffer57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer57, align 4
  tail call void @kfree(ptr noundef %28) #9
  %29 = ptrtoint ptr %urb54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %urb54, align 4
  %30 = ptrtoint ptr %transfer_buffer57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %transfer_buffer57, align 4
  %31 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %num_bufs, align 4
  %call67 = tail call i32 @cx231xx_capture_start(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_capture_start(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_init_vbi_isoc(ptr noundef %dev, i32 noundef %max_packets, i32 noundef %num_bufs, i32 noundef %max_pkt_size, ptr noundef %bulk_copy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbi_mode = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_init_vbi_isoc.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_init_vbi_isoc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_init_vbi_isoc.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @cx231xx_uninit_vbi_isoc(ptr noundef %dev)
  %udev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 60
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %end_point_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 8
  %4 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %end_point_addr, align 8
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %shl.i = shl i32 %7, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or7 = or i32 %or.i, -1073741696
  %call8 = tail call i32 @usb_clear_halt(ptr noundef %3, i32 noundef %or7) #9
  %bulk_copy10 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 13
  %8 = ptrtoint ptr %bulk_copy10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bulk_copy, ptr %bulk_copy10, align 4
  %num_bufs13 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 1
  %9 = ptrtoint ptr %num_bufs13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num_bufs, ptr %num_bufs13, align 4
  %pos = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 2
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pos, align 4
  %is_partial_line = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 3
  %11 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %is_partial_line, align 4
  %last_sav = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 5
  %12 = ptrtoint ptr %last_sav to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %last_sav, align 1
  %current_field = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 6
  %13 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %current_field, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 8
  %shl = shl i32 %15, 1
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 7
  %16 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %bytes_left_in_line, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %17 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %norm, align 8
  %and = and i64 %18, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool14.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool14.not, i32 12, i32 18
  %lines_per_field = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 10
  %19 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %lines_per_field, align 4
  %lines_completed = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 8
  %20 = ptrtoint ptr %lines_completed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lines_completed, align 4
  %uglygep = getelementptr i8, ptr %dev, i32 12345
  %21 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %uglygep, align 1
  %bulk_ctl = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_bufs, i32 4) #9
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  br i1 %23, label %kcalloc.exit.thread, label %kcalloc.exit.thread268, !prof !93

kcalloc.exit.thread:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %urb19239 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 2
  %25 = ptrtoint ptr %urb19239 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %urb19239, align 4
  br label %do.end27

kcalloc.exit.thread268:                           ; preds = %do.end
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #12
  %urb19270 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 2
  %26 = ptrtoint ptr %urb19270 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i, ptr %urb19270, align 4
  %tobool23.not271 = icmp eq ptr %call8.i.i, null
  br i1 %tobool23.not271, label %kcalloc.exit.thread268.do.end27_crit_edge, label %if.end7.i.i227

kcalloc.exit.thread268.do.end27_crit_edge:        ; preds = %kcalloc.exit.thread268
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end27:                                         ; preds = %kcalloc.exit.thread268.do.end27_crit_edge, %kcalloc.exit.thread
  %dev28 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %27 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end7.i.i227:                                   ; preds = %kcalloc.exit.thread268
  %call8.i.i226 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #12
  %transfer_buffer = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 3
  %29 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i226, ptr %transfer_buffer, align 4
  %tobool36.not = icmp eq ptr %call8.i.i226, null
  br i1 %tobool36.not, label %do.end40, label %if.end45

do.end40:                                         ; preds = %if.end7.i.i227
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %30 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10) #13
  %32 = ptrtoint ptr %urb19270 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb19270, align 4
  tail call void @kfree(ptr noundef %33) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end7.i.i227
  %34 = ptrtoint ptr %bulk_ctl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %max_pkt_size, ptr %bulk_ctl, align 4
  %buf = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 11
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %buf, align 4
  %mul = mul i32 %max_pkt_size, %max_packets
  %36 = ptrtoint ptr %num_bufs13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_bufs13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp58254 = icmp sgt i32 %37, 0
  br i1 %cmp58254, label %if.end45.for.body60_crit_edge, label %if.end45.do.body100_crit_edge

if.end45.do.body100_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

if.end45.for.body60_crit_edge:                    ; preds = %if.end45
  br label %for.body60

for.body60:                                       ; preds = %if.end84.for.body60_crit_edge, %if.end45.for.body60_crit_edge
  %i.1255 = phi i32 [ %inc98, %if.end84.for.body60_crit_edge ], [ 0, %if.end45.for.body60_crit_edge ]
  %call61 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx231xx_uninit_vbi_isoc(ptr noundef %dev)
  br label %cleanup

if.end64:                                         ; preds = %for.body60
  %38 = ptrtoint ptr %urb19270 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %urb19270, align 4
  %arrayidx68 = getelementptr ptr, ptr %39, i32 %i.1255
  %40 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call61, ptr %arrayidx68, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 13
  %41 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %transfer_flags, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %42 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx73 = getelementptr ptr, ptr %43, i32 %i.1255
  %44 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i.i, ptr %arrayidx73, align 4
  %45 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx77 = getelementptr ptr, ptr %45, i32 %i.1255
  %46 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %47, null
  br i1 %tobool78.not, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %dev83 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %48 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.13, i32 noundef %mul, i32 noundef %i.1255) #13
  tail call void @cx231xx_uninit_vbi_isoc(ptr noundef %dev)
  br label %cleanup

if.end84:                                         ; preds = %if.end64
  %50 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev, align 8
  %52 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %end_point_addr, align 8
  %conv88 = zext i16 %53 to i32
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %51, align 8
  %shl.i234 = shl i32 %55, 8
  %shl1.i235 = shl nuw nsw i32 %conv88, 15
  %or.i236 = or i32 %shl1.i235, %shl.i234
  %or91 = or i32 %or.i236, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 8
  %56 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %51, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 10
  %57 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or91, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 14
  %58 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %47, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 19
  %59 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 28
  %60 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @cx231xx_irq_vbi_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 27
  %61 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %vbi_mode, ptr %context4.i, align 4
  %inc98 = add nuw nsw i32 %i.1255, 1
  %62 = ptrtoint ptr %num_bufs13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_bufs13, align 4
  %cmp58 = icmp slt i32 %inc98, %63
  br i1 %cmp58, label %if.end84.for.body60_crit_edge, label %if.end84.do.body100_crit_edge

if.end84.do.body100_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

if.end84.for.body60_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

do.body100:                                       ; preds = %if.end84.do.body100_crit_edge, %if.end45.do.body100_crit_edge
  %wq = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.15, ptr noundef nonnull @cx231xx_init_vbi_isoc.__key) #9
  %64 = ptrtoint ptr %num_bufs13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_bufs13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp107256 = icmp sgt i32 %65, 0
  br i1 %cmp107256, label %do.body100.for.body109_crit_edge, label %do.body100.for.end124_crit_edge

do.body100.for.end124_crit_edge:                  ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end124

do.body100.for.body109_crit_edge:                 ; preds = %do.body100
  br label %for.body109

for.body109:                                      ; preds = %for.inc122.for.body109_crit_edge, %do.body100.for.body109_crit_edge
  %i.2257 = phi i32 [ %inc123, %for.inc122.for.body109_crit_edge ], [ 0, %do.body100.for.body109_crit_edge ]
  %66 = ptrtoint ptr %urb19270 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %urb19270, align 4
  %arrayidx113 = getelementptr ptr, ptr %67, i32 %i.2257
  %68 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx113, align 4
  %call114 = tail call i32 @usb_submit_urb(ptr noundef %69, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %for.inc122, label %do.end119

do.end119:                                        ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #11
  %dev120 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %70 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev120, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.17, i32 noundef %i.2257, i32 noundef %call114) #13
  tail call void @cx231xx_uninit_vbi_isoc(ptr noundef %dev)
  br label %cleanup

for.inc122:                                       ; preds = %for.body109
  %inc123 = add nuw nsw i32 %i.2257, 1
  %72 = ptrtoint ptr %num_bufs13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_bufs13, align 4
  %cmp107 = icmp slt i32 %inc123, %73
  br i1 %cmp107, label %for.inc122.for.body109_crit_edge, label %for.inc122.for.end124_crit_edge

for.inc122.for.end124_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end124

for.inc122.for.body109_crit_edge:                 ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body109

for.end124:                                       ; preds = %for.inc122.for.end124_crit_edge, %do.body100.for.end124_crit_edge
  %call125 = tail call i32 @cx231xx_capture_start(ptr noundef %dev, i32 noundef 1, i8 noundef zeroext 2) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end124, %do.end119, %do.end82, %if.then63, %do.end40, %do.end27
  %retval.0 = phi i32 [ -12, %do.end82 ], [ -12, %if.then63 ], [ %call114, %do.end119 ], [ 0, %for.end124 ], [ -12, %do.end40 ], [ -12, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_irq_vbi_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -12280
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %entry.do.body8_crit_edge
    i32 -110, label %entry.do.body8_crit_edge44
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge45
    i32 -108, label %entry.cleanup_crit_edge46
  ]

entry.cleanup_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.do.body8_crit_edge44:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr i8, ptr %1, i32 -12240
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.34, i32 noundef %3) #13
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge, %entry.do.body8_crit_edge44
  %slock = getelementptr inbounds %struct.cx231xx_video_mode, ptr %1, i32 0, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %bulk_copy = getelementptr inbounds %struct.cx231xx_video_mode, ptr %1, i32 0, i32 2, i32 13
  %7 = ptrtoint ptr %bulk_copy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bulk_copy, align 4
  %call16 = tail call i32 %8(ptr noundef %add.ptr3, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call10) #9
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status, align 4
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call20, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %do.body8.cleanup_crit_edge, label %do.end25

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr i8, ptr %1, i32 -12240
  %11 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.37, i32 noundef %call20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.body8.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge45, %entry.cleanup_crit_edge46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_get_vbi_line(ptr nocapture noundef %dev, ptr noundef %dma_q, i8 noundef zeroext %sav_eav, ptr nocapture noundef readonly %p_buffer, i32 noundef %buffer_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %sav_eav to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %sav_eav, label %entry.cleanup_crit_edge [
    i8 32, label %entry.if.end_crit_edge
    i8 96, label %sw.bb1
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sw.bb1, %entry.if.end_crit_edge
  %current_field.0.ph = phi i32 [ 2, %sw.bb1 ], [ 1, %entry.if.end_crit_edge ]
  %last_sav = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 5
  %1 = ptrtoint ptr %last_sav to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %sav_eav, ptr %last_sav, align 1
  %call = tail call i32 @cx231xx_copy_vbi_line(ptr noundef %dev, ptr noundef %dma_q, ptr noundef %p_buffer, i32 noundef %buffer_size, i32 noundef %current_field.0.ph)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_copy_vbi_line(ptr nocapture noundef %dev, ptr noundef %dma_q, ptr nocapture noundef readonly %p_line, i32 noundef %length, i32 noundef %field_number) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %mul = shl i32 %1, 1
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %2 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %buf1.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 11
  %4 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf1.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %if.then.i, label %if.then.cx231xx_reset_vbi_buffer.exit_crit_edge

if.then.cx231xx_reset_vbi_buffer.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_reset_vbi_buffer.exit

if.then.i:                                        ; preds = %if.then
  %6 = ptrtoint ptr %dma_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dma_q, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %dma_q
  br i1 %cmp.i.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev4.i.i = getelementptr i8, ptr %dma_q, i32 -12240
  %8 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39) #13
  br label %get_next_vbi_buf.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %add.ptr9.i.i = getelementptr i8, ptr %7, i32 -736
  %call10.i.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr9.i.i, i32 noundef 0) #9
  %num_planes.i.i.i = getelementptr i8, ptr %7, i32 -720
  %10 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.vb2_plane_size.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.vb2_plane_size.exit.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %length.i.i.i = getelementptr i8, ptr %7, i32 -648
  %12 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i.i.i, align 8
  br label %vb2_plane_size.exit.i.i

vb2_plane_size.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end.i.i.vb2_plane_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %13, %if.then.i.i.i ], [ 0, %if.end.i.i.vb2_plane_size.exit.i.i_crit_edge ]
  %14 = call ptr @memset(ptr %call10.i.i, i32 0, i32 %retval.0.i.i.i)
  br label %get_next_vbi_buf.exit.i

get_next_vbi_buf.exit.i:                          ; preds = %vb2_plane_size.exit.i.i, %do.end.i.i
  %.sink.i = phi ptr [ null, %do.end.i.i ], [ %add.ptr9.i.i, %vb2_plane_size.exit.i.i ]
  %buf5.i.i = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 2, i32 11
  %15 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.sink.i, ptr %buf5.i.i, align 4
  %pos.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 2
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pos.i, align 4
  %17 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %current_field, align 4
  br label %cx231xx_reset_vbi_buffer.exit

cx231xx_reset_vbi_buffer.exit:                    ; preds = %get_next_vbi_buf.exit.i, %if.then.cx231xx_reset_vbi_buffer.exit_crit_edge
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 8
  %shl.i = shl i32 %19, 1
  %bytes_left_in_line.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %20 = ptrtoint ptr %bytes_left_in_line.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl.i, ptr %bytes_left_in_line.i, align 4
  %lines_completed.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %21 = ptrtoint ptr %lines_completed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lines_completed.i, align 4
  br label %if.end

if.end:                                           ; preds = %cx231xx_reset_vbi_buffer.exit, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %field_number)
  %cmp2.not = icmp eq i32 %23, %field_number
  br i1 %cmp2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %24 = ptrtoint ptr %lines_completed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lines_completed, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %buf5 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 11
  %25 = ptrtoint ptr %buf5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf5, align 4
  %27 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %field_number, ptr %current_field, align 4
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %28 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytes_left_in_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %length)
  %cmp7 = icmp ugt i32 %29, %length
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %length)
  %lines_completed10 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %31 = ptrtoint ptr %lines_completed10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lines_completed10, align 4
  %lines_per_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 10
  %33 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lines_per_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp11.not = icmp ult i32 %32, %34
  br i1 %cmp11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %29, %30
  %35 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %bytes_left_in_line, align 4
  %conv = zext i1 %cmp7 to i8
  %is_partial_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 3
  %36 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %is_partial_line, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %is_partial_line17 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 3
  %37 = ptrtoint ptr %is_partial_line17 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %is_partial_line17, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub20 = sub i32 %29, %30
  %38 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub20, ptr %bytes_left_in_line, align 4
  %conv25 = zext i1 %cmp7 to i8
  %39 = ptrtoint ptr %is_partial_line17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv25, ptr %is_partial_line17, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %40 = ptrtoint ptr %buf5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf5, align 4
  %cmp.i94 = icmp eq ptr %41, null
  br i1 %cmp.i94, label %if.end27.cx231xx_do_vbi_copy.exit_crit_edge, label %if.end.i

if.end27.cx231xx_do_vbi_copy.exit_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_do_vbi_copy.exit

if.end.i:                                         ; preds = %if.end27
  %42 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width, align 8
  %shl.i95 = shl i32 %43, 1
  %call.i = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %41, i32 noundef 0) #9
  %44 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytes_left_in_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i95, i32 %45)
  %cmp2.not.i = icmp eq i32 %shl.i95, %45
  %sub.i = sub i32 %shl.i95, %45
  %spec.select.i = select i1 %cmp2.not.i, i32 0, i32 %sub.i
  %46 = ptrtoint ptr %lines_completed10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lines_completed10, align 4
  %mul.i = mul i32 %47, %shl.i95
  %add.i = add i32 %mul.i, %spec.select.i
  %48 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp6.i = icmp eq i32 %49, 2
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width, align 8
  %mul9.i = shl i32 %51, 1
  %52 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lines_per_field, align 4
  %mul10.i = mul i32 %mul9.i, %53
  %add11.i = add i32 %mul10.i, %add.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.if.end12.i_crit_edge
  %offset.0.i = phi i32 [ %add11.i, %if.then7.i ], [ %add.i, %if.end.i.if.end12.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset.0.i
  %54 = tail call i32 @llvm.umin.i32(i32 %45, i32 %30) #9
  %55 = call ptr @memcpy(ptr %add.ptr.i, ptr %p_line, i32 %54)
  br label %cx231xx_do_vbi_copy.exit

cx231xx_do_vbi_copy.exit:                         ; preds = %if.end12.i, %if.end27.cx231xx_do_vbi_copy.exit_crit_edge
  %pos = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 2
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pos, align 4
  %add = add i32 %57, %30
  store i32 %add, ptr %pos, align 4
  %58 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytes_left_in_line, align 4
  %sub29 = sub i32 %59, %30
  store i32 %sub29, ptr %bytes_left_in_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %30)
  %cmp31 = icmp eq i32 %59, %30
  br i1 %cmp31, label %if.then33, label %cx231xx_do_vbi_copy.exit.cleanup_crit_edge

cx231xx_do_vbi_copy.exit.cleanup_crit_edge:       ; preds = %cx231xx_do_vbi_copy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %cx231xx_do_vbi_copy.exit
  %60 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul, ptr %bytes_left_in_line, align 4
  %61 = ptrtoint ptr %lines_completed10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lines_completed10, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %lines_completed10, align 4
  %63 = ptrtoint ptr %is_partial_line17 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %is_partial_line17, align 4
  %norm.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %64 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %65, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 12, i32 18
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cond.i)
  %cmp.i100 = icmp eq i32 %inc, %cond.i
  br i1 %cmp.i100, label %land.lhs.true.i, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then33
  %66 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp1.i = icmp eq i32 %67, 2
  br i1 %cmp1.i, label %if.then41, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true.i
  %sequence.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 11
  %68 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %69, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %sequence1.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %26, i32 0, i32 4
  %70 = ptrtoint ptr %sequence1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sequence1.i, align 8
  %call.i.i = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %26, i32 0, i32 5
  %71 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %72 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %buf5, align 4
  %list.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %26, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then41.vbi_buffer_filled.exit_crit_edge

if.then41.vbi_buffer_filled.exit_crit_edge:       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %vbi_buffer_filled.exit

if.end.i.i.i:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %26, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %vbi_buffer_filled.exit

vbi_buffer_filled.exit:                           ; preds = %if.end.i.i.i, %if.then41.vbi_buffer_filled.exit_crit_edge
  %79 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %26, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %26, i32 noundef 5) #9
  %81 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %pos, align 4
  %82 = ptrtoint ptr %lines_completed10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %lines_completed10, align 4
  %83 = ptrtoint ptr %buf5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf5, align 4
  %cmp.i104 = icmp eq ptr %84, null
  br i1 %cmp.i104, label %if.then.i106, label %vbi_buffer_filled.exit.cx231xx_reset_vbi_buffer.exit128_crit_edge

vbi_buffer_filled.exit.cx231xx_reset_vbi_buffer.exit128_crit_edge: ; preds = %vbi_buffer_filled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_reset_vbi_buffer.exit128

if.then.i106:                                     ; preds = %vbi_buffer_filled.exit
  %85 = ptrtoint ptr %dma_q to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %dma_q, align 4
  %cmp.i.not.i.i105 = icmp eq ptr %86, %dma_q
  br i1 %cmp.i.not.i.i105, label %do.end.i.i108, label %if.end.i.i113

do.end.i.i108:                                    ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #11
  %dev4.i.i107 = getelementptr i8, ptr %dma_q, i32 -12240
  %87 = ptrtoint ptr %dev4.i.i107 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev4.i.i107, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.39) #13
  br label %get_next_vbi_buf.exit.i122

if.end.i.i113:                                    ; preds = %if.then.i106
  %add.ptr9.i.i109 = getelementptr i8, ptr %86, i32 -736
  %call10.i.i110 = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr9.i.i109, i32 noundef 0) #9
  %num_planes.i.i.i111 = getelementptr i8, ptr %86, i32 -720
  %89 = ptrtoint ptr %num_planes.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_planes.i.i.i111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.not.i.i.i112 = icmp eq i32 %90, 0
  br i1 %cmp.not.i.i.i112, label %if.end.i.i113.vb2_plane_size.exit.i.i117_crit_edge, label %if.then.i.i.i115

if.end.i.i113.vb2_plane_size.exit.i.i117_crit_edge: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit.i.i117

if.then.i.i.i115:                                 ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  %length.i.i.i114 = getelementptr i8, ptr %86, i32 -648
  %91 = ptrtoint ptr %length.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length.i.i.i114, align 8
  br label %vb2_plane_size.exit.i.i117

vb2_plane_size.exit.i.i117:                       ; preds = %if.then.i.i.i115, %if.end.i.i113.vb2_plane_size.exit.i.i117_crit_edge
  %retval.0.i.i.i116 = phi i32 [ %92, %if.then.i.i.i115 ], [ 0, %if.end.i.i113.vb2_plane_size.exit.i.i117_crit_edge ]
  %93 = call ptr @memset(ptr %call10.i.i110, i32 0, i32 %retval.0.i.i.i116)
  br label %get_next_vbi_buf.exit.i122

get_next_vbi_buf.exit.i122:                       ; preds = %vb2_plane_size.exit.i.i117, %do.end.i.i108
  %.sink.i118 = phi ptr [ null, %do.end.i.i108 ], [ %add.ptr9.i.i109, %vb2_plane_size.exit.i.i117 ]
  %buf5.i.i119 = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 2, i32 11
  %94 = ptrtoint ptr %buf5.i.i119 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %.sink.i118, ptr %buf5.i.i119, align 4
  %95 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %pos, align 4
  %96 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %current_field, align 4
  br label %cx231xx_reset_vbi_buffer.exit128

cx231xx_reset_vbi_buffer.exit128:                 ; preds = %get_next_vbi_buf.exit.i122, %vbi_buffer_filled.exit.cx231xx_reset_vbi_buffer.exit128_crit_edge
  %97 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %width, align 8
  %shl.i124 = shl i32 %98, 1
  %99 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl.i124, ptr %bytes_left_in_line, align 4
  %100 = ptrtoint ptr %lines_completed10 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %lines_completed10, align 4
  br label %cleanup

cleanup:                                          ; preds = %cx231xx_reset_vbi_buffer.exit128, %land.lhs.true.i.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %cx231xx_do_vbi_copy.exit.cleanup_crit_edge, %if.then18, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %30, %if.then18 ], [ %30, %cx231xx_reset_vbi_buffer.exit128 ], [ %30, %cx231xx_do_vbi_copy.exit.cleanup_crit_edge ], [ %30, %if.then33.cleanup_crit_edge ], [ %30, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_reset_vbi_buffer(ptr nocapture noundef readonly %dev, ptr noundef %dma_q) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 11
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %dma_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dma_q, align 4
  %cmp.i.not.i = icmp eq ptr %3, %dma_q
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev4.i = getelementptr i8, ptr %dma_q, i32 -12240
  %4 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.39) #13
  br label %get_next_vbi_buf.exit

if.end.i:                                         ; preds = %if.then
  %add.ptr9.i = getelementptr i8, ptr %3, i32 -736
  %call10.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr9.i, i32 noundef 0) #9
  %num_planes.i.i = getelementptr i8, ptr %3, i32 -720
  %6 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i.i, label %if.end.i.vb2_plane_size.exit.i_crit_edge, label %if.then.i.i

if.end.i.vb2_plane_size.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %length.i.i = getelementptr i8, ptr %3, i32 -648
  %8 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i.i, %if.end.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %9, %if.then.i.i ], [ 0, %if.end.i.vb2_plane_size.exit.i_crit_edge ]
  %10 = call ptr @memset(ptr %call10.i, i32 0, i32 %retval.0.i.i)
  br label %get_next_vbi_buf.exit

get_next_vbi_buf.exit:                            ; preds = %vb2_plane_size.exit.i, %do.end.i
  %.sink = phi ptr [ null, %do.end.i ], [ %add.ptr9.i, %vb2_plane_size.exit.i ]
  %buf5.i = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink, ptr %buf5.i, align 4
  %pos = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 2
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pos, align 4
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %13 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %current_field, align 4
  br label %if.end

if.end:                                           ; preds = %get_next_vbi_buf.exit, %entry.if.end_crit_edge
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 8
  %shl = shl i32 %15, 1
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %16 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %bytes_left_in_line, align 4
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %17 = ptrtoint ptr %lines_completed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %lines_completed, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_do_vbi_copy(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dma_q, ptr nocapture noundef readonly %p_buffer, i32 noundef %bytes_to_copy) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %buf1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 2, i32 11
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %shl = shl i32 %3, 1
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %1, i32 noundef 0) #9
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %4 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes_left_in_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %5)
  %cmp2.not = icmp eq i32 %shl, %5
  %sub = sub i32 %shl, %5
  %spec.select = select i1 %cmp2.not, i32 0, i32 %sub
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %6 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lines_completed, align 4
  %mul = mul i32 %7, %shl
  %add = add i32 %mul, %spec.select
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %8 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 8
  %mul9 = shl i32 %11, 1
  %lines_per_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 10
  %12 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lines_per_field, align 4
  %mul10 = mul i32 %mul9, %13
  %add11 = add i32 %mul10, %add
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %offset.0 = phi i32 [ %add11, %if.then7 ], [ %add, %if.end.if.end12_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call, i32 %offset.0
  %14 = tail call i32 @llvm.umin.i32(i32 %5, i32 %bytes_to_copy)
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %p_buffer, i32 %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cx231xx_is_vbi_buffer_done(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dma_q) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  %and = and i64 %1, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 12, i32 18
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %2 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lines_completed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp = icmp eq i32 %3, %cond
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %4 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_isoc_vbi_copy(ptr noundef %dev, ptr nocapture noundef readonly %urb) #6 align 64 {
entry:
  %bytes_parsed = alloca i32, align 4
  %bytes_used = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_parsed) #9
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.end3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %5, label %if.then4.print_err_status.exit_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then4.print_err_status.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

print_err_status.exit:                            ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.print_err_status.exit_crit_edge
  %errmsg.0.i = phi ptr [ @.str.20, %if.then4.print_err_status.exit_crit_edge ], [ @.str.28, %sw.bb7.i ], [ @.str.27, %sw.bb6.i ], [ @.str.26, %sw.bb5.i ], [ @.str.25, %sw.bb4.i ], [ @.str.24, %sw.bb3.i ], [ @.str.23, %sw.bb2.i ], [ @.str.22, %sw.bb1.i ], [ @.str.21, %sw.bb.i ]
  %dev8.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev8.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef %5, ptr noundef nonnull %errmsg.0.i) #13
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %cmp7 = icmp eq i32 %10, -2
  br i1 %cmp7, label %print_err_status.exit.cleanup_crit_edge, label %print_err_status.exit.if.end10_crit_edge

print_err_status.exit.if.end10_crit_edge:         ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

print_err_status.exit.cleanup_crit_edge:          ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %print_err_status.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not = icmp eq i32 %14, 0
  br i1 %cmp11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %15 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bytes_parsed, align 4
  %is_partial_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_partial_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %last_sav = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %last_sav to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %last_sav, align 1
  br label %if.end15

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %partial_buf = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 4
  %call = call zeroext i8 @cx231xx_find_boundary_SAV_EAV(ptr noundef %12, ptr noundef %partial_buf, ptr noundef nonnull %bytes_parsed) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %sav_eav.0 = phi i8 [ %19, %if.then14 ], [ %call, %if.else ]
  %20 = and i8 %sav_eav.0, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %if.end15.if.end21_crit_edge, label %if.then19

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  %21 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes_parsed, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %22
  %sub = sub i32 %14, %22
  %23 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %20, label %if.then19.cx231xx_get_vbi_line.exit_crit_edge [
    i8 32, label %if.then19.if.end.i_crit_edge
    i8 96, label %sw.bb1.i83
  ]

if.then19.if.end.i_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then19.cx231xx_get_vbi_line.exit_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_get_vbi_line.exit

sw.bb1.i83:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb1.i83, %if.then19.if.end.i_crit_edge
  %current_field.0.ph.i = phi i32 [ 2, %sw.bb1.i83 ], [ 1, %if.then19.if.end.i_crit_edge ]
  %last_sav.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %last_sav.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %20, ptr %last_sav.i, align 1
  %call.i = call i32 @cx231xx_copy_vbi_line(ptr noundef nonnull %dev, ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %current_field.0.ph.i) #9
  br label %cx231xx_get_vbi_line.exit

cx231xx_get_vbi_line.exit:                        ; preds = %if.end.i, %if.then19.cx231xx_get_vbi_line.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.then19.cx231xx_get_vbi_line.exit_crit_edge ]
  %25 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes_parsed, align 4
  %add = add i32 %26, %retval.0.i
  store i32 %add, ptr %bytes_parsed, align 4
  br label %if.end21

if.end21:                                         ; preds = %cx231xx_get_vbi_line.exit, %if.end15.if.end21_crit_edge
  %27 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_partial_line, align 4
  %28 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytes_parsed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %29)
  %cmp2391 = icmp ugt i32 %14, %29
  br i1 %cmp2391, label %while.body.lr.ph, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end21
  %last_sav.i86 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %while.body.lr.ph
  %30 = phi i32 [ %29, %while.body.lr.ph ], [ %42, %if.end41.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_used) #9
  %31 = ptrtoint ptr %bytes_used to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bytes_used, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 %30
  %sub26 = sub i32 %14, %30
  %call27 = call zeroext i8 @cx231xx_find_next_SAV_EAV(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull %bytes_used) #9
  %32 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_used, align 4
  %34 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes_parsed, align 4
  %add28 = add i32 %35, %33
  store i32 %add28, ptr %bytes_parsed, align 4
  %36 = and i8 %call27, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool33.not = icmp ne i8 %36, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add28)
  %cmp34 = icmp ugt i32 %14, %add28
  %or.cond = select i1 %tobool33.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then36, label %while.body.if.end41_crit_edge

while.body.if.end41_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then36:                                        ; preds = %while.body
  %add.ptr37 = getelementptr i8, ptr %12, i32 %add28
  %sub38 = sub i32 %14, %add28
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %36, label %if.then36.cx231xx_get_vbi_line.exit90_crit_edge [
    i8 32, label %if.then36.if.end.i88_crit_edge
    i8 96, label %sw.bb1.i84
  ]

if.then36.if.end.i88_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i88

if.then36.cx231xx_get_vbi_line.exit90_crit_edge:  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_get_vbi_line.exit90

sw.bb1.i84:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i88

if.end.i88:                                       ; preds = %sw.bb1.i84, %if.then36.if.end.i88_crit_edge
  %current_field.0.ph.i85 = phi i32 [ 2, %sw.bb1.i84 ], [ 1, %if.then36.if.end.i88_crit_edge ]
  %38 = ptrtoint ptr %last_sav.i86 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %last_sav.i86, align 1
  %call.i87 = call i32 @cx231xx_copy_vbi_line(ptr noundef nonnull %dev, ptr noundef %1, ptr noundef %add.ptr37, i32 noundef %sub38, i32 noundef %current_field.0.ph.i85) #9
  br label %cx231xx_get_vbi_line.exit90

cx231xx_get_vbi_line.exit90:                      ; preds = %if.end.i88, %if.then36.cx231xx_get_vbi_line.exit90_crit_edge
  %retval.0.i89 = phi i32 [ %call.i87, %if.end.i88 ], [ 0, %if.then36.cx231xx_get_vbi_line.exit90_crit_edge ]
  %39 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytes_parsed, align 4
  %add40 = add i32 %40, %retval.0.i89
  store i32 %add40, ptr %bytes_parsed, align 4
  br label %if.end41

if.end41:                                         ; preds = %cx231xx_get_vbi_line.exit90, %while.body.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_used) #9
  %41 = ptrtoint ptr %bytes_parsed to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes_parsed, align 4
  %cmp23 = icmp ugt i32 %14, %42
  br i1 %cmp23, label %if.end41.while.body_crit_edge, label %if.end41.while.end_crit_edge

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %if.end21.while.end_crit_edge
  %partial_buf42 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 4
  %add.ptr44 = getelementptr i8, ptr %12, i32 %14
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i32 -4
  %43 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %add.ptr45, align 1
  %45 = ptrtoint ptr %partial_buf42 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %partial_buf42, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end10.cleanup_crit_edge, %print_err_status.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %print_err_status.exit.cleanup_crit_edge ], [ 1, %while.end ], [ 1, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_parsed) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx231xx_find_boundary_SAV_EAV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx231xx_find_next_SAV_EAV(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @cx231xx_vbi_qops, !1, !"cx231xx_vbi_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 240, i32 16}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 302, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cx231xx_uninit_vbi_isoc.__UNIQUE_ID_ddebug303, !3, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!8 = !{ptr @__ksymtab_cx231xx_uninit_vbi_isoc, !9, !"__ksymtab_cx231xx_uninit_vbi_isoc", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 335, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 351, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cx231xx_init_vbi_isoc.__UNIQUE_ID_ddebug304, !11, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 377, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cx231xx_init_vbi_isoc._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @cx231xx_init_vbi_isoc._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 385, i32 3}
!22 = !{ptr @cx231xx_init_vbi_isoc._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx231xx_init_vbi_isoc._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 410, i32 4}
!26 = !{ptr @cx231xx_init_vbi_isoc._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx231xx_init_vbi_isoc._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cx231xx_init_vbi_isoc.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 423, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 429, i32 4}
!33 = !{ptr @cx231xx_init_vbi_isoc._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx231xx_init_vbi_isoc._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_cx231xx_init_vbi_isoc, !36, !"__ksymtab_cx231xx_init_vbi_isoc", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 440, i32 1}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 30, i32 17}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 34, i32 12}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 37, i32 12}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 40, i32 12}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 43, i32 12}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 46, i32 12}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 49, i32 12}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 52, i32 12}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 55, i32 12}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 59, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @print_err_status._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @print_err_status._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 62, i32 3}
!65 = !{ptr @print_err_status._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @print_err_status._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 274, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @cx231xx_irq_vbi_callback._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @cx231xx_irq_vbi_callback._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 289, i32 3}
!74 = !{ptr @cx231xx_irq_vbi_callback._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cx231xx_irq_vbi_callback._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/cx231xx/cx231xx-vbi.c", i32 572, i32 3}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @get_next_vbi_buf._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @get_next_vbi_buf._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2148801028, i64 2148801033, i64 2148801046, i64 2148801090, i64 2148801124, i64 2148801145}
!92 = !{i64 642394}
!93 = !{!"branch_weights", i32 1, i32 2000}
