; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-input.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.saa7134_card_ir = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i8, %struct.timer_list, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.162, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.162 = type { ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.IR_i2c = type { ptr, ptr, ptr, i8, i32, %struct.delayed_work, [32 x i8], ptr, ptr, %struct.mutex, i32, i32 }

@__param_str_disable_ir = internal constant [19 x i8] c"saa7134.disable_ir\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disable_ir = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_ir = internal constant %struct.kernel_param { ptr @__param_str_disable_ir, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @disable_ir } }, section "__param", align 4
@__UNIQUE_ID_disable_irtype387 = internal constant [32 x i8] c"saa7134.parmtype=disable_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ir388 = internal constant [56 x i8] c"saa7134.parm=disable_ir:disable infrared remote support\00", section ".modinfo", align 1
@__param_str_ir_debug = internal constant [17 x i8] c"saa7134.ir_debug\00", align 1
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype389 = internal constant [30 x i8] c"saa7134.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug390 = internal constant [49 x i8] c"saa7134.parm=ir_debug:enable debug messages [IR]\00", section ".modinfo", align 1
@__param_str_pinnacle_remote = internal constant [24 x i8] c"saa7134.pinnacle_remote\00", align 1
@pinnacle_remote = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pinnacle_remote = internal constant %struct.kernel_param { ptr @__param_str_pinnacle_remote, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @pinnacle_remote } }, section "__param", align 4
@__UNIQUE_ID_pinnacle_remotetype391 = internal constant [37 x i8] c"saa7134.parmtype=pinnacle_remote:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pinnacle_remote392 = internal constant [94 x i8] c"saa7134.parm=pinnacle_remote:Specify Pinnacle PCTV remote: 0=coloured, 1=grey (defaults to 0)\00", section ".modinfo", align 1
@saa7134_ir_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ir->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-flyvideo\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-cinergy\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rc-eztv\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-pixelview\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-avermedia\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-avermedia-m135a\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc-avermedia-m733a-rm-k6\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-avermedia-a16d\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-manli\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-behold-columbus\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-pctv-sedna\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-gotview7135\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-videomate-tv-pvr\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-proteus-2309\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-flydvb\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-asus-pc39\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-asus-ps3-100\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-encore-enltv\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc-encore-enltv-fm53\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-genius-tvgo-a11mce\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rc-real-audio-220-32-keys\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc-kworld-plus-tv-analog\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-videomate-s350\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-winfast\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-videomate-k100\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-leadtek-y04g0051\00", [44 x i8] zeroinitializer }, align 32
@saa7134_input_init1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013saa7134: Oops: IR config error [card=%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7134_input_init1\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/saa7134/saa7134-input.c\00", [54 x i8] zeroinitializer }, align 32
@saa7134_input_init1._entry_ptr = internal global ptr @saa7134_input_init1._entry, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@saa7134_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7134_board], align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7134\00", [24 x i8] zeroinitializer }, align 32
@__const.saa7134_probe_i2c_ir.msg_msi = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 80, i16 1, i16 0, [2 x i8] zeroinitializer, ptr null }, align 4
@saa7134_probe_i2c_ir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.30, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017saa7134: input: IR has been disabled, not probing for i2c remote\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7134_probe_i2c_ir\00", [43 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry_ptr = internal global ptr @saa7134_probe_i2c_ir._entry, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_video\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Pinnacle PCTV\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-pinnacle-color\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-pinnacle-grey\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Purple TV\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-purpletv\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MSI TV@nywhere Plus\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rc-msi-tvanywhere-plus\00", [41 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.30, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017saa7134: input: probe 0x%02x @ %s: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry_ptr.45 = internal global ptr @saa7134_probe_i2c_ir._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SnaZio* TVPVR PRO\00", [46 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.30, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry_ptr.50 = internal global ptr @saa7134_probe_i2c_ir._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kworld PC150-U\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-kworld-pc150u\00", [47 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.30, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry_ptr.54 = internal global ptr @saa7134_probe_i2c_ir._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BeholdTV\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-behold\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FlyDVB Trio\00", [20 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.34, ptr @.str.30, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017saa7134: input: No I2C IR support for board %x\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7134_probe_i2c_ir._entry_ptr.60 = internal global ptr @saa7134_probe_i2c_ir._entry.58, section ".printk_index", align 4
@build_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.30, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017saa7134: input: build_key gpio=0x%x mask=0x%x data=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"build_key\00", [22 x i8] zeroinitializer }, align 32
@build_key._entry_ptr = internal global ptr @build_key._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_key_pinnacle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.30, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017saa7134: ir %s: read error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_key_pinnacle\00", [47 x i8] zeroinitializer }, align 32
@get_key_pinnacle._entry_ptr = internal global ptr @get_key_pinnacle._entry, section ".printk_index", align 4
@get_key_pinnacle._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.30, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017saa7134: ir %s: Pinnacle PCTV key %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@get_key_pinnacle._entry_ptr.67 = internal global ptr @get_key_pinnacle._entry.65, section ".printk_index", align 4
@get_key_purpletv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.68, ptr @.str.30, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_key_purpletv\00", [47 x i8] zeroinitializer }, align 32
@get_key_purpletv._entry_ptr = internal global ptr @get_key_purpletv._entry, section ".printk_index", align 4
@get_key_msi_tvanywhere_plus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.30, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\017saa7134: ir %s: get_key_msi_tvanywhere_plus: ir->c->adapter->algo_data is NULL!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get_key_msi_tvanywhere_plus\00", [36 x i8] zeroinitializer }, align 32
@get_key_msi_tvanywhere_plus._entry_ptr = internal global ptr @get_key_msi_tvanywhere_plus._entry, section ".printk_index", align 4
@get_key_msi_tvanywhere_plus._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.70, ptr @.str.30, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_key_msi_tvanywhere_plus._entry_ptr.72 = internal global ptr @get_key_msi_tvanywhere_plus._entry.71, section ".printk_index", align 4
@get_key_msi_tvanywhere_plus._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.30, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017saa7134: input: get_key_msi_tvanywhere_plus: Key = 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@get_key_msi_tvanywhere_plus._entry_ptr.75 = internal global ptr @get_key_msi_tvanywhere_plus._entry.73, section ".printk_index", align 4
@get_key_kworld_pc150u._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.30, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017saa7134: ir %s: get_key_kworld_pc150u: ir->c->adapter->algo_data is NULL!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_key_kworld_pc150u\00", [42 x i8] zeroinitializer }, align 32
@get_key_kworld_pc150u._entry_ptr = internal global ptr @get_key_kworld_pc150u._entry, section ".printk_index", align 4
@get_key_kworld_pc150u._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.77, ptr @.str.30, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_key_kworld_pc150u._entry_ptr.79 = internal global ptr @get_key_kworld_pc150u._entry.78, section ".printk_index", align 4
@get_key_kworld_pc150u._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.77, ptr @.str.30, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017saa7134: input: get_key_kworld_pc150u: Key = 0x%02X\0A\00", [41 x i8] zeroinitializer }, align 32
@get_key_kworld_pc150u._entry_ptr.82 = internal global ptr @get_key_kworld_pc150u._entry.80, section ".printk_index", align 4
@get_key_beholdm6xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.83, ptr @.str.30, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_key_beholdm6xx\00", [45 x i8] zeroinitializer }, align 32
@get_key_beholdm6xx._entry_ptr = internal global ptr @get_key_beholdm6xx._entry, section ".printk_index", align 4
@get_key_flydvb_trio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.30, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017saa7134: ir %s: get_key_flydvb_trio: ir->c->adapter->algo_data is NULL!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_key_flydvb_trio\00", [44 x i8] zeroinitializer }, align 32
@get_key_flydvb_trio._entry_ptr = internal global ptr @get_key_flydvb_trio._entry, section ".printk_index", align 4
@get_key_flydvb_trio._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.30, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017saa7134: ir %s: send wake up byte to pic16C505 (IR chip)failed %dx\0A\00", [58 x i8] zeroinitializer }, align 32
@get_key_flydvb_trio._entry_ptr.88 = internal global ptr @get_key_flydvb_trio._entry.86, section ".printk_index", align 4
@get_key_flydvb_trio._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.85, ptr @.str.30, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_key_flydvb_trio._entry_ptr.90 = internal global ptr @get_key_flydvb_trio._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 22, i64 35, i64 45, i64 52, i64 56, i64 57, i64 59, i64 68, i64 85, i64 99, i64 102, i64 110, i64 137, i64 154, i64 157, i64 170, i64 194]
@__sancov_gen_cov_switch_values.91 = internal global [80 x i64] [i64 78, i64 32, i64 2, i64 3, i64 8, i64 11, i64 22, i64 27, i64 28, i64 30, i64 31, i64 32, i64 35, i64 40, i64 45, i64 48, i64 49, i64 52, i64 54, i64 55, i64 56, i64 57, i64 59, i64 62, i64 63, i64 65, i64 67, i64 68, i64 70, i64 71, i64 74, i64 78, i64 79, i64 85, i64 86, i64 97, i64 98, i64 99, i64 102, i64 106, i64 107, i64 110, i64 112, i64 116, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 132, i64 137, i64 146, i64 148, i64 149, i64 150, i64 153, i64 154, i64 155, i64 156, i64 157, i64 159, i64 160, i64 161, i64 169, i64 170, i64 172, i64 175, i64 176, i64 180, i64 183, i64 184, i64 190, i64 194, i64 195]
@__sancov_gen_cov_switch_values.92 = internal global [28 x i64] [i64 26, i64 32, i64 36, i64 77, i64 82, i64 84, i64 101, i64 104, i64 129, i64 130, i64 136, i64 142, i64 143, i64 144, i64 158, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 171, i64 178, i64 179, i64 189, i64 192, i64 196]
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"disable_ir\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 18, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 22, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"pinnacle_remote\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 26, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 485, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 528, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 535, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 541, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 548, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 566, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 573, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 580, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 595, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 609, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 635, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 641, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 647, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 656, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 662, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 676, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 683, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 690, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 698, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 705, i32 18 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 718, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 724, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 730, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 735, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 740, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 746, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 752, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 759, i32 18 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 767, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 789, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 813, i32 20 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 853, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 859, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 864, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 867, i32 30 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 871, i32 30 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 876, i32 25 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 878, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 882, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 884, i32 29 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 896, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 901, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 917, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 923, i32 25 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 925, i32 29 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 932, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 959, i32 25 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 961, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 973, i32 25 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 979, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 69, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 343, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 377, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 272, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 170, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 191, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 204, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 222, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 243, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 256, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 314, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 116, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 142, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private constant [45 x i8] c"../drivers/media/pci/saa7134/saa7134-input.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 148, i32 3 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_disable_ir388, ptr @__UNIQUE_ID_disable_irtype387, ptr @__UNIQUE_ID_ir_debug390, ptr @__UNIQUE_ID_ir_debugtype389, ptr @__UNIQUE_ID_pinnacle_remote392, ptr @__UNIQUE_ID_pinnacle_remotetype391, ptr @__param_disable_ir, ptr @__param_ir_debug, ptr @__param_pinnacle_remote, ptr @build_key._entry, ptr @build_key._entry_ptr, ptr @get_key_beholdm6xx._entry, ptr @get_key_beholdm6xx._entry_ptr, ptr @get_key_flydvb_trio._entry, ptr @get_key_flydvb_trio._entry.86, ptr @get_key_flydvb_trio._entry.89, ptr @get_key_flydvb_trio._entry_ptr, ptr @get_key_flydvb_trio._entry_ptr.88, ptr @get_key_flydvb_trio._entry_ptr.90, ptr @get_key_kworld_pc150u._entry, ptr @get_key_kworld_pc150u._entry.78, ptr @get_key_kworld_pc150u._entry.80, ptr @get_key_kworld_pc150u._entry_ptr, ptr @get_key_kworld_pc150u._entry_ptr.79, ptr @get_key_kworld_pc150u._entry_ptr.82, ptr @get_key_msi_tvanywhere_plus._entry, ptr @get_key_msi_tvanywhere_plus._entry.71, ptr @get_key_msi_tvanywhere_plus._entry.73, ptr @get_key_msi_tvanywhere_plus._entry_ptr, ptr @get_key_msi_tvanywhere_plus._entry_ptr.72, ptr @get_key_msi_tvanywhere_plus._entry_ptr.75, ptr @get_key_pinnacle._entry, ptr @get_key_pinnacle._entry.65, ptr @get_key_pinnacle._entry_ptr, ptr @get_key_pinnacle._entry_ptr.67, ptr @get_key_purpletv._entry, ptr @get_key_purpletv._entry_ptr, ptr @saa7134_input_init1._entry, ptr @saa7134_input_init1._entry_ptr, ptr @saa7134_probe_i2c_ir._entry, ptr @saa7134_probe_i2c_ir._entry.43, ptr @saa7134_probe_i2c_ir._entry.49, ptr @saa7134_probe_i2c_ir._entry.53, ptr @saa7134_probe_i2c_ir._entry.58, ptr @saa7134_probe_i2c_ir._entry_ptr, ptr @saa7134_probe_i2c_ir._entry_ptr.45, ptr @saa7134_probe_i2c_ir._entry_ptr.50, ptr @saa7134_probe_i2c_ir._entry_ptr.54, ptr @saa7134_probe_i2c_ir._entry_ptr.60, ptr @disable_ir, ptr @ir_debug, ptr @pinnacle_remote, ptr @saa7134_ir_open.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_remote to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_ir_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_input_init1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_probe_i2c_ir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_probe_i2c_ir._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_probe_i2c_ir._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_probe_i2c_ir._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_probe_i2c_ir._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pinnacle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_pinnacle._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_purpletv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_msi_tvanywhere_plus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_msi_tvanywhere_plus._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_msi_tvanywhere_plus._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_kworld_pc150u._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_kworld_pc150u._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_kworld_pc150u._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_beholdm6xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_flydvb_trio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_flydvb_trio._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_flydvb_trio._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_input_irq(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %running = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %polling = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %raw_decode = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %raw_decode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raw_decode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @build_key(ptr noundef nonnull %dev)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end5.if.else_crit_edge
  %raw_decode9 = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %raw_decode9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %raw_decode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.then11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %bmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 435
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  %13 = and i8 %12, 127
  %14 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %15, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %13) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %17, i32 435
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %19 = or i8 %18, -128
  %20 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %21, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 %19) #7, !srcloc !211
  %lmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i, align 4
  %add.ptr23.i = getelementptr i32, ptr %23, i32 109
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !214
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %mask_keydown.i = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %mask_keydown.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask_keydown.i, align 4
  %and27.i = and i32 %27, %25
  %28 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remote, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool.not.i = icmp eq i32 %and27.i, 0
  %call30.i = tail call i32 @ir_raw_event_store_edge(ptr noundef %31, i1 noundef zeroext %tobool.not.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_key(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %3)
  %cond = icmp eq i32 %3, 68
  br i1 %cond, label %do.body, label %entry.do.body21_crit_edge

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 437
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %7 = or i8 %6, -128
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 437
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %7) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 437
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %13 = and i8 %12, 127
  %14 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 437
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %13) #7, !srcloc !211
  br label %do.body21

