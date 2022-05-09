; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-ts.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+saa7134_ts_buffer_init\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_ts_buffer_init\09\09\09\09"
module asm "\09.long\09__crc_saa7134_ts_buffer_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_ts_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_ts_buffer_init\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_ts_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7134_ts_buffer_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_ts_buffer_prepare\09\09\09\09"
module asm "\09.long\09__crc_saa7134_ts_buffer_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_ts_buffer_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_ts_buffer_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_ts_buffer_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7134_ts_queue_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_ts_queue_setup\09\09\09\09"
module asm "\09.long\09__crc_saa7134_ts_queue_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_ts_queue_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_ts_queue_setup\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_ts_queue_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7134_ts_start_streaming\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_ts_start_streaming\09\09\09\09"
module asm "\09.long\09__crc_saa7134_ts_start_streaming\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_ts_start_streaming:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_ts_start_streaming\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_ts_start_streaming:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7134_ts_stop_streaming\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_ts_stop_streaming\09\09\09\09"
module asm "\09.long\09__crc_saa7134_ts_stop_streaming\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_ts_stop_streaming:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_ts_stop_streaming\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_ts_stop_streaming:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7134_ts_qops\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_ts_qops\09\09\09\09"
module asm "\09.long\09__crc_saa7134_ts_qops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_ts_qops:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_ts_qops\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_ts_qops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.saa7134_buf = type { %struct.vb2_v4l2_buffer, i32, ptr, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.127, i32 }
%union.anon.127 = type { i32 }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.131 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.saa7134_format = type { i32, i32, i32, i32, i32, i8 }