do.body21:                                        ; preds = %do.body, %entry.do.body21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  tail call void @arm_heavy_mb() #7
  %bmmio26 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio26, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 435
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  %19 = and i8 %18, 127
  %20 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio26, align 8
  %add.ptr36 = getelementptr i8, ptr %21, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %19) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio26, align 8
  %add.ptr43 = getelementptr i8, ptr %23, i32 435
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  %25 = or i8 %24, -128
  %26 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio26, align 8
  %add.ptr52 = getelementptr i8, ptr %27, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 %25) #7, !srcloc !211
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr55 = getelementptr i32, ptr %29, i32 109
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #7, !srcloc !214
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  %polling = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %do.body21.if.end62_crit_edge, label %if.then

do.body21.if.end62_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then:                                          ; preds = %do.body21
  %last_gpio = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %last_gpio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_gpio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp = icmp eq i32 %35, %31
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %last_gpio to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %last_gpio, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end, %do.body21.if.end62_crit_edge
  %mask_keycode = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %mask_keycode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask_keycode, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end62
  %data.addr.0.i = phi i32 [ %31, %if.end62 ], [ %shr.i, %if.end4.i.do.body.i_crit_edge ]
  %mask.addr.0.i = phi i32 [ %38, %if.end62 ], [ %shr5.i, %if.end4.i.do.body.i_crit_edge ]
  %vbit.0.i = phi i32 [ 1, %if.end62 ], [ %vbit.1.i, %if.end4.i.do.body.i_crit_edge ]
  %value.0.i = phi i32 [ 0, %if.end62 ], [ %value.2.i, %if.end4.i.do.body.i_crit_edge ]
  %and.i = and i32 %mask.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end4.i_crit_edge, label %if.then.i

do.body.i.if.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = and i32 %data.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.i = select i1 %tobool2.not.i, i32 0, i32 %vbit.0.i
  %spec.select.i = or i32 %value.0.i, %or.i
  %shl.i = shl i32 %vbit.0.i, 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %do.body.i.if.end4.i_crit_edge
  %vbit.1.i = phi i32 [ %shl.i, %if.then.i ], [ %vbit.0.i, %do.body.i.if.end4.i_crit_edge ]
  %value.2.i = phi i32 [ %spec.select.i, %if.then.i ], [ %value.0.i, %do.body.i.if.end4.i_crit_edge ]
  %shr.i = lshr i32 %data.addr.0.i, 1
  %shr5.i = lshr i32 %mask.addr.0.i, 1
  %tobool6.not.i = icmp ult i32 %mask.addr.0.i, 2
  br i1 %tobool6.not.i, label %ir_extract_bits.exit, label %if.end4.i.do.body.i_crit_edge

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

ir_extract_bits.exit:                             ; preds = %if.end4.i
  %39 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool65.not = icmp eq i32 %39, 0
  br i1 %tobool65.not, label %ir_extract_bits.exit.do.end75_crit_edge, label %do.end69

ir_extract_bits.exit.do.end75_crit_edge:          ; preds = %ir_extract_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

do.end69:                                         ; preds = %ir_extract_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %31, i32 noundef %38, i32 noundef %value.2.i) #10
  br label %do.end75

do.end75:                                         ; preds = %do.end69, %ir_extract_bits.exit.do.end75_crit_edge
  %40 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %board, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 153, i32 %41)
  %cond131 = icmp eq i32 %41, 153
  br i1 %cond131, label %sw.bb77, label %sw.epilog86

sw.bb77:                                          ; preds = %do.end75
  %42 = ptrtoint ptr %mask_keycode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask_keycode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %value.2.i, i32 %43)
  %cmp79 = icmp eq i32 %value.2.i, %43
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rc_keyup(ptr noundef %45) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #9
  %conv84 = zext i32 %value.2.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %45, i32 noundef 0, i64 noundef %conv84, i8 noundef zeroext 0) #7
  br label %cleanup

sw.epilog86:                                      ; preds = %do.end75
  %46 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool88.not = icmp eq i32 %47, 0
  %mask_keydown108 = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %mask_keydown108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask_keydown108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool109.not = icmp eq i32 %49, 0
  %and112 = and i32 %49, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %cmp113.not = icmp eq i32 %and112, 0
  %or.cond2 = select i1 %tobool109.not, i1 true, i1 %cmp113.not
  br i1 %tobool88.not, label %if.else107, label %if.then89

if.then89:                                        ; preds = %sw.epilog86
  br i1 %or.cond2, label %lor.lhs.false, label %if.then89.if.then101_crit_edge

if.then89.if.then101_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

lor.lhs.false:                                    ; preds = %if.then89
  %mask_keyup = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %mask_keyup to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask_keyup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool95.not = icmp ne i32 %51, 0
  %and98 = and i32 %51, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %cmp99 = icmp eq i32 %and98, 0
  %or.cond1 = select i1 %tobool95.not, i1 %cmp99, i1 false
  br i1 %or.cond1, label %lor.lhs.false.if.then101_crit_edge, label %if.else104

lor.lhs.false.if.then101_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false.if.then101_crit_edge, %if.then89.if.then101_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %conv103 = zext i32 %value.2.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %53, i32 noundef 0, i64 noundef %conv103, i8 noundef zeroext 0) #7
  br label %cleanup

if.else104:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  tail call void @rc_keyup(ptr noundef %55) #7
  br label %cleanup

if.else107:                                       ; preds = %sw.epilog86
  br i1 %or.cond2, label %lor.lhs.false115, label %if.else107.if.then123_crit_edge

if.else107.if.then123_crit_edge:                  ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then123

lor.lhs.false115:                                 ; preds = %if.else107
  %mask_keyup116 = getelementptr inbounds %struct.saa7134_card_ir, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %mask_keyup116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask_keyup116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool117.not = icmp ne i32 %57, 0
  %and120 = and i32 %57, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %cmp121 = icmp eq i32 %and120, 0
  %or.cond3 = select i1 %tobool117.not, i1 %cmp121, i1 false
  br i1 %or.cond3, label %lor.lhs.false115.if.then123_crit_edge, label %lor.lhs.false115.cleanup_crit_edge

lor.lhs.false115.cleanup_crit_edge:               ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false115.if.then123_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then123

if.then123:                                       ; preds = %lor.lhs.false115.if.then123_crit_edge, %if.else107.if.then123_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %conv125 = zext i32 %value.2.i to i64
  tail call void @rc_keydown_notimeout(ptr noundef %59, i32 noundef 0, i64 noundef %conv125, i8 noundef zeroext 0) #7
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  tail call void @rc_keyup(ptr noundef %61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %lor.lhs.false115.cleanup_crit_edge, %if.else104, %if.then101, %if.else, %if.then81, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_ir_open(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %remote = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remote, align 4
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 22, label %entry.do.body_crit_edge
    i32 59, label %entry.do.body_crit_edge128
    i32 52, label %entry.do.body_crit_edge129
    i32 56, label %entry.do.body_crit_edge130
    i32 194, label %entry.do.body_crit_edge131
    i32 35, label %entry.do.body_crit_edge132
    i32 170, label %entry.do.body_crit_edge133
    i32 45, label %entry.do.body_crit_edge134
    i32 102, label %entry.do.body_crit_edge135
    i32 157, label %entry.do.body_crit_edge136
    i32 57, label %entry.do.body_crit_edge137
    i32 110, label %entry.do.body_crit_edge138
    i32 154, label %entry.do.body_crit_edge139
    i32 85, label %entry.do.body22_crit_edge
    i32 99, label %entry.do.body22_crit_edge140
    i32 137, label %do.body55
    i32 68, label %do.body88
  ]

entry.do.body22_crit_edge140:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

entry.do.body_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge128, %entry.do.body_crit_edge129, %entry.do.body_crit_edge130, %entry.do.body_crit_edge131, %entry.do.body_crit_edge132, %entry.do.body_crit_edge133, %entry.do.body_crit_edge134, %entry.do.body_crit_edge135, %entry.do.body_crit_edge136, %entry.do.body_crit_edge137, %entry.do.body_crit_edge138, %entry.do.body_crit_edge139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void @arm_heavy_mb() #7
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 432
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %10 = or i8 %9, 4
  %11 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio, align 8
  %add.ptr4 = getelementptr i8, ptr %12, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %10) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %14, i32 436
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  %16 = or i8 %15, 4
  %17 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %18, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %16) #7, !srcloc !211
  br label %sw.epilog

do.body22:                                        ; preds = %entry.do.body22_crit_edge, %entry.do.body22_crit_edge140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %bmmio27 = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %bmmio27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio27, align 8
  %add.ptr28 = getelementptr i8, ptr %20, i32 433
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %22 = or i8 %21, 1
  %23 = ptrtoint ptr %bmmio27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmmio27, align 8
  %add.ptr37 = getelementptr i8, ptr %24, i32 433
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %22) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %bmmio27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmmio27, align 8
  %add.ptr44 = getelementptr i8, ptr %26, i32 437
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %28 = or i8 %27, 1
  %29 = ptrtoint ptr %bmmio27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bmmio27, align 8
  %add.ptr53 = getelementptr i8, ptr %30, i32 437
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 %28) #7, !srcloc !211
  br label %sw.epilog

do.body55:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @arm_heavy_mb() #7
  %bmmio60 = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %bmmio60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmmio60, align 8
  %add.ptr61 = getelementptr i8, ptr %32, i32 433
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  %34 = or i8 %33, 1
  %35 = ptrtoint ptr %bmmio60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bmmio60, align 8
  %add.ptr70 = getelementptr i8, ptr %36, i32 433
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 %34) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %bmmio60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmmio60, align 8
  %add.ptr77 = getelementptr i8, ptr %38, i32 437
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr77) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  %40 = or i8 %39, 1
  %41 = ptrtoint ptr %bmmio60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bmmio60, align 8
  %add.ptr86 = getelementptr i8, ptr %42, i32 437
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 %40) #7, !srcloc !211
  br label %sw.epilog

do.body88:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  %bmmio93 = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %bmmio93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmmio93, align 8
  %add.ptr94 = getelementptr i8, ptr %44, i32 433
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr94) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %46 = or i8 %45, -128
  %47 = ptrtoint ptr %bmmio93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bmmio93, align 8
  %add.ptr103 = getelementptr i8, ptr %48, i32 433
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103, i8 %46) #7, !srcloc !211
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body88, %do.body55, %do.body22, %do.body, %entry.sw.epilog_crit_edge
  %running = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %running, align 4
  %polling = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.body104

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body104:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @saa7134_input_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @saa7134_ir_open.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %52, 100
  %expires = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #7
  br label %if.end