@__param_str_ts_debug = internal constant [17 x i8] c"saa7134.ts_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ts_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ts_debug = internal constant %struct.kernel_param { ptr @__param_str_ts_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ts_debug } }, section "__param", align 4
@__UNIQUE_ID_ts_debugtype387 = internal constant [30 x i8] c"saa7134.parmtype=ts_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ts_debug388 = internal constant [49 x i8] c"saa7134.parm=ts_debug:enable debug messages [ts]\00", section ".modinfo", align 1
@__kstrtab_saa7134_ts_buffer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_ts_buffer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_ts_buffer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_ts_buffer_init to i32), ptr @__kstrtab_saa7134_ts_buffer_init, ptr @__kstrtabns_saa7134_ts_buffer_init }, section "___ksymtab_gpl+saa7134_ts_buffer_init", align 4
@saa7134_ts_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017saa7134: ts: buffer_prepare [%p]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7134_ts_buffer_prepare\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/saa7134/saa7134-ts.c\00", [57 x i8] zeroinitializer }, align 32
@saa7134_ts_buffer_prepare._entry_ptr = internal global ptr @saa7134_ts_buffer_prepare._entry, section ".printk_index", align 4
@__kstrtab_saa7134_ts_buffer_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_ts_buffer_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_ts_buffer_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_ts_buffer_prepare to i32), ptr @__kstrtab_saa7134_ts_buffer_prepare, ptr @__kstrtabns_saa7134_ts_buffer_prepare }, section "___ksymtab_gpl+saa7134_ts_buffer_prepare", align 4
@__kstrtab_saa7134_ts_queue_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_ts_queue_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_ts_queue_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_ts_queue_setup to i32), ptr @__kstrtab_saa7134_ts_queue_setup, ptr @__kstrtabns_saa7134_ts_queue_setup }, section "___ksymtab_gpl+saa7134_ts_queue_setup", align 4
@__kstrtab_saa7134_ts_start_streaming = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_ts_start_streaming = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_ts_start_streaming = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_ts_start_streaming to i32), ptr @__kstrtab_saa7134_ts_start_streaming, ptr @__kstrtabns_saa7134_ts_start_streaming }, section "___ksymtab_gpl+saa7134_ts_start_streaming", align 4
@__kstrtab_saa7134_ts_stop_streaming = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_ts_stop_streaming = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_ts_stop_streaming = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_ts_stop_streaming to i32), ptr @__kstrtab_saa7134_ts_stop_streaming, ptr @__kstrtabns_saa7134_ts_stop_streaming }, section "___ksymtab_gpl+saa7134_ts_stop_streaming", align 4
@saa7134_ts_qops = dso_local global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @saa7134_ts_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @saa7134_ts_buffer_init, ptr @saa7134_ts_buffer_prepare, ptr null, ptr null, ptr null, ptr @saa7134_ts_stop_streaming, ptr @saa7134_vb2_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_saa7134_ts_qops = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_ts_qops = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_ts_qops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_ts_qops to i32), ptr @__kstrtab_saa7134_ts_qops, ptr @__kstrtabns_saa7134_ts_qops }, section "___ksymtab_gpl+saa7134_ts_qops", align 4
@__param_str_tsbufs = internal constant [15 x i8] c"saa7134.tsbufs\00", align 1
@tsbufs = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_tsbufs = internal constant %struct.kernel_param { ptr @__param_str_tsbufs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @tsbufs } }, section "__param", align 4
@__UNIQUE_ID_tsbufstype389 = internal constant [28 x i8] c"saa7134.parmtype=tsbufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tsbufs390 = internal constant [71 x i8] c"saa7134.parm=tsbufs:number of ts buffers for read/write IO, range 2-32\00", section ".modinfo", align 1
@__param_str_ts_nr_packets = internal constant [22 x i8] c"saa7134.ts_nr_packets\00", align 1
@ts_nr_packets = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_ts_nr_packets = internal constant %struct.kernel_param { ptr @__param_str_ts_nr_packets, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @ts_nr_packets } }, section "__param", align 4
@__UNIQUE_ID_ts_nr_packetstype391 = internal constant [35 x i8] c"saa7134.parmtype=ts_nr_packets:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ts_nr_packets392 = internal constant [64 x i8] c"saa7134.parm=ts_nr_packets:size of a ts buffers (in ts packets)\00", section ".modinfo", align 1
@saa7134_ts_init1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&dev->ts_q.timeout)\00", [43 x i8] zeroinitializer }, align 32
@saa7134_ts_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017saa7134: ts: TS stop\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7134_ts_stop\00", [16 x i8] zeroinitializer }, align 32
@saa7134_ts_stop._entry_ptr = internal global ptr @saa7134_ts_stop._entry, section ".printk_index", align 4
@saa7134_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7134_board], align 4
@saa7134_ts_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017saa7134: ts: TS start\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7134_ts_start\00", [47 x i8] zeroinitializer }, align 32
@saa7134_ts_start._entry_ptr = internal global ptr @saa7134_ts_start._entry, section ".printk_index", align 4
@buffer_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017saa7134: ts: buffer_activate [%p]\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer_activate\00", [16 x i8] zeroinitializer }, align 32
@buffer_activate._entry_ptr = internal global ptr @buffer_activate._entry, section ".printk_index", align 4
@buffer_activate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017saa7134: ts: - [top]     buf=%p next=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@buffer_activate._entry_ptr.12 = internal global ptr @buffer_activate._entry.10, section ".printk_index", align 4
@buffer_activate._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017saa7134: ts: - [bottom]  buf=%p next=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@buffer_activate._entry_ptr.15 = internal global ptr @buffer_activate._entry.13, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"ts_debug\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 21, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 89, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"saa7134_ts_qops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 164, i32 16 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"tsbufs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 178, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"ts_nr_packets\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 182, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 217, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 232, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 254, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 36, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 45, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private constant [42 x i8] c"../drivers/media/pci/saa7134/saa7134-ts.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 50, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1163, i32 7 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_ts_debug388, ptr @__UNIQUE_ID_ts_debugtype387, ptr @__UNIQUE_ID_ts_nr_packets392, ptr @__UNIQUE_ID_ts_nr_packetstype391, ptr @__UNIQUE_ID_tsbufs390, ptr @__UNIQUE_ID_tsbufstype389, ptr @__ksymtab_saa7134_ts_buffer_init, ptr @__ksymtab_saa7134_ts_buffer_prepare, ptr @__ksymtab_saa7134_ts_qops, ptr @__ksymtab_saa7134_ts_queue_setup, ptr @__ksymtab_saa7134_ts_start_streaming, ptr @__ksymtab_saa7134_ts_stop_streaming, ptr @__param_ts_debug, ptr @__param_ts_nr_packets, ptr @__param_tsbufs, ptr @buffer_activate._entry, ptr @buffer_activate._entry.10, ptr @buffer_activate._entry.13, ptr @buffer_activate._entry_ptr, ptr @buffer_activate._entry_ptr.12, ptr @buffer_activate._entry_ptr.15, ptr @saa7134_ts_buffer_prepare._entry, ptr @saa7134_ts_buffer_prepare._entry_ptr, ptr @saa7134_ts_start._entry, ptr @saa7134_ts_start._entry_ptr, ptr @saa7134_ts_stop._entry, ptr @saa7134_ts_stop._entry_ptr, ptr @ts_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @saa7134_ts_qops, ptr @tsbufs, ptr @ts_nr_packets, ptr @saa7134_ts_init1.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_ts_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_ts_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsbufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_nr_packets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_ts_init1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_ts_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_ts_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_activate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_activate._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @saa7134_ts_buffer_init(ptr nocapture noundef %vb2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb2, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %curr = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %curr, align 4
  %activate = getelementptr inbounds %struct.saa7134_buf, ptr %vb2, i32 0, i32 2
  %5 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @buffer_activate, ptr %activate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_activate(ptr noundef %dev, ptr noundef %buf, ptr noundef %next) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ts_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %buf) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %top_seen = getelementptr inbounds %struct.saa7134_buf, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %top_seen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %top_seen, align 8
  %ts_started = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 53
  %2 = ptrtoint ptr %ts_started to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then4, label %do.end2.if.end5_crit_edge

do.end2.if.end5_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  %ts_field = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %ts_field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %ts_field, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end2.if.end5_crit_edge
  %cmp = icmp eq ptr %next, null
  %spec.select = select i1 %cmp, ptr %buf, ptr %next
  %ts_field8 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 52
  %5 = ptrtoint ptr %ts_field8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts_field8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp9 = icmp eq i32 %6, 2
  %7 = load i32, ptr @ts_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %cmp9, label %do.body11, label %do.body29

do.body11:                                        ; preds = %if.end5
  br i1 %tobool12.not, label %do.body11.do.body20_crit_edge, label %do.end15

do.body11.do.body20_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

do.end15:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %buf, ptr noundef %spec.select) #8
  br label %do.body20

do.body20:                                        ; preds = %do.end15, %do.body11.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %call22 = tail call i32 @saa7134_buffer_base(ptr noundef %buf) #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %call22)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %call25 = tail call i32 @saa7134_buffer_base(ptr noundef %spec.select) #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %call25)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr27 = getelementptr i32, ptr %13, i32 149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %11) #5, !srcloc !83
  br label %if.end49

do.body29:                                        ; preds = %if.end5
  br i1 %tobool12.not, label %do.body29.do.body38_crit_edge, label %do.end33

do.body29.do.body38_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

do.end33:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %buf, ptr noundef %spec.select) #8
  br label %do.body38

do.body38:                                        ; preds = %do.end33, %do.body29.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %call40 = tail call i32 @saa7134_buffer_base(ptr noundef %spec.select) #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %call40)
  %lmmio41 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %lmmio41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio41, align 4
  %add.ptr42 = getelementptr i32, ptr %16, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %14) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %call45 = tail call i32 @saa7134_buffer_base(ptr noundef %buf) #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %call45)
  %18 = ptrtoint ptr %lmmio41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio41, align 4
  %add.ptr47 = getelementptr i32, ptr %19, i32 149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %17) #5, !srcloc !83
  br label %if.end49

if.end49:                                         ; preds = %do.body38, %do.body20
  %storemerge = phi i32 [ 2, %do.body38 ], [ 3, %do.body20 ]
  %20 = ptrtoint ptr %ts_field8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %ts_field8, align 8
  %call50 = tail call i32 @saa7134_set_dmabits(ptr noundef %dev) #5
  %timeout = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 100
  %call52 = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #5
  %22 = ptrtoint ptr %ts_started to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ts_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool54.not = icmp eq i32 %23, 0
  br i1 %tobool54.not, label %if.then55, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call i32 @saa7134_ts_start(ptr noundef %dev)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end49.if.end57_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_buffer_prepare(ptr noundef %vb2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb2, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb2, i32 noundef 0) #5
  %6 = load i32, ptr @ts_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %vb2) #8
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 50
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ts, align 4
  %mul = mul i32 %8, 188
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp eq i32 %mul, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %do.end9
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp39 = icmp ult i32 %12, %mul
  br i1 %cmp39, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i37

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i37:                                      ; preds = %vb2_plane_size.exit.thread
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp1.i = icmp ult i32 %14, %mul
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i37.if.end42.i_crit_edge