if.end:                                           ; preds = %do.body104, %sw.epilog.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7134_input_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -60
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call fastcc void @build_key(ptr noundef %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %polling = getelementptr i8, ptr %t, i32 -24
  %5 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %polling, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #7
  %add = add i32 %call2.i, %4
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_ir_close(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %remote = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remote, align 4
  %polling = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 8
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %running = getelementptr inbounds %struct.saa7134_card_ir, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %running, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_input_init1(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %has_remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %has_remote, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @disable_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %4, label %do.end [
    i32 3, label %if.end2.if.end37_crit_edge
    i32 2, label %if.end2.if.end37_crit_edge153
    i32 54, label %if.end2.if.end37_crit_edge154
    i32 74, label %if.end2.if.end37_crit_edge155
    i32 172, label %if.end2.if.end37_crit_edge156
    i32 8, label %if.end2.sw.bb3_crit_edge
    i32 11, label %if.end2.sw.bb3_crit_edge157
    i32 48, label %if.end2.sw.bb3_crit_edge158
    i32 30, label %if.end2.sw.bb4_crit_edge
    i32 31, label %if.end2.sw.bb4_crit_edge159
    i32 63, label %if.end2.sw.bb5_crit_edge
    i32 32, label %if.end2.sw.bb5_crit_edge160
    i32 22, label %if.end2.sw.bb6_crit_edge
    i32 59, label %if.end2.sw.bb6_crit_edge161
    i32 52, label %if.end2.sw.bb6_crit_edge162
    i32 56, label %if.end2.sw.bb6_crit_edge163
    i32 194, label %if.end2.sw.bb6_crit_edge164
    i32 35, label %if.end2.sw.bb6_crit_edge165
    i32 170, label %if.end2.sw.bb6_crit_edge166
    i32 45, label %if.end2.sw.bb6_crit_edge167
    i32 102, label %if.end2.sw.bb6_crit_edge168
    i32 157, label %if.end2.sw.bb6_crit_edge169
    i32 57, label %if.end2.sw.bb6_crit_edge170
    i32 110, label %if.end2.sw.bb6_crit_edge171
    i32 154, label %if.end2.sw.bb6_crit_edge172
    i32 149, label %sw.bb7
    i32 180, label %sw.bb8
    i32 85, label %if.end2.sw.bb9_crit_edge
    i32 99, label %if.end2.sw.bb9_crit_edge173
    i32 137, label %sw.bb10
    i32 65, label %sw.bb11
    i32 28, label %if.end2.sw.bb12_crit_edge
    i32 27, label %if.end2.sw.bb12_crit_edge174
    i32 67, label %if.end2.sw.bb13_crit_edge
    i32 118, label %if.end2.sw.bb13_crit_edge175
    i32 119, label %if.end2.sw.bb13_crit_edge176
    i32 120, label %if.end2.sw.bb13_crit_edge177
    i32 121, label %if.end2.sw.bb13_crit_edge178
    i32 122, label %if.end2.sw.bb13_crit_edge179
    i32 123, label %if.end2.sw.bb13_crit_edge180
    i32 124, label %if.end2.sw.bb13_crit_edge181
    i32 125, label %if.end2.sw.bb13_crit_edge182
    i32 126, label %if.end2.sw.bb13_crit_edge183
    i32 159, label %if.end2.sw.bb13_crit_edge184
    i32 176, label %if.end2.sw.bb13_crit_edge185
    i32 127, label %if.end2.sw.bb13_crit_edge186
    i32 160, label %if.end2.sw.bb13_crit_edge187
    i32 161, label %if.end2.sw.bb13_crit_edge188
    i32 128, label %sw.bb14
    i32 79, label %sw.bb15
    i32 68, label %sw.bb16
    i32 40, label %if.end2.sw.bb17_crit_edge
    i32 49, label %if.end2.sw.bb17_crit_edge189
    i32 62, label %if.end2.sw.bb17_crit_edge190
    i32 98, label %sw.bb18
    i32 70, label %if.end2.sw.bb19_crit_edge
    i32 71, label %if.end2.sw.bb19_crit_edge191
    i32 97, label %if.end2.sw.bb20_crit_edge
    i32 86, label %if.end2.sw.bb20_crit_edge192
    i32 55, label %if.end2.sw.bb20_crit_edge193
    i32 78, label %if.end2.sw.bb21_crit_edge
    i32 112, label %if.end2.sw.bb21_crit_edge194
    i32 146, label %if.end2.sw.bb21_crit_edge195
    i32 190, label %sw.bb22
    i32 106, label %if.end2.sw.bb23_crit_edge
    i32 107, label %if.end2.sw.bb23_crit_edge196
    i32 148, label %if.end2.sw.bb24_crit_edge
    i32 184, label %if.end2.sw.bb24_crit_edge197
    i32 116, label %sw.bb25
    i32 132, label %sw.bb26
    i32 150, label %sw.bb27
    i32 153, label %sw.bb28
    i32 169, label %sw.bb29
    i32 175, label %sw.bb30
    i32 183, label %sw.bb31
    i32 155, label %if.end2.sw.bb32_crit_edge
    i32 156, label %if.end2.sw.bb32_crit_edge198
    i32 195, label %sw.bb33
  ]

if.end2.sw.bb32_crit_edge198:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end2.sw.bb32_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end2.sw.bb24_crit_edge197:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

if.end2.sw.bb24_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

if.end2.sw.bb23_crit_edge196:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end2.sw.bb23_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb23

if.end2.sw.bb21_crit_edge195:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end2.sw.bb21_crit_edge194:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end2.sw.bb21_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end2.sw.bb20_crit_edge193:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20

if.end2.sw.bb20_crit_edge192:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20

if.end2.sw.bb20_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20

if.end2.sw.bb19_crit_edge191:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end2.sw.bb19_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end2.sw.bb17_crit_edge190:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

if.end2.sw.bb17_crit_edge189:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

if.end2.sw.bb17_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

if.end2.sw.bb13_crit_edge188:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge187:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge186:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge185:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge184:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge183:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge182:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge181:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge180:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge179:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge178:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge177:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge176:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge175:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb13_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.end2.sw.bb12_crit_edge174:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end2.sw.bb12_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end2.sw.bb9_crit_edge173:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

if.end2.sw.bb9_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

if.end2.sw.bb6_crit_edge172:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge171:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge170:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge169:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge168:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge167:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge166:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge165:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge164:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge163:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge162:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge161:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb6_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end2.sw.bb5_crit_edge160:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end2.sw.bb5_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end2.sw.bb4_crit_edge159:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end2.sw.bb4_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end2.sw.bb3_crit_edge158:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end2.sw.bb3_crit_edge157:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end2.sw.bb3_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end2.if.end37_crit_edge156:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end2.if.end37_crit_edge155:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end2.if.end37_crit_edge154:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end2.if.end37_crit_edge153:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end2.if.end37_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb3:                                           ; preds = %if.end2.sw.bb3_crit_edge, %if.end2.sw.bb3_crit_edge157, %if.end2.sw.bb3_crit_edge158
  br label %if.end37

sw.bb4:                                           ; preds = %if.end2.sw.bb4_crit_edge, %if.end2.sw.bb4_crit_edge159
  br label %if.end37

sw.bb5:                                           ; preds = %if.end2.sw.bb5_crit_edge, %if.end2.sw.bb5_crit_edge160
  br label %if.end37

sw.bb6:                                           ; preds = %if.end2.sw.bb6_crit_edge, %if.end2.sw.bb6_crit_edge161, %if.end2.sw.bb6_crit_edge162, %if.end2.sw.bb6_crit_edge163, %if.end2.sw.bb6_crit_edge164, %if.end2.sw.bb6_crit_edge165, %if.end2.sw.bb6_crit_edge166, %if.end2.sw.bb6_crit_edge167, %if.end2.sw.bb6_crit_edge168, %if.end2.sw.bb6_crit_edge169, %if.end2.sw.bb6_crit_edge170, %if.end2.sw.bb6_crit_edge171, %if.end2.sw.bb6_crit_edge172
  br label %if.end37

sw.bb7:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb8:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb9:                                           ; preds = %if.end2.sw.bb9_crit_edge, %if.end2.sw.bb9_crit_edge173
  br label %if.end37

sw.bb10:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb11:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb12:                                          ; preds = %if.end2.sw.bb12_crit_edge, %if.end2.sw.bb12_crit_edge174
  br label %if.end37

sw.bb13:                                          ; preds = %if.end2.sw.bb13_crit_edge, %if.end2.sw.bb13_crit_edge175, %if.end2.sw.bb13_crit_edge176, %if.end2.sw.bb13_crit_edge177, %if.end2.sw.bb13_crit_edge178, %if.end2.sw.bb13_crit_edge179, %if.end2.sw.bb13_crit_edge180, %if.end2.sw.bb13_crit_edge181, %if.end2.sw.bb13_crit_edge182, %if.end2.sw.bb13_crit_edge183, %if.end2.sw.bb13_crit_edge184, %if.end2.sw.bb13_crit_edge185, %if.end2.sw.bb13_crit_edge186, %if.end2.sw.bb13_crit_edge187, %if.end2.sw.bb13_crit_edge188
  br label %if.end37

sw.bb14:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb15:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb16:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb17:                                          ; preds = %if.end2.sw.bb17_crit_edge, %if.end2.sw.bb17_crit_edge189, %if.end2.sw.bb17_crit_edge190
  br label %if.end37

sw.bb18:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb19:                                          ; preds = %if.end2.sw.bb19_crit_edge, %if.end2.sw.bb19_crit_edge191
  br label %if.end37

sw.bb20:                                          ; preds = %if.end2.sw.bb20_crit_edge, %if.end2.sw.bb20_crit_edge192, %if.end2.sw.bb20_crit_edge193
  br label %if.end37

sw.bb21:                                          ; preds = %if.end2.sw.bb21_crit_edge, %if.end2.sw.bb21_crit_edge194, %if.end2.sw.bb21_crit_edge195
  br label %if.end37

sw.bb22:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb23:                                          ; preds = %if.end2.sw.bb23_crit_edge, %if.end2.sw.bb23_crit_edge196
  br label %if.end37

sw.bb24:                                          ; preds = %if.end2.sw.bb24_crit_edge, %if.end2.sw.bb24_crit_edge197
  br label %if.end37

sw.bb25:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb26:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb27:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb28:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb29:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb30:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb31:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb32:                                          ; preds = %if.end2.sw.bb32_crit_edge, %if.end2.sw.bb32_crit_edge198
  br label %if.end37

sw.bb33:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %4) #10
  br label %cleanup

if.end37:                                         ; preds = %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %if.end2.if.end37_crit_edge, %if.end2.if.end37_crit_edge153, %if.end2.if.end37_crit_edge154, %if.end2.if.end37_crit_edge155, %if.end2.if.end37_crit_edge156
  %ir_codes.0.ph = phi ptr [ @.str.2, %sw.bb3 ], [ @.str.3, %sw.bb4 ], [ @.str.4, %sw.bb5 ], [ @.str.5, %sw.bb6 ], [ @.str.6, %sw.bb7 ], [ @.str.7, %sw.bb8 ], [ @.str.5, %sw.bb9 ], [ @.str.8, %sw.bb10 ], [ @.str.4, %sw.bb11 ], [ @.str.9, %sw.bb12 ], [ @.str.9, %sw.bb13 ], [ @.str.10, %sw.bb14 ], [ @.str.11, %sw.bb15 ], [ @.str.12, %sw.bb16 ], [ @.str.13, %sw.bb17 ], [ @.str.14, %sw.bb18 ], [ @.str.13, %sw.bb19 ], [ @.str.15, %sw.bb20 ], [ @.str.16, %sw.bb21 ], [ @.str.17, %sw.bb22 ], [ @.str.18, %sw.bb23 ], [ @.str.19, %sw.bb24 ], [ @.str.18, %sw.bb25 ], [ @.str.20, %sw.bb26 ], [ @.str.21, %sw.bb27 ], [ @.str.22, %sw.bb28 ], [ @.str.23, %sw.bb29 ], [ @.str.24, %sw.bb30 ], [ @.str.25, %sw.bb31 ], [ @.str.26, %sw.bb32 ], [ @.str.27, %sw.bb33 ], [ @.str.1, %if.end2.if.end37_crit_edge ], [ @.str.1, %if.end2.if.end37_crit_edge153 ], [ @.str.1, %if.end2.if.end37_crit_edge154 ], [ @.str.1, %if.end2.if.end37_crit_edge155 ], [ @.str.1, %if.end2.if.end37_crit_edge156 ]
  %mask_keycode.0.ph = phi i32 [ 63, %sw.bb3 ], [ 380, %sw.bb4 ], [ 31, %sw.bb5 ], [ 1992, %sw.bb6 ], [ 65535, %sw.bb7 ], [ 65535, %sw.bb8 ], [ 193024, %sw.bb9 ], [ 193024, %sw.bb10 ], [ 31, %sw.bb11 ], [ 7936, %sw.bb12 ], [ 16128, %sw.bb13 ], [ 16128, %sw.bb14 ], [ 7936, %sw.bb15 ], [ 972, %sw.bb16 ], [ 63, %sw.bb17 ], [ 127, %sw.bb18 ], [ 16128, %sw.bb19 ], [ 7936, %sw.bb20 ], [ 65535, %sw.bb21 ], [ 65535, %sw.bb22 ], [ 127, %sw.bb23 ], [ 65535, %sw.bb24 ], [ 100139008, %sw.bb25 ], [ 255, %sw.bb26 ], [ 16128, %sw.bb27 ], [ 127, %sw.bb28 ], [ 16128, %sw.bb29 ], [ 24320, %sw.bb30 ], [ 65280, %sw.bb31 ], [ 65535, %sw.bb32 ], [ 65535, %sw.bb33 ], [ 247463936, %if.end2.if.end37_crit_edge ], [ 247463936, %if.end2.if.end37_crit_edge153 ], [ 247463936, %if.end2.if.end37_crit_edge154 ], [ 247463936, %if.end2.if.end37_crit_edge155 ], [ 247463936, %if.end2.if.end37_crit_edge156 ]
  %mask_keydown.0.ph = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb4 ], [ 0, %sw.bb5 ], [ 16, %sw.bb6 ], [ 262144, %sw.bb7 ], [ 262144, %sw.bb8 ], [ 1024, %sw.bb9 ], [ 1024, %sw.bb10 ], [ 0, %sw.bb11 ], [ 0, %sw.bb12 ], [ 0, %sw.bb13 ], [ 0, %sw.bb14 ], [ 0, %sw.bb15 ], [ 16, %sw.bb16 ], [ 0, %sw.bb17 ], [ 0, %sw.bb18 ], [ 0, %sw.bb19 ], [ 262144, %sw.bb20 ], [ 262144, %sw.bb21 ], [ 262144, %sw.bb22 ], [ 0, %sw.bb23 ], [ 262144, %sw.bb24 ], [ 0, %sw.bb25 ], [ 15728640, %sw.bb26 ], [ 0, %sw.bb27 ], [ 0, %sw.bb28 ], [ 262144, %sw.bb29 ], [ 0, %sw.bb30 ], [ 0, %sw.bb31 ], [ 262144, %sw.bb32 ], [ 262144, %sw.bb33 ], [ 262144, %if.end2.if.end37_crit_edge ], [ 262144, %if.end2.if.end37_crit_edge153 ], [ 262144, %if.end2.if.end37_crit_edge154 ], [ 262144, %if.end2.if.end37_crit_edge155 ], [ 262144, %if.end2.if.end37_crit_edge156 ]
  %mask_keyup.0.ph = phi i32 [ 262144, %sw.bb3 ], [ 2, %sw.bb4 ], [ 32, %sw.bb5 ], [ 0, %sw.bb6 ], [ 262144, %sw.bb7 ], [ 262144, %sw.bb8 ], [ 0, %sw.bb9 ], [ 0, %sw.bb10 ], [ 96, %sw.bb11 ], [ 16384, %sw.bb12 ], [ 16384, %sw.bb13 ], [ 16384, %sw.bb14 ], [ 16384, %sw.bb15 ], [ 0, %sw.bb16 ], [ 4194304, %sw.bb17 ], [ 128, %sw.bb18 ], [ 262144, %sw.bb19 ], [ 0, %sw.bb20 ], [ 262144, %sw.bb21 ], [ 262144, %sw.bb22 ], [ 262144, %sw.bb23 ], [ 262144, %sw.bb24 ], [ 134217728, %sw.bb25 ], [ 0, %sw.bb26 ], [ 16384, %sw.bb27 ], [ 0, %sw.bb28 ], [ 0, %sw.bb29 ], [ 131072, %sw.bb30 ], [ 262144, %sw.bb31 ], [ 262144, %sw.bb32 ], [ 262144, %sw.bb33 ], [ 0, %if.end2.if.end37_crit_edge ], [ 0, %if.end2.if.end37_crit_edge153 ], [ 0, %if.end2.if.end37_crit_edge154 ], [ 0, %if.end2.if.end37_crit_edge155 ], [ 0, %if.end2.if.end37_crit_edge156 ]
  %polling.0.ph = phi i32 [ 0, %sw.bb3 ], [ 50, %sw.bb4 ], [ 50, %sw.bb5 ], [ 50, %sw.bb6 ], [ 0, %sw.bb7 ], [ 0, %sw.bb8 ], [ 50, %sw.bb9 ], [ 50, %sw.bb10 ], [ 50, %sw.bb11 ], [ 50, %sw.bb12 ], [ 50, %sw.bb13 ], [ 50, %sw.bb14 ], [ 50, %sw.bb15 ], [ 5, %sw.bb16 ], [ 50, %sw.bb17 ], [ 50, %sw.bb18 ], [ 0, %sw.bb19 ], [ 0, %sw.bb20 ], [ 0, %sw.bb21 ], [ 0, %sw.bb22 ], [ 50, %sw.bb23 ], [ 0, %sw.bb24 ], [ 50, %sw.bb25 ], [ 50, %sw.bb26 ], [ 50, %sw.bb27 ], [ 40, %sw.bb28 ], [ 0, %sw.bb29 ], [ 50, %sw.bb30 ], [ 0, %sw.bb31 ], [ 0, %sw.bb32 ], [ 0, %sw.bb33 ], [ 0, %if.end2.if.end37_crit_edge ], [ 0, %if.end2.if.end37_crit_edge153 ], [ 0, %if.end2.if.end37_crit_edge154 ], [ 0, %if.end2.if.end37_crit_edge155 ], [ 0, %if.end2.if.end37_crit_edge156 ]
  %raw_decode.0.off0.ph = phi i1 [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ true, %sw.bb7 ], [ true, %sw.bb8 ], [ false, %sw.bb9 ], [ false, %sw.bb10 ], [ false, %sw.bb11 ], [ false, %sw.bb12 ], [ false, %sw.bb13 ], [ false, %sw.bb14 ], [ false, %sw.bb15 ], [ false, %sw.bb16 ], [ false, %sw.bb17 ], [ false, %sw.bb18 ], [ false, %sw.bb19 ], [ false, %sw.bb20 ], [ true, %sw.bb21 ], [ true, %sw.bb22 ], [ false, %sw.bb23 ], [ true, %sw.bb24 ], [ false, %sw.bb25 ], [ false, %sw.bb26 ], [ false, %sw.bb27 ], [ false, %sw.bb28 ], [ false, %sw.bb29 ], [ false, %sw.bb30 ], [ false, %sw.bb31 ], [ true, %sw.bb32 ], [ true, %sw.bb33 ], [ false, %if.end2.if.end37_crit_edge ], [ false, %if.end2.if.end37_crit_edge153 ], [ false, %if.end2.if.end37_crit_edge154 ], [ false, %if.end2.if.end37_crit_edge155 ], [ false, %if.end2.if.end37_crit_edge156 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 112) #11
  %call39 = tail call ptr @rc_allocate_device(i32 noundef 0) #7
  %tobool40.not = icmp eq ptr %call7.i.i, null
  %tobool41.not = icmp eq ptr %call39, null
  %or.cond = select i1 %tobool40.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.end37.err_out_free_crit_edge, label %if.end43

if.end37.err_out_free_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end43:                                         ; preds = %if.end37
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call39, ptr %call7.i.i, align 8
  %remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %remote, align 4
  %mask_keycode45 = getelementptr inbounds %struct.saa7134_card_ir, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %mask_keycode45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mask_keycode.0.ph, ptr %mask_keycode45, align 4
  %mask_keydown46 = getelementptr inbounds %struct.saa7134_card_ir, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %mask_keydown46 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mask_keydown.0.ph, ptr %mask_keydown46, align 8
  %mask_keyup47 = getelementptr inbounds %struct.saa7134_card_ir, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %mask_keyup47 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mask_keyup.0.ph, ptr %mask_keyup47, align 4
  %polling48 = getelementptr inbounds %struct.saa7134_card_ir, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %polling48 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %polling.0.ph, ptr %polling48, align 4
  %conv = zext i1 %raw_decode.0.off0.ph to i32
  %raw_decode50 = getelementptr inbounds %struct.saa7134_card_ir, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %raw_decode50 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %raw_decode50, align 4
  %phys = getelementptr inbounds %struct.saa7134_card_ir, ptr %call7.i.i, i32 0, i32 1
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end43.pci_name.exit_crit_edge

if.end43.pci_name.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end43.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.end43.pci_name.exit_crit_edge ]
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i)
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 24
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 48
  %21 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @saa7134_ir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 49
  %22 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @saa7134_ir_close, ptr %close, align 4
  br i1 %raw_decode.0.off0.ph, label %if.then54, label %pci_name.exit.if.end55_crit_edge

pci_name.exit.if.end55_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then54:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 13
  %23 = ptrtoint ptr %driver_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %driver_type, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 16
  %24 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 130023420, ptr %allowed_protocols, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %pci_name.exit.if.end55_crit_edge
  %25 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 3
  %29 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 4
  %30 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 5
  %31 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %version, align 2
  %33 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool61.not = icmp eq i16 %36, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vendor, align 2
  %38 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 10
  br label %if.end75

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %vendor69 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 7
  %40 = ptrtoint ptr %vendor69 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vendor69, align 8
  %vendor71 = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %vendor71 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %vendor71, align 2
  %43 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 8
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then62
  %.sink.in = phi ptr [ %device, %if.else ], [ %subsystem_device, %if.then62 ]
  %45 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %45)
  %.sink = load i16, ptr %.sink.in, align 2
  %46 = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 5, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %.sink, ptr %46, align 4
  %48 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci, align 4
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call39, i32 0, i32 1
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev77, ptr %parent, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 7
  %51 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ir_codes.0.ph, ptr %map_name, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 6
  %52 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.32, ptr %driver_name, align 8
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 35
  %53 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %min_timeout, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 34
  %54 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 125000, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %call39, i32 0, i32 36
  %55 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1250000, ptr %max_timeout, align 4
  %call79 = tail call i32 @rc_register_device(ptr noundef nonnull %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end75.cleanup_crit_edge, label %if.end75.err_out_free_crit_edge

if.end75.err_out_free_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out_free:                                     ; preds = %if.end75.err_out_free_crit_edge, %if.end37.err_out_free_crit_edge
  %err.0 = phi i32 [ %call79, %if.end75.err_out_free_crit_edge ], [ -12, %if.end37.err_out_free_crit_edge ]
  tail call void @rc_free_device(ptr noundef %call39) #7
  %remote83 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 12
  %56 = ptrtoint ptr %remote83 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %remote83, align 4
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.end75.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.0, %err_out_free ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_input_fini(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #7
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote, align 4
  tail call void @kfree(ptr noundef %5) #7
  %6 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %remote, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_probe_i2c_ir(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i2c_board_info, align 4
  %msg_msi = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_msi) #7
  %0 = call ptr @memcpy(ptr %msg_msi, ptr @__const.saa7134_probe_i2c_ir.msg_msi, i32 12)
  %1 = load i32, ptr @disable_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %3 = call ptr @memset(ptr %info, i32 0, i32 56)
  %init_data = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88
  %4 = call ptr @memset(ptr %init_data, i32 0, i32 32)
  %call7 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.35, i32 noundef 20) #7
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %board, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %6, label %do.body146 [
    i32 77, label %if.end6.sw.bb_crit_edge
    i32 101, label %if.end6.sw.bb_crit_edge212
    i32 36, label %sw.bb18
    i32 82, label %sw.bb26
    i32 196, label %sw.bb53
    i32 189, label %sw.bb84
    i32 104, label %sw.bb113
    i32 129, label %if.end6.sw.bb124_crit_edge
    i32 162, label %if.end6.sw.bb124_crit_edge213
    i32 163, label %if.end6.sw.bb124_crit_edge214
    i32 164, label %if.end6.sw.bb124_crit_edge215
    i32 165, label %if.end6.sw.bb124_crit_edge216
    i32 166, label %if.end6.sw.bb124_crit_edge217
    i32 167, label %if.end6.sw.bb124_crit_edge218
    i32 168, label %if.end6.sw.bb124_crit_edge219
    i32 130, label %if.end6.sw.bb124_crit_edge220
    i32 143, label %if.end6.sw.bb124_crit_edge221
    i32 144, label %if.end6.sw.bb124_crit_edge222
    i32 142, label %if.end6.sw.bb124_crit_edge223
    i32 171, label %if.end6.sw.bb124_crit_edge224
    i32 178, label %if.end6.sw.bb124_crit_edge225
    i32 179, label %if.end6.sw.bb124_crit_edge226
    i32 158, label %if.end6.sw.bb134_crit_edge
    i32 136, label %if.end6.sw.bb134_crit_edge227
    i32 192, label %sw.bb136
    i32 84, label %sw.bb138
  ]

if.end6.sw.bb134_crit_edge227:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb134

if.end6.sw.bb134_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb134

if.end6.sw.bb124_crit_edge226:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge225:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge224:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge223:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge222:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge221:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge220:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge219:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge218:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge217:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge216:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge215:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge214:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge213:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb124_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb124

if.end6.sw.bb_crit_edge212:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge212
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.36, ptr %name, align 4
  %9 = load i32, ptr @pinnacle_remote, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %get_key = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %get_key to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @get_key_pinnacle_color, ptr %get_key, align 4
  %11 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.37, ptr %init_data, align 8
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 71, ptr %addr, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %get_key to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @get_key_pinnacle_grey, ptr %get_key, align 4
  %14 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.38, ptr %init_data, align 8
  %addr16 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %addr16 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 71, ptr %addr16, align 2
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %name20 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %16 = ptrtoint ptr %name20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.39, ptr %name20, align 4
  %get_key22 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  %17 = ptrtoint ptr %get_key22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @get_key_purpletv, ptr %get_key22, align 4
  %18 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.40, ptr %init_data, align 8
  %addr25 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %addr25 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 122, ptr %addr25, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end6
  %name28 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %20 = ptrtoint ptr %name28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.41, ptr %name28, align 4
  %get_key30 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  %21 = ptrtoint ptr %get_key30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @get_key_msi_tvanywhere_plus, ptr %get_key30, align 4
  %22 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.42, ptr %init_data, align 8
  %polling_interval = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 3
  %23 = ptrtoint ptr %polling_interval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50, ptr %polling_interval, align 8
  %addr34 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %addr34 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 48, ptr %addr34, align 2
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call35 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg_msi, i32 noundef 1) #7
  %25 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not = icmp eq i32 %25, 0
  br i1 %tobool37.not, label %sw.bb26.sw.epilog_crit_edge, label %do.end41

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end41:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %msg_msi to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %msg_msi, align 4
  %conv = zext i16 %27 to i32
  %name45 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35)
  %cmp47 = icmp eq i32 %call35, 1
  %cond = select i1 %cmp47, ptr @.str.46, ptr @.str.47
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv, ptr noundef %name45, ptr noundef nonnull %cond) #10
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end6
  %name55 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %28 = ptrtoint ptr %name55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.48, ptr %name55, align 4
  %get_key57 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  %29 = ptrtoint ptr %get_key57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @get_key_msi_tvanywhere_plus, ptr %get_key57, align 4
  %30 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.42, ptr %init_data, align 8
  %polling_interval61 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 3
  %31 = ptrtoint ptr %polling_interval61 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 50, ptr %polling_interval61, align 8
  %addr62 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %32 = ptrtoint ptr %addr62 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 48, ptr %addr62, align 2
  %i2c_adap63 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call64 = call i32 @i2c_transfer(ptr noundef %i2c_adap63, ptr noundef nonnull %msg_msi, i32 noundef 1) #7
  %33 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool66.not = icmp eq i32 %33, 0
  br i1 %tobool66.not, label %sw.bb53.sw.epilog_crit_edge, label %do.end70

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end70:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %msg_msi to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %msg_msi, align 4
  %conv73 = zext i16 %35 to i32
  %name75 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64)
  %cmp77 = icmp eq i32 %call64, 1
  %cond79 = select i1 %cmp77, ptr @.str.46, ptr @.str.47
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv73, ptr noundef %name75, ptr noundef nonnull %cond79) #10
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end6
  %name86 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %36 = ptrtoint ptr %name86 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.51, ptr %name86, align 4
  %get_key88 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  %37 = ptrtoint ptr %get_key88 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @get_key_kworld_pc150u, ptr %get_key88, align 4
  %38 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.52, ptr %init_data, align 8
  %addr91 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %39 = ptrtoint ptr %addr91 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 48, ptr %addr91, align 2
  %i2c_adap92 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call93 = call i32 @i2c_transfer(ptr noundef %i2c_adap92, ptr noundef nonnull %msg_msi, i32 noundef 1) #7
  %40 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool95.not = icmp eq i32 %40, 0
  br i1 %tobool95.not, label %sw.bb84.sw.epilog_crit_edge, label %do.end99

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end99:                                         ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %msg_msi to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %msg_msi, align 4
  %conv102 = zext i16 %42 to i32
  %name104 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call93)
  %cmp106 = icmp eq i32 %call93, 1
  %cond108 = select i1 %cmp106, ptr @.str.46, ptr @.str.47
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv102, ptr noundef %name104, ptr noundef nonnull %cond108) #10
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 104) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 104), align 4
  %name117 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %44 = ptrtoint ptr %name117 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %name117, align 4
  %45 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.26, ptr %init_data, align 8
  %type121 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 2
  %46 = ptrtoint ptr %type121 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 786436, ptr %type121, align 8
  %internal_get_key_func = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 5
  %47 = ptrtoint ptr %internal_get_key_func to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %internal_get_key_func, align 8
  %addr123 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %48 = ptrtoint ptr %addr123 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 113, ptr %addr123, align 2
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end6.sw.bb124_crit_edge, %if.end6.sw.bb124_crit_edge213, %if.end6.sw.bb124_crit_edge214, %if.end6.sw.bb124_crit_edge215, %if.end6.sw.bb124_crit_edge216, %if.end6.sw.bb124_crit_edge217, %if.end6.sw.bb124_crit_edge218, %if.end6.sw.bb124_crit_edge219, %if.end6.sw.bb124_crit_edge220, %if.end6.sw.bb124_crit_edge221, %if.end6.sw.bb124_crit_edge222, %if.end6.sw.bb124_crit_edge223, %if.end6.sw.bb124_crit_edge224, %if.end6.sw.bb124_crit_edge225, %if.end6.sw.bb124_crit_edge226
  %name126 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %49 = ptrtoint ptr %name126 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.55, ptr %name126, align 4
  %get_key128 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  %50 = ptrtoint ptr %get_key128 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @get_key_beholdm6xx, ptr %get_key128, align 4
  %51 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.56, ptr %init_data, align 8
  %type132 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 2
  %52 = ptrtoint ptr %type132 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1024, ptr %type132, align 8
  %addr133 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %53 = ptrtoint ptr %addr133 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 45, ptr %addr133, align 2
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end6.sw.bb134_crit_edge, %if.end6.sw.bb134_crit_edge227
  %addr135 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %54 = ptrtoint ptr %addr135 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 64, ptr %addr135, align 2
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %addr137 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %55 = ptrtoint ptr %addr137 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 65, ptr %addr137, align 2
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %name140 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %56 = ptrtoint ptr %name140 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.57, ptr %name140, align 4
  %get_key142 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 4
  %57 = ptrtoint ptr %get_key142 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @get_key_flydvb_trio, ptr %get_key142, align 4
  %58 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.15, ptr %init_data, align 8
  %addr145 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %59 = ptrtoint ptr %addr145 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 11, ptr %addr145, align 2
  br label %sw.epilog