if.then.i37.if.end42.i_crit_edge:                 ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i37
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !87

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i37.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %16, %if.then38.i ], [ %mul, %if.then.i37.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %field = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 43
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 4
  %field13 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb2, i32 0, i32 2
  %20 = ptrtoint ptr %field13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field13, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 15
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nents, align 4
  %call14 = tail call i32 @saa7134_buffer_startpage(ptr noundef %vb2) #5
  %call15 = tail call i32 @saa7134_pgtable_build(ptr noundef %22, ptr noundef %pt, ptr noundef %24, i32 noundef %26, i32 noundef %call14) #5
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_pgtable_build(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_buffer_startpage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture readnone %alloc_devs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts, align 4
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr_bufs = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 50, i32 1
  %8 = ptrtoint ptr %nr_bufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_bufs, align 4
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mul = mul i32 %5, 188
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbuffers, align 4
  %call = tail call i32 @saa7134_buffer_count(i32 noundef %mul, i32 noundef %12) #5
  %13 = tail call i32 @llvm.umax.i32(i32 %call, i32 3)
  %14 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nbuffers, align 4
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nplanes, align 4
  %16 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_buffer_count(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_start_streaming(ptr nocapture noundef readonly %vq, i32 %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_buffers.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 40, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %fmt = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 8
  %planar = getelementptr inbounds %struct.saa7134_format, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %planar to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %planar, align 4
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %cmp.not36 = icmp eq ptr %11, %queue
  br i1 %cmp.not36, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %11, %if.then.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in37, i32 -744
  %12 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in37, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in37, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #5
  %cmp.not = icmp eq ptr %.pn, %queue
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %curr = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curr, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.then17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %22, i32 noundef 3) #5
  %23 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %curr, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %seq_nr = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %seq_nr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %seq_nr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then17, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -16, %if.then17 ], [ -16, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_ts_stop_streaming(ptr nocapture noundef readonly %vq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr @ts_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.do.end2.i_crit_edge, label %do.end.i

entry.do.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %entry.do.end2.i_crit_edge
  %ts_started.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 53
  %5 = ptrtoint ptr %ts_started.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts_started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %do.end2.i.saa7134_ts_stop.exit_crit_edge, label %if.end5.i

do.end2.i.saa7134_ts_stop.exit_crit_edge:         ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7134_ts_stop.exit

if.end5.i:                                        ; preds = %do.end2.i
  %board.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board.i, align 4
  %ts_type.i = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %8, i32 16
  %9 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ts_type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end5.i.saa7134_ts_stop.exit_crit_edge [
    i32 0, label %do.body6.i
    i32 1, label %do.body10.i
  ]

if.end5.i.saa7134_ts_stop.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7134_ts_stop.exit

do.body6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %bmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 108) #5, !srcloc !89
  br label %return.sink.split.i

do.body10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %bmmio12.i = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %14 = ptrtoint ptr %bmmio12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio12.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %15, i32 418
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 64) #5, !srcloc !89
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %do.body10.i, %do.body6.i
  %16 = ptrtoint ptr %ts_started.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ts_started.i, align 4
  br label %saa7134_ts_stop.exit

saa7134_ts_stop.exit:                             ; preds = %return.sink.split.i, %if.end5.i.saa7134_ts_stop.exit_crit_edge, %do.end2.i.saa7134_ts_stop.exit_crit_edge
  tail call void @saa7134_stop_streaming(ptr noundef %3, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_stop(ptr nocapture noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ts_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %ts_started = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 53
  %1 = ptrtoint ptr %ts_started to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ts_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %do.end2.return_crit_edge, label %if.end5

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end5:                                          ; preds = %do.end2
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board, align 4
  %ts_type = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %4, i32 16
  %5 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %6, label %if.end5.return_crit_edge [
    i32 0, label %do.body6
    i32 1, label %do.body10
  ]

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 108) #5, !srcloc !89
  br label %return.sink.split

do.body10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %bmmio12 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %bmmio12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio12, align 8
  %add.ptr13 = getelementptr i8, ptr %11, i32 418
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 64) #5, !srcloc !89
  br label %return.sink.split

return.sink.split:                                ; preds = %do.body10, %do.body6
  %12 = ptrtoint ptr %ts_started to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ts_started, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end5.return_crit_edge, %do.end2.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_stop_streaming(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_vb2_buffer_queue(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_init_hw(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 108) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 417
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 -69) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 50
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts, align 4
  %8 = trunc i32 %7 to i8
  %conv = add i8 %8, -1
  %9 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bmmio, align 8
  %add.ptr12 = getelementptr i8, ptr %10, i32 420
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %conv) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ts, align 4
  %sub17 = add i32 %12, 65535
  %13 = lshr i32 %sub17, 8
  %conv19 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio, align 8
  %add.ptr21 = getelementptr i8, ptr %15, i32 421
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %conv19) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ts, align 4
  %sub26 = add i32 %17, 4194303
  %18 = lshr i32 %sub26, 16
  %19 = trunc i32 %18 to i8
  %conv29 = and i8 %19, 63
  %20 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %21, i32 422
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %conv29) #5, !srcloc !89
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_init1(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tsbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %entry.if.end3.sink.split_crit_edge, label %if.end

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp1 = icmp ugt i32 %0, 32
  br i1 %cmp1, label %if.end.if.end3.sink.split_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.if.end3.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.end.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end3.sink.split_crit_edge ], [ 32, %if.end.if.end3.sink.split_crit_edge ]
  store i32 %.sink, ptr @tsbufs, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.end.if.end3_crit_edge
  %1 = load i32, ptr @ts_nr_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp4 = icmp ult i32 %1, 4
  br i1 %cmp4, label %if.end3.if.end9.sink.split_crit_edge, label %if.end6