do.body146:                                       ; preds = %if.end6
  %60 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool147.not = icmp eq i32 %60, 0
  br i1 %tobool147.not, label %do.body146.cleanup_crit_edge, label %do.end151

do.body146.cleanup_crit_edge:                     ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end151:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #9
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %6) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb138, %sw.bb136, %sw.bb134, %sw.bb124, %sw.bb113, %do.end99, %sw.bb84.sw.epilog_crit_edge, %do.end70, %sw.bb53.sw.epilog_crit_edge, %do.end41, %sw.bb26.sw.epilog_crit_edge, %sw.bb18, %if.else, %if.then9
  %name159 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 88, i32 1
  %61 = ptrtoint ptr %name159 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name159, align 4
  %tobool160.not = icmp eq ptr %62, null
  br i1 %tobool160.not, label %sw.epilog.if.end163_crit_edge, label %if.then161

sw.epilog.if.end163_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then161:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %63 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %init_data, ptr %platform_data, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %sw.epilog.if.end163_crit_edge
  %i2c_adap164 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call165 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap164, ptr noundef nonnull %info) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %do.end151, %do.body146.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_msi) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_pinnacle_color(ptr nocapture noundef %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_key_pinnacle(ptr noundef %ir, ptr noundef %protocol, ptr noundef %scancode, ptr noundef %toggle, i32 noundef 2, i32 noundef 128, i32 noundef 136)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_pinnacle_grey(ptr nocapture noundef %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_key_pinnacle(ptr noundef %ir, ptr noundef %protocol, ptr noundef %scancode, ptr noundef %toggle, i32 noundef 1, i32 noundef 254, i32 noundef 255)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_purpletv(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !239
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rc3 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %4 = ptrtoint ptr %rc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc3, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_name, align 8
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %7) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp7, i32 %call.i, i32 -5
  br label %cleanup

if.end10:                                         ; preds = %entry
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11 = icmp eq i8 %9, 0
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool16.not = icmp sgt i8 %9, -1
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %protocol, align 4
  %conv19 = zext i8 %9 to i32
  %11 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv19, ptr %scancode, align 4
  %12 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ 1, %if.end18 ], [ %call., %do.end6 ], [ 0, %if.end10.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_msi_tvanywhere_plus(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !239
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo_data, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rc3 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %8 = ptrtoint ptr %rc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc3, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %11) #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 435
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  %15 = and i8 %14, 127
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %15) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %19, i32 435
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %21 = or i8 %20, -128
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %23, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %21) #7, !srcloc !211
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %6, i32 0, i32 18
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr34 = getelementptr i32, ptr %25, i32 109
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %27 = and i32 %26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not = icmp eq i32 %27, 0
  br i1 %tobool39.not, label %if.end41, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %do.body7
  %28 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp44.not = icmp eq i32 %call.i, 1
  br i1 %cmp44.not, label %if.end64, label %do.body47

do.body47:                                        ; preds = %if.end41
  %30 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool48.not = icmp eq i32 %30, 0
  br i1 %tobool48.not, label %do.body47.do.end59_crit_edge, label %do.end52

do.body47.do.end59_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end52:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %rc54 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %31 = ptrtoint ptr %rc54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rc54, align 4
  %device_name55 = getelementptr inbounds %struct.rc_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %device_name55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_name55, align 8
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %34) #10
  br label %do.end59

do.end59:                                         ; preds = %do.end52, %do.body47.do.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp60 = icmp slt i32 %call.i, 0
  %call43. = select i1 %cmp60, i32 %call.i, i32 -5
  br label %cleanup

if.end64:                                         ; preds = %if.end41
  %35 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %b, align 1
  %conv65 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp66 = icmp eq i8 %36, -1
  br i1 %cmp66, label %if.end64.cleanup_crit_edge, label %do.body70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body70:                                        ; preds = %if.end64
  %37 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool71.not = icmp eq i32 %37, 0
  br i1 %tobool71.not, label %do.body70.do.end81_crit_edge, label %do.end75

do.body70.do.end81_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

do.end75:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv65) #10
  br label %do.end81

do.end81:                                         ; preds = %do.end75, %do.body70.do.end81_crit_edge
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %protocol, align 4
  %39 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %b, align 1
  %conv82 = zext i8 %40 to i32
  %41 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv82, ptr %scancode, align 4
  %42 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %if.end64.cleanup_crit_edge, %do.end59, %do.body7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end81 ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %do.body7.cleanup_crit_edge ], [ %call43., %do.end59 ], [ 0, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_kworld_pc150u(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !239
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo_data, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rc3 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %8 = ptrtoint ptr %rc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc3, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %11) #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %6, i32 0, i32 19
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 435
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %15 = and i8 %14, 127
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %15) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %19, i32 435
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %21 = or i8 %20, -128
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %23, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %21) #7, !srcloc !211
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %6, i32 0, i32 18
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr34 = getelementptr i32, ptr %25, i32 109
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %27 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not = icmp eq i32 %27, 0
  br i1 %tobool39.not, label %if.end41, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %do.body7
  %28 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp44.not = icmp eq i32 %call.i, 1
  br i1 %cmp44.not, label %if.end64, label %do.body47