if.end3.if.end9.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.sink.split

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %1)
  %cmp7 = icmp ugt i32 %1, 312
  br i1 %cmp7, label %if.end6.if.end9.sink.split_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.if.end9.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.end6.if.end9.sink.split_crit_edge, %if.end3.if.end9.sink.split_crit_edge
  %.sink29 = phi i32 [ 4, %if.end3.if.end9.sink.split_crit_edge ], [ 312, %if.end6.if.end9.sink.split_crit_edge ]
  store i32 %.sink29, ptr @ts_nr_packets, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.end6.if.end9_crit_edge
  %2 = load i32, ptr @tsbufs, align 4
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 50
  %nr_bufs = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %nr_bufs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nr_bufs, align 4
  %4 = load i32, ptr @ts_nr_packets, align 4
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ts, align 4
  %ts_q = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51
  %queue = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 2
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i, align 4
  %timeout = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 3
  tail call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @saa7134_buffer_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @saa7134_ts_init1.__key) #5
  %8 = ptrtoint ptr %ts_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %ts_q, align 4
  %need_two = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 4
  %9 = ptrtoint ptr %need_two to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %need_two, align 4
  %ts_started = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 53
  %10 = ptrtoint ptr %ts_started to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ts_started, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 6
  %call = tail call i32 @saa7134_pgtable_alloc(ptr noundef %12, ptr noundef %pt) #5
  %call16 = tail call i32 @saa7134_ts_init_hw(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_buffer_timeout(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_pgtable_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_start(ptr nocapture noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ts_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %ts_started = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 53
  %1 = ptrtoint ptr %ts_started to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ts_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %do.body31, label %do.end14, !prof !87

do.end14:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 256, i32 noundef 9, ptr noundef null) #5
  br label %return

do.body31:                                        ; preds = %do.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 50
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ts, align 4
  %5 = trunc i32 %4 to i8
  %conv = add i8 %5, -1
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 420
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts, align 4
  %sub39 = add i32 %9, 65535
  %10 = lshr i32 %sub39, 8
  %conv41 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %12, i32 421
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 %conv41) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ts, align 4
  %sub49 = add i32 %14, 4194303
  %15 = lshr i32 %sub49, 16
  %16 = trunc i32 %15 to i8
  %conv52 = and i8 %16, 63
  %17 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio, align 8
  %add.ptr54 = getelementptr i8, ptr %18, i32 422
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 %conv52) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr58 = getelementptr i32, ptr %20, i32 150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -1140850688) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %dma = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 6, i32 2
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma, align 4
  %shr62 = lshr i32 %22, 12
  %or63 = or i32 %shr62, 9437184
  %23 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr65 = getelementptr i32, ptr %25, i32 151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %23) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio, align 8
  %add.ptr70 = getelementptr i8, ptr %27, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 0) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add.ptr75 = getelementptr i8, ptr %29, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr75, i8 3) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add.ptr80 = getelementptr i8, ptr %31, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 0) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmmio, align 8
  %add.ptr85 = getelementptr i8, ptr %33, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr85, i8 1) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add.ptr90 = getelementptr i8, ptr %35, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr90, i8 0) #5, !srcloc !89
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %36 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %board, align 4
  %ts_type = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %37, i32 16
  %38 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ts_type, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %39, label %do.body31.sw.epilog_crit_edge [
    i32 0, label %do.body91
    i32 1, label %do.body106
  ]