do.body47:                                        ; preds = %if.end41
  %30 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool48.not = icmp eq i32 %30, 0
  br i1 %tobool48.not, label %do.body47.do.end59_crit_edge, label %do.end52

do.body47.do.end59_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end52:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %rc54 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %31 = ptrtoint ptr %rc54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rc54, align 4
  %device_name55 = getelementptr inbounds %struct.rc_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %device_name55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_name55, align 8
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %34) #10
  br label %do.end59

do.end59:                                         ; preds = %do.end52, %do.body47.do.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp60 = icmp slt i32 %call.i, 0
  %call43. = select i1 %cmp60, i32 %call.i, i32 -5
  br label %cleanup

if.end64:                                         ; preds = %if.end41
  %35 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %b, align 1
  %conv65 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp66 = icmp eq i8 %36, -1
  br i1 %cmp66, label %if.end64.cleanup_crit_edge, label %do.body70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body70:                                        ; preds = %if.end64
  %37 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool71.not = icmp eq i32 %37, 0
  br i1 %tobool71.not, label %do.body70.do.end81_crit_edge, label %do.end75

do.body70.do.end81_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

do.end75:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv65) #10
  br label %do.end81

do.end81:                                         ; preds = %do.end75, %do.body70.do.end81_crit_edge
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %protocol, align 4
  %39 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %b, align 1
  %conv82 = zext i8 %40 to i32
  %41 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv82, ptr %scancode, align 4
  %42 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %if.end64.cleanup_crit_edge, %do.end59, %do.body7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end81 ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %do.body7.cleanup_crit_edge ], [ %call43., %do.end59 ], [ 0, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_beholdm6xx(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %data = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #7
  %0 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 8
  %1 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 9
  %2 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 10
  %3 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 11
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %4 = call ptr @memset(ptr %data, i32 255, i32 12)
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %algo_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 435
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  %14 = and i8 %13, 127
  %15 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmmio, align 8
  %add.ptr4 = getelementptr i8, ptr %16, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %14) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %18, i32 435
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  %20 = or i8 %19, -128
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %22, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %20) #7, !srcloc !211
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 18
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr23 = getelementptr i32, ptr %24, i32 109
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %26 = and i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.not = icmp eq i32 %26, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 45, ptr %addr, align 2
  %30 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %data, i32 noundef 12, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 12
  br i1 %cmp.not, label %if.end49, label %do.body33

do.body33:                                        ; preds = %if.end
  %31 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool34.not = icmp eq i32 %31, 0
  br i1 %tobool34.not, label %do.body33.do.end44_crit_edge, label %do.end38

do.body33.do.end44_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %rc40 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %32 = ptrtoint ptr %rc40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rc40, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_name, align 8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %35) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end38, %do.body33.do.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp slt i32 %call.i, 0
  %call30. = select i1 %cmp45, i32 %call.i, i32 -5
  br label %cleanup

if.end49:                                         ; preds = %if.end
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 1
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 1
  %neg53 = xor i8 %39, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %neg53)
  %cmp56.not = icmp eq i8 %37, %neg53
  br i1 %cmp56.not, label %if.end59, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 10, ptr %protocol, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 1
  %conv61 = zext i8 %42 to i32
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %2, align 1
  %conv63 = zext i8 %44 to i32
  %45 = shl nuw nsw i32 %conv61, 16
  %46 = shl nuw nsw i32 %conv63, 8
  %conv67 = zext i8 %37 to i32
  %shl65 = or i32 %45, %conv67
  %or68 = or i32 %shl65, %46
  %47 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or68, ptr %scancode, align 4
  %48 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end49.cleanup_crit_edge, %do.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end59 ], [ 0, %entry.cleanup_crit_edge ], [ %call30., %do.end44 ], [ 0, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_flydvb_trio(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo_data, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rc3 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %7 = ptrtoint ptr %rc3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rc3, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %10) #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  tail call void @arm_heavy_mb() #7
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 435
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %14 = and i8 %13, 127
  %15 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %16, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %14) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %18, i32 435
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !258
  %20 = or i8 %19, -128
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %22, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %20) #7, !srcloc !211
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 18
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr34 = getelementptr i32, ptr %24, i32 109
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  %26 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not.not = icmp eq i32 %26, 0
  br i1 %tobool39.not.not, label %do.body7.cleanup_crit_edge, label %if.end41

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %do.body7
  %27 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b, align 1
  %28 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c, align 4
  %call.i105 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i105)
  %cmp44.not106 = icmp eq i32 %call.i105, 1
  br i1 %cmp44.not106, label %if.end41.while.end_crit_edge, label %while.body.preheader

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %if.end41
  call void @msleep(i32 noundef 10) #7
  %30 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp44.not = icmp eq i32 %call.i, 1
  br i1 %cmp44.not, label %while.body.preheader.while.end_crit_edge, label %while.body.1

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %while.body.preheader
  call void @msleep(i32 noundef 10) #7
  %32 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %c, align 4
  %call.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.1)
  %cmp44.not.1 = icmp eq i32 %call.i.1, 1
  br i1 %cmp44.not.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @msleep(i32 noundef 10) #7
  %34 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %c, align 4
  %call.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.2)
  %cmp44.not.2 = icmp eq i32 %call.i.2, 1
  br i1 %cmp44.not.2, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @msleep(i32 noundef 10) #7
  %36 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %c, align 4
  %call.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.3)
  %cmp44.not.3 = icmp eq i32 %call.i.3, 1
  br i1 %cmp44.not.3, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @msleep(i32 noundef 10) #7
  %38 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %c, align 4
  %call.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.4)
  %cmp44.not.4 = icmp eq i32 %call.i.4, 1
  br i1 %cmp44.not.4, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @msleep(i32 noundef 10) #7
  %40 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c, align 4
  %call.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.5)
  %cmp44.not.5 = icmp eq i32 %call.i.5, 1
  br i1 %cmp44.not.5, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @msleep(i32 noundef 10) #7
  %42 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %c, align 4
  %call.i.6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.6)
  %cmp44.not.6 = icmp eq i32 %call.i.6, 1
  br i1 %cmp44.not.6, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @msleep(i32 noundef 10) #7
  %44 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %c, align 4
  %call.i.7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %45, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.7)
  %cmp44.not.7 = icmp eq i32 %call.i.7, 1
  br i1 %cmp44.not.7, label %while.body.7.while.end_crit_edge, label %while.body.8

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @msleep(i32 noundef 10) #7
  %46 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %c, align 4
  %call.i.8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.8)
  %cmp44.not.8 = icmp eq i32 %call.i.8, 1
  br i1 %cmp44.not.8, label %while.body.8.while.end_crit_edge, label %while.body.9

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @msleep(i32 noundef 10) #7
  %48 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %c, align 4
  %call.i.9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.9)
  %cmp44.not.9 = icmp eq i32 %call.i.9, 1
  br i1 %cmp44.not.9, label %while.body.9.while.end_crit_edge, label %do.body50

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body50:                                        ; preds = %while.body.9
  %50 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool51.not = icmp eq i32 %50, 0
  br i1 %tobool51.not, label %do.body50.cleanup_crit_edge, label %do.end55

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %rc57 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %51 = ptrtoint ptr %rc57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rc57, align 4
  %device_name58 = getelementptr inbounds %struct.rc_dev, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %device_name58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device_name58, align 8
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %54, i32 noundef 11) #10
  br label %cleanup

while.end:                                        ; preds = %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.preheader.while.end_crit_edge, %if.end41.while.end_crit_edge
  %55 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %c, align 4
  %call.i104 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104)
  %cmp65.not = icmp eq i32 %call.i104, 1
  br i1 %cmp65.not, label %if.end85, label %do.body68

do.body68:                                        ; preds = %while.end
  %57 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool69.not = icmp eq i32 %57, 0
  br i1 %tobool69.not, label %do.body68.do.end80_crit_edge, label %do.end73

do.body68.do.end80_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end73:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %rc75 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %58 = ptrtoint ptr %rc75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rc75, align 4
  %device_name76 = getelementptr inbounds %struct.rc_dev, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %device_name76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_name76, align 8
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %61) #10
  br label %do.end80

do.end80:                                         ; preds = %do.end73, %do.body68.do.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp81 = icmp slt i32 %call.i104, 0
  %call64. = select i1 %cmp81, i32 %call.i104, i32 -5
  br label %cleanup

if.end85:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %protocol, align 4
  %63 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %b, align 1
  %conv86 = zext i8 %64 to i32
  %65 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv86, ptr %scancode, align 4
  %66 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end80, %do.end55, %do.body50.cleanup_crit_edge, %do.body7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end85 ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %do.body7.cleanup_crit_edge ], [ -5, %do.end55 ], [ -5, %do.body50.cleanup_crit_edge ], [ %call64., %do.end80 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown_notimeout(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_key_pinnacle(ptr nocapture noundef %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle, i32 noundef %parity_offset, i32 noundef %marker, i32 noundef %code_modulo) unnamed_addr #0 align 64 {
entry:
  %b = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  %0 = getelementptr inbounds [4 x i8], ptr %b, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %b, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %b, i32 0, i32 3
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %b, align 4
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %b, i32 noundef 4, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 4
  br i1 %cmp.not, label %for.body.preheader, label %do.body

for.body.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %marker)
  %cmp12 = icmp eq i32 %conv, %marker
  br i1 %cmp12, label %if.then14, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rc3 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %9 = ptrtoint ptr %rc3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rc3, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_name, align 8
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %12) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp7, i32 %call.i, i32 -5
  br label %cleanup