do.body31.sw.epilog_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body91:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bmmio, align 8
  %add.ptr95 = getelementptr i8, ptr %42, i32 418
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 64) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %board, align 4
  %ts_force_val = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %44, i32 18
  %45 = ptrtoint ptr %ts_force_val to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %ts_force_val, align 4
  %46 = lshr i8 %bf.load, 3
  %47 = and i8 %46, 16
  %48 = or i8 %47, -20
  %49 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bmmio, align 8
  %add.ptr104 = getelementptr i8, ptr %50, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104, i8 %48) #5, !srcloc !89
  br label %sw.epilog

do.body106:                                       ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bmmio, align 8
  %add.ptr110 = getelementptr i8, ptr %52, i32 418
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr110, i8 -40) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %board, align 4
  %ts_force_val116 = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %54, i32 18
  %55 = ptrtoint ptr %ts_force_val116 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load117 = load i8, ptr %ts_force_val116, align 4
  %56 = lshr i8 %bf.load117, 3
  %57 = and i8 %56, 16
  %58 = or i8 %57, 108
  %59 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bmmio, align 8
  %add.ptr124 = getelementptr i8, ptr %60, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr124, i8 %58) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bmmio, align 8
  %add.ptr129 = getelementptr i8, ptr %62, i32 417
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr129, i8 -68) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bmmio, align 8
  %add.ptr134 = getelementptr i8, ptr %64, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr134, i8 2) #5, !srcloc !89
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body106, %do.body91, %do.body31.sw.epilog_crit_edge
  %65 = ptrtoint ptr %ts_started to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %ts_started, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %do.end14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ts_fini(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 6
  tail call void @saa7134_pgtable_free(ptr noundef %1, ptr noundef %pt) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_pgtable_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_irq_ts_done(ptr noundef %dev, i32 noundef %status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %slock) #5
  %ts_q = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51
  %curr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %ts_field = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %ts_field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_field, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  %and4 = and i32 %status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5.not.not = icmp eq i32 %and4, 0
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  br i1 %cmp5.not.not, label %if.then1.if.end8_crit_edge, label %if.then1.done_crit_edge

if.then1.done_crit_edge:                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.else:                                          ; preds = %if.then
  br i1 %cmp5.not.not, label %if.else.done_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then1.if.end8_crit_edge
  tail call void @saa7134_buffer_finish(ptr noundef %dev, ptr noundef %ts_q, i32 noundef 5) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  tail call void @saa7134_buffer_next(ptr noundef %dev, ptr noundef %ts_q) #5
  br label %done

done:                                             ; preds = %if.end10, %if.else.done_crit_edge, %if.then1.done_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_buffer_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_buffer_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_buffer_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_set_dmabits(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__param_ts_debug, !1, !"__param_ts_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_ts_debugtype387, !1, !"__UNIQUE_ID_ts_debugtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ts_debug388, !4, !"__UNIQUE_ID_ts_debug388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 23, i32 1}
!5 = !{ptr @__ksymtab_saa7134_ts_buffer_init, !6, !"__ksymtab_saa7134_ts_buffer_init", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 78, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 89, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @saa7134_ts_buffer_prepare._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @saa7134_ts_buffer_prepare._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_saa7134_ts_buffer_prepare, !14, !"__ksymtab_saa7134_ts_buffer_prepare", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 104, i32 1}
!15 = !{ptr @__ksymtab_saa7134_ts_queue_setup, !16, !"__ksymtab_saa7134_ts_queue_setup", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 123, i32 1}
!17 = !{ptr @__ksymtab_saa7134_ts_start_streaming, !18, !"__ksymtab_saa7134_ts_start_streaming", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 152, i32 1}
!19 = !{ptr @__ksymtab_saa7134_ts_stop_streaming, !20, !"__ksymtab_saa7134_ts_stop_streaming", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 162, i32 1}
!21 = !{ptr @saa7134_ts_qops, !22, !"saa7134_ts_qops", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 164, i32 16}
!23 = !{ptr @__ksymtab_saa7134_ts_qops, !24, !"__ksymtab_saa7134_ts_qops", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 173, i32 1}
!25 = !{ptr @__param_tsbufs, !26, !"__param_tsbufs", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 179, i32 1}
!27 = !{ptr @__UNIQUE_ID_tsbufstype389, !26, !"__UNIQUE_ID_tsbufstype389", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_tsbufs390, !29, !"__UNIQUE_ID_tsbufs390", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 180, i32 1}
!30 = !{ptr @__param_ts_nr_packets, !31, !"__param_ts_nr_packets", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 183, i32 1}
!32 = !{ptr @__UNIQUE_ID_ts_nr_packetstype391, !31, !"__UNIQUE_ID_ts_nr_packetstype391", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_ts_nr_packets392, !34, !"__UNIQUE_ID_ts_nr_packets392", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 184, i32 1}
!35 = !{ptr @saa7134_ts_init1.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 217, i32 2}
!37 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 232, i32 2}
!40 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @saa7134_ts_stop._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @saa7134_ts_stop._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 254, i32 2}
!45 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @saa7134_ts_start._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @saa7134_ts_start._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ts_debug, !49, !"ts_debug", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 21, i32 21}
!50 = !{ptr @__param_str_ts_debug, !1, !"__param_str_ts_debug", i1 false, i1 false}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 36, i32 2}
!53 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @buffer_activate._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @buffer_activate._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 45, i32 3}
!58 = !{ptr @buffer_activate._entry.10, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @buffer_activate._entry_ptr.12, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 50, i32 3}
!62 = !{ptr @buffer_activate._entry.13, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @buffer_activate._entry_ptr.15, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__param_str_tsbufs, !26, !"__param_str_tsbufs", i1 false, i1 false}
!68 = !{ptr @tsbufs, !69, !"tsbufs", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 178, i32 21}
!70 = !{ptr @__param_str_ts_nr_packets, !31, !"__param_str_ts_nr_packets", i1 false, i1 false}
!71 = !{ptr @ts_nr_packets, !72, !"ts_nr_packets", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/saa7134/saa7134-ts.c", i32 182, i32 21}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2158799570}
!83 = !{i64 5018308}
!84 = !{i64 2158800213}
!85 = !{i64 2158802658}
!86 = !{i64 2158803302}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2158841308}
!89 = !{i64 5018111}
!90 = !{i64 2158841649}
!91 = !{i64 2158837036}
!92 = !{i64 2158837377}
!93 = !{i64 2158837732}
!94 = !{i64 2158838128}
!95 = !{i64 2158838554}
!96 = !{i64 2158839005}
!97 = !{i64 2158844187}
!98 = !{i64 2158844623}
!99 = !{i64 2158845086}
!100 = !{i64 2158845524}
!101 = !{i64 2158846202}
!102 = !{i64 2158846863}
!103 = !{i64 2158847204}
!104 = !{i64 2158847545}
!105 = !{i64 2158847886}
!106 = !{i64 2158848227}
!107 = !{i64 2158848568}
!108 = !{i64 2158849013}
!109 = !{i64 2158849406}
!110 = !{i64 2158849851}
!111 = !{i64 2158850244}
!112 = !{i64 2158850585}