if.then14:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %add15 = add i32 %parity_offset, 1
  %rem = and i32 %add15, 3
  %arrayidx16 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %14 to i32
  %rem19 = and i32 %parity_offset, 3
  %arrayidx20 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem19
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.preheader.for.inc_crit_edge
  %parity.1 = phi i32 [ %conv21, %if.then14 ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %code.1 = phi i32 [ %conv17, %if.then14 ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %conv.1 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %marker)
  %cmp12.1 = icmp eq i32 %conv.1, %marker
  br i1 %cmp12.1, label %if.then14.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then14.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %add.1 = add i32 %parity_offset, 1
  %add15.1 = add i32 %parity_offset, 2
  %rem.1 = and i32 %add15.1, 3
  %arrayidx16.1 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem.1
  %19 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16.1, align 1
  %conv17.1 = zext i8 %20 to i32
  %rem19.1 = and i32 %add.1, 3
  %arrayidx20.1 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem19.1
  %21 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20.1, align 1
  %conv21.1 = zext i8 %22 to i32
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %for.inc.for.inc.1_crit_edge
  %parity.1.1 = phi i32 [ %conv21.1, %if.then14.1 ], [ %parity.1, %for.inc.for.inc.1_crit_edge ]
  %code.1.1 = phi i32 [ %conv17.1, %if.then14.1 ], [ %code.1, %for.inc.for.inc.1_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 2
  %conv.2 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %marker)
  %cmp12.2 = icmp eq i32 %conv.2, %marker
  br i1 %cmp12.2, label %if.then14.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then14.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %add.2 = add i32 %parity_offset, 2
  %add15.2 = add i32 %parity_offset, 3
  %rem.2 = and i32 %add15.2, 3
  %arrayidx16.2 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem.2
  %25 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.2, align 1
  %conv17.2 = zext i8 %26 to i32
  %rem19.2 = and i32 %add.2, 3
  %arrayidx20.2 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem19.2
  %27 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx20.2, align 1
  %conv21.2 = zext i8 %28 to i32
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then14.2, %for.inc.1.for.inc.2_crit_edge
  %parity.1.2 = phi i32 [ %conv21.2, %if.then14.2 ], [ %parity.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %code.1.2 = phi i32 [ %conv17.2, %if.then14.2 ], [ %code.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 1
  %conv.3 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3, i32 %marker)
  %cmp12.3 = icmp eq i32 %conv.3, %marker
  br i1 %cmp12.3, label %if.then14.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then14.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %add.3 = add i32 %parity_offset, 3
  %rem.3 = and i32 %parity_offset, 3
  %arrayidx16.3 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem.3
  %31 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx16.3, align 1
  %conv17.3 = zext i8 %32 to i32
  %rem19.3 = and i32 %add.3, 3
  %arrayidx20.3 = getelementptr [4 x i8], ptr %b, i32 0, i32 %rem19.3
  %33 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx20.3, align 1
  %conv21.3 = zext i8 %34 to i32
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then14.3, %for.inc.2.for.inc.3_crit_edge
  %parity.1.3 = phi i32 [ %conv21.3, %if.then14.3 ], [ %parity.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %code.1.3 = phi i32 [ %conv17.3, %if.then14.3 ], [ %code.1.2, %for.inc.2.for.inc.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parity.1.3)
  %cmp23 = icmp eq i32 %parity.1.3, 0
  br i1 %cmp23, label %for.inc.3.cleanup_crit_edge, label %if.end26

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %for.inc.3
  %old = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 3
  %35 = ptrtoint ptr %old to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %old, align 4
  %conv27 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %parity.1.3, i32 %conv27)
  %cmp28 = icmp eq i32 %parity.1.3, %conv27
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %conv32 = trunc i32 %parity.1.3 to i8
  %37 = ptrtoint ptr %old to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv32, ptr %old, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %marker)
  %cmp34 = icmp ne i32 %marker, 254
  %and = and i32 %code.1.3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp34, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.end38, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %rem39 = urem i32 %code.1.3, %code_modulo
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %protocol, align 4
  %39 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rem39, ptr %scancode, align 4
  %40 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %toggle, align 1
  %41 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool41.not = icmp eq i32 %41, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %do.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %rc47 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %42 = ptrtoint ptr %rc47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rc47, align 4
  %device_name48 = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %device_name48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_name48, align 8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %45, i32 noundef %rem39) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end38.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ %call., %do.end6 ], [ 0, %for.inc.3.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 1, %do.end45 ], [ 1, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_edge(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !109, !111, !113, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__param_disable_ir, !1, !"__param_disable_ir", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_irtype387, !1, !"__UNIQUE_ID_disable_irtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_ir388, !4, !"__UNIQUE_ID_disable_ir388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 20, i32 1}
!5 = !{ptr @__param_ir_debug, !6, !"__param_ir_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_ir_debugtype389, !6, !"__UNIQUE_ID_ir_debugtype389", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ir_debug390, !9, !"__UNIQUE_ID_ir_debug390", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 24, i32 1}
!10 = !{ptr @__param_pinnacle_remote, !11, !"__param_pinnacle_remote", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 27, i32 1}
!12 = !{ptr @__UNIQUE_ID_pinnacle_remotetype391, !11, !"__UNIQUE_ID_pinnacle_remotetype391", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pinnacle_remote392, !14, !"__UNIQUE_ID_pinnacle_remote392", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 28, i32 1}
!15 = !{ptr @saa7134_ir_open.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 485, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 528, i32 18}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 535, i32 18}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 541, i32 18}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 548, i32 18}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 566, i32 18}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 573, i32 18}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 580, i32 18}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 595, i32 18}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 609, i32 18}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 635, i32 18}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 641, i32 18}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 647, i32 18}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 656, i32 18}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 662, i32 18}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 676, i32 18}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 683, i32 18}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 690, i32 18}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 698, i32 18}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 705, i32 18}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 718, i32 18}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 724, i32 18}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 730, i32 18}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 735, i32 18}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 740, i32 18}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 746, i32 18}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 752, i32 18}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 759, i32 18}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 767, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @saa7134_input_init1._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @saa7134_input_init1._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 789, i32 39}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 813, i32 20}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 853, i32 3}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @saa7134_probe_i2c_ir._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @saa7134_probe_i2c_ir._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 859, i32 21}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 864, i32 25}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 867, i32 30}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 871, i32 30}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 876, i32 25}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 878, i32 29}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 882, i32 25}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 884, i32 29}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 896, i32 3}
!105 = !{ptr @saa7134_probe_i2c_ir._entry.43, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @saa7134_probe_i2c_ir._entry_ptr.45, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 901, i32 25}
!111 = !{ptr @saa7134_probe_i2c_ir._entry.49, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 917, i32 3}
!113 = !{ptr @saa7134_probe_i2c_ir._entry_ptr.50, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 923, i32 25}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 925, i32 29}
!118 = !{ptr @saa7134_probe_i2c_ir._entry.53, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 932, i32 3}
!120 = !{ptr @saa7134_probe_i2c_ir._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 959, i32 25}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 961, i32 29}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 973, i32 25}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 979, i32 3}
!129 = !{ptr @saa7134_probe_i2c_ir._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @saa7134_probe_i2c_ir._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @disable_ir, !132, !"disable_ir", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 18, i32 21}
!133 = !{ptr @ir_debug, !134, !"ir_debug", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 22, i32 21}
!135 = !{ptr @pinnacle_remote, !136, !"pinnacle_remote", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 26, i32 12}
!137 = !{ptr @__param_str_disable_ir, !1, !"__param_str_disable_ir", i1 false, i1 false}
!138 = !{ptr @__param_str_ir_debug, !6, !"__param_str_ir_debug", i1 false, i1 false}
!139 = !{ptr @__param_str_pinnacle_remote, !11, !"__param_str_pinnacle_remote", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 69, i32 2}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @build_key._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @build_key._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 343, i32 3}
!147 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @get_key_pinnacle._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @get_key_pinnacle._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 377, i32 2}
!152 = !{ptr @get_key_pinnacle._entry.65, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @get_key_pinnacle._entry_ptr.67, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 272, i32 3}
!156 = !{ptr @get_key_purpletv._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @get_key_purpletv._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 170, i32 3}
!160 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @get_key_msi_tvanywhere_plus._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @get_key_msi_tvanywhere_plus._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @get_key_msi_tvanywhere_plus._entry.71, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 191, i32 3}
!165 = !{ptr @get_key_msi_tvanywhere_plus._entry_ptr.72, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 204, i32 2}
!168 = !{ptr @get_key_msi_tvanywhere_plus._entry.73, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @get_key_msi_tvanywhere_plus._entry_ptr.75, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 222, i32 3}
!172 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @get_key_kworld_pc150u._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @get_key_kworld_pc150u._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @get_key_kworld_pc150u._entry.78, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 243, i32 3}
!177 = !{ptr @get_key_kworld_pc150u._entry_ptr.79, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 256, i32 2}
!180 = !{ptr @get_key_kworld_pc150u._entry.80, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @get_key_kworld_pc150u._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 314, i32 3}
!184 = !{ptr @get_key_beholdm6xx._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @get_key_beholdm6xx._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 116, i32 3}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @get_key_flydvb_trio._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @get_key_flydvb_trio._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 142, i32 3}
!193 = !{ptr @get_key_flydvb_trio._entry.86, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @get_key_flydvb_trio._entry_ptr.88, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @get_key_flydvb_trio._entry.89, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/saa7134/saa7134-input.c", i32 148, i32 3}
!197 = !{ptr @get_key_flydvb_trio._entry_ptr.90, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i8 0, i8 2}
!208 = !{i64 2158893099}
!209 = !{i64 5036675}
!210 = !{i64 2158893282}
!211 = !{i64 5036280}
!212 = !{i64 2158894255}
!213 = !{i64 2158894438}
!214 = !{i64 5036895}
!215 = !{i64 2158895107}
!216 = !{i64 2158822917}
!217 = !{i64 2158823100}
!218 = !{i64 2158824052}
!219 = !{i64 2158824235}
!220 = !{i64 2158825185}
!221 = !{i64 2158825368}
!222 = !{i64 2158826341}
!223 = !{i64 2158826524}
!224 = !{i64 2158827193}
!225 = !{i64 2158867728}
!226 = !{i64 2158867911}
!227 = !{i64 2158868875}
!228 = !{i64 2158869058}
!229 = !{i64 2158870028}
!230 = !{i64 2158870211}
!231 = !{i64 2158871175}
!232 = !{i64 2158871358}
!233 = !{i64 2158872326}
!234 = !{i64 2158872509}
!235 = !{i64 2158873473}
!236 = !{i64 2158873656}
!237 = !{i64 2158874631}
!238 = !{i64 2158874814}
!239 = !{!"auto-init"}
!240 = !{i64 2158841036}
!241 = !{i64 2158841219}
!242 = !{i64 2158842192}
!243 = !{i64 2158842375}
!244 = !{i64 2158843044}
!245 = !{i64 2158849708}
!246 = !{i64 2158849891}
!247 = !{i64 2158850864}
!248 = !{i64 2158851047}
!249 = !{i64 2158851716}
!250 = !{i64 2158857944}
!251 = !{i64 2158858127}
!252 = !{i64 2158859100}
!253 = !{i64 2158859283}
!254 = !{i64 2158859952}
!255 = !{i64 2158832145}
!256 = !{i64 2158832328}
!257 = !{i64 2158833301}
!258 = !{i64 2158833484}
!259 = !{i64 2158834153}
