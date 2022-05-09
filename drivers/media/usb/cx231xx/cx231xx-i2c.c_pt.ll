; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cx231xx_get_i2c_adap\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_get_i2c_adap\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_get_i2c_adap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_get_i2c_adap:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_get_i2c_adap\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_get_i2c_adap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109 }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.anon.106 = type { ptr, ptr, ptr }
%struct.anon.107 = type { ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.cx231xx_i2c_xfer_data = type { i8, i8, i8, i16, i8, ptr }

@__param_str_i2c_scan = internal constant [17 x i8] c"cx231xx.i2c_scan\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype303 = internal constant [30 x i8] c"cx231xx.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan304 = internal constant [50 x i8] c"cx231xx.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@__param_str_i2c_debug = internal constant [18 x i8] c"cx231xx.i2c_debug\00", align 1
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype305 = internal constant [31 x i8] c"cx231xx.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug306 = internal constant [51 x i8] c"cx231xx.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@cx231xx_do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 504, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"i2c scan: found device @ port %d addr 0x%x  [%s]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx231xx_do_i2c_scan\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/cx231xx/cx231xx-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_do_i2c_scan._entry_ptr = internal global ptr @cx231xx_do_i2c_scan._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@cx231xx_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @cx231xx_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"cx231xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@cx231xx_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 532, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c bus %d register FAILED\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx231xx_i2c_register\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cx231xx_i2c_register._entry_ptr = internal global ptr @cx231xx_i2c_register._entry, section ".printk_index", align 4
@__kstrtab_cx231xx_get_i2c_adap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_get_i2c_adap = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_get_i2c_adap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_get_i2c_adap to i32), ptr @__kstrtab_cx231xx_get_i2c_adap, ptr @__kstrtabns_cx231xx_get_i2c_adap }, section "___ksymtab_gpl+cx231xx_get_i2c_adap", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Aquarius\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"demod\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GeminiIII\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"colibri\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hammerhead\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CIR\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [98 x ptr], [30 x ptr] }>, [128 x i8] } { <{ [98 x ptr], [30 x ptr] }> <{ [98 x ptr] [ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr null, ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.17, ptr @.str.17], [30 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@cx231xx_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cx231xx_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s at %s: %s %s addr=0x%x len=%d:\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx231xx_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr = internal global ptr @cx231xx_i2c_xfer._entry, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nonstop\00", [24 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s at %s:  no device\0A\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.27 = internal global ptr @cx231xx_i2c_xfer._entry.25, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.30 = internal global ptr @cx231xx_i2c_xfer._entry.28, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.32 = internal global ptr @cx231xx_i2c_xfer._entry.31, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.35 = internal global ptr @cx231xx_i2c_xfer._entry.33, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s at %s: plus %s %s addr=0x%x len=%d:\00", [55 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.38 = internal global ptr @cx231xx_i2c_xfer._entry.36, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.40 = internal global ptr @cx231xx_i2c_xfer._entry.39, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.42 = internal global ptr @cx231xx_i2c_xfer._entry.41, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.44 = internal global ptr @cx231xx_i2c_xfer._entry.43, section ".printk_index", align 4
@cx231xx_i2c_xfer._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.20, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s at %s:  ERROR: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_i2c_xfer._entry_ptr.47 = internal global ptr @cx231xx_i2c_xfer._entry.45, section ".printk_index", align 4
@cx231xx_i2c_recv_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GPIO R E A D: Special case BUSY check \0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_i2c_recv_bytes\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_i2c_recv_bytes._entry_ptr = internal global ptr @cx231xx_i2c_recv_bytes._entry, section ".printk_index", align 4
@cx231xx_i2c_recv_bytes._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GPIO R E A D: addr 0x%x, len %d, saddr 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@cx231xx_i2c_recv_bytes._entry_ptr.52 = internal global ptr @cx231xx_i2c_recv_bytes._entry.50, section ".printk_index", align 4
@cx231xx_i2c_recv_bytes_with_saddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"i2c_read: addr 0x%x, len %d, saddr 0x%x, len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cx231xx_i2c_recv_bytes_with_saddr\00", [62 x i8] zeroinitializer }, align 32
@cx231xx_i2c_recv_bytes_with_saddr._entry_ptr = internal global ptr @cx231xx_i2c_recv_bytes_with_saddr._entry, section ".printk_index", align 4
@cx231xx_i2c_send_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"GPIO WRITE: addr 0x%x, len %d, saddr 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_i2c_send_bytes\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_i2c_send_bytes._entry_ptr = internal global ptr @cx231xx_i2c_send_bytes._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 13]
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 22, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 26, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 500, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"cx231xx_adap_template\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 448, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 524, i32 59 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 531, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 466, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 461, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 465, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 462, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 463, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 464, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 467, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 468, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 460, i32 20 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"cx231xx_algo\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 443, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 372, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 379, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 389, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 397, i32 6 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 398, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 401, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 409, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 416, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 423, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 428, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 203, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 220, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 288, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [43 x i8] c"../drivers/media/usb/cx231xx/cx231xx-i2c.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 118, i32 5 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_i2c_debug306, ptr @__UNIQUE_ID_i2c_debugtype305, ptr @__UNIQUE_ID_i2c_scan304, ptr @__UNIQUE_ID_i2c_scantype303, ptr @__ksymtab_cx231xx_get_i2c_adap, ptr @__param_i2c_debug, ptr @__param_i2c_scan, ptr @cx231xx_do_i2c_scan._entry, ptr @cx231xx_do_i2c_scan._entry_ptr, ptr @cx231xx_i2c_recv_bytes._entry, ptr @cx231xx_i2c_recv_bytes._entry.50, ptr @cx231xx_i2c_recv_bytes._entry_ptr, ptr @cx231xx_i2c_recv_bytes._entry_ptr.52, ptr @cx231xx_i2c_recv_bytes_with_saddr._entry, ptr @cx231xx_i2c_recv_bytes_with_saddr._entry_ptr, ptr @cx231xx_i2c_register._entry, ptr @cx231xx_i2c_register._entry_ptr, ptr @cx231xx_i2c_send_bytes._entry, ptr @cx231xx_i2c_send_bytes._entry_ptr, ptr @cx231xx_i2c_xfer._entry, ptr @cx231xx_i2c_xfer._entry.25, ptr @cx231xx_i2c_xfer._entry.28, ptr @cx231xx_i2c_xfer._entry.31, ptr @cx231xx_i2c_xfer._entry.33, ptr @cx231xx_i2c_xfer._entry.36, ptr @cx231xx_i2c_xfer._entry.39, ptr @cx231xx_i2c_xfer._entry.41, ptr @cx231xx_i2c_xfer._entry.43, ptr @cx231xx_i2c_xfer._entry.45, ptr @cx231xx_i2c_xfer._entry_ptr, ptr @cx231xx_i2c_xfer._entry_ptr.27, ptr @cx231xx_i2c_xfer._entry_ptr.30, ptr @cx231xx_i2c_xfer._entry_ptr.32, ptr @cx231xx_i2c_xfer._entry_ptr.35, ptr @cx231xx_i2c_xfer._entry_ptr.38, ptr @cx231xx_i2c_xfer._entry_ptr.40, ptr @cx231xx_i2c_xfer._entry_ptr.42, ptr @cx231xx_i2c_xfer._entry_ptr.44, ptr @cx231xx_i2c_xfer._entry_ptr.47, ptr @i2c_scan, ptr @i2c_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cx231xx_adap_template, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @i2c_devs, ptr @cx231xx_algo, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.34, ptr @.str.37, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_xfer._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_recv_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_recv_bytes._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_recv_bytes_with_saddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_i2c_send_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_do_i2c_scan(ptr noundef %dev, i32 noundef %i2c_port) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !126
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf1, align 4
  %6 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_scan_running = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 7
  %7 = ptrtoint ptr %i2c_scan_running to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %i2c_scan_running, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %i2c_scan_running, align 4
  %8 = zext i32 %i2c_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i2c_port, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 0, i32 2
  br label %cx231xx_get_i2c_adap.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap4.i = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 1, i32 2
  br label %cx231xx_get_i2c_adap.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap8.i = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 2, i32 2
  br label %cx231xx_get_i2c_adap.exit

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %muxc.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %9 = ptrtoint ptr %muxc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %muxc.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_mux_core, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 4
  br label %cx231xx_get_i2c_adap.exit

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %muxc12.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %13 = ptrtoint ptr %muxc12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %muxc12.i, align 8
  %arrayidx14.i = getelementptr %struct.i2c_mux_core, ptr %14, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14.i, align 4
  br label %cx231xx_get_i2c_adap.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/usb/cx231xx/cx231xx-i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

cx231xx_get_i2c_adap.exit:                        ; preds = %sw.bb11.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %16, %sw.bb11.i ], [ %12, %sw.bb9.i ], [ %i2c_adap8.i, %sw.bb5.i ], [ %i2c_adap4.i, %sw.bb1.i ], [ %i2c_adap.i, %sw.bb.i ]
  %dev8 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cx231xx_get_i2c_adap.exit
  %i.028 = phi i32 [ 0, %cx231xx_get_i2c_adap.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %i.028 to i16
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %msg, align 4
  %call3 = call i32 @i2c_transfer(ptr noundef %retval.0.i, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev8, align 8
  %shl = shl nuw i32 %i.028, 1
  %arrayidx = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.028
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %21, null
  %spec.select = select i1 %tobool9.not, ptr @.str.5, ptr %21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %i2c_port, i32 noundef %shl, ptr noundef nonnull %spec.select) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %i2c_scan_running to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load12 = load i8, ptr %i2c_scan_running, align 4
  %bf.clear13 = and i8 %bf.load12, -9
  store i8 %bf.clear13, ptr %i2c_scan_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx231xx_get_i2c_adap(ptr noundef readonly %dev, i32 noundef %i2c_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %i2c_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %i2c_port, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 0, i32 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 1, i32 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap8 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 2, i32 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %muxc = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %muxc, align 8
  %adapter = getelementptr inbounds %struct.i2c_mux_core, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %muxc12 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %muxc12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %muxc12, align 8
  %arrayidx14 = getelementptr %struct.i2c_mux_core, ptr %6, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/usb/cx231xx/cx231xx-i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %8, %sw.bb11 ], [ %4, %sw.bb9 ], [ %i2c_adap8, %sw.bb5 ], [ %i2c_adap4, %sw.bb1 ], [ %i2c_adap, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_i2c_register(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cx231xx_send_usb_command = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %cx231xx_send_usb_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx231xx_send_usb_command, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_adap = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %i2c_adap, ptr @cx231xx_adap_template, i32 1360)
  %dev2 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 8
  %parent = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %name = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 2, i32 12
  %nr = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 1
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %9)
  %algo_data = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bus, ptr %algo_data, align 4
  %v4l2_dev = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9
  %driver_data.i.i = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %call12 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #7
  %i2c_rc = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 3
  %12 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call12, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %do.end

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 8
  %15 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.7, i32 noundef %16) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %17 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_rc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_i2c_unregister(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_rc = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap = getelementptr inbounds %struct.cx231xx_i2c, ptr %bus, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_i2c_mux_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 20, i32 1, i32 2
  %dev1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call ptr @i2c_mux_alloc(ptr noundef %i2c_adap, ptr noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @cx231xx_i2c_mux_select, ptr noundef null) #7
  %muxc = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %muxc, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %priv, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_i2c_mux_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan_id)
  %tobool = icmp ne i32 %chan_id, 0
  %call1 = tail call i32 @cx231xx_enable_i2c_port_3(ptr noundef %1, i1 noundef zeroext %tobool) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_i2c_mux_register(ptr nocapture noundef readonly %dev, i32 noundef %mux_no) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %muxc = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %muxc, align 8
  %call = tail call i32 @i2c_mux_add_adapter(ptr noundef %1, i32 noundef 0, i32 noundef %mux_no, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_i2c_mux_unregister(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %muxc = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %muxc, align 8
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %req_data.i380 = alloca %struct.cx231xx_i2c_xfer_data, align 4
  %req_data.i341 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %req_data.i334 = alloca %struct.cx231xx_i2c_xfer_data, align 4
  %req_data.i = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %buf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %i2c_lock = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp444 = icmp sgt i32 %num, 0
  br i1 %cmp444, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  %direction102.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i334, i32 0, i32 1
  %saddr_len103.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i334, i32 0, i32 2
  %saddr_dat104.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i334, i32 0, i32 3
  %buf_size107.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i334, i32 0, i32 4
  %p_buffer109.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i334, i32 0, i32 5
  %nr = getelementptr inbounds %struct.cx231xx_i2c, ptr %1, i32 0, i32 1
  %4 = add nsw i32 %num, -2
  %direction.i373 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i341, i32 0, i32 1
  %saddr_len.i374 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i341, i32 0, i32 2
  %saddr_dat.i375 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i341, i32 0, i32 3
  %buf_size.i376 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i341, i32 0, i32 4
  %p_buffer.i377 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i341, i32 0, i32 5
  %direction109.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i380, i32 0, i32 1
  %saddr_len110.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i380, i32 0, i32 2
  %saddr_dat111.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i380, i32 0, i32 3
  %buf_size114.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i380, i32 0, i32 4
  %p_buffer116.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i380, i32 0, i32 5
  %p_buffer.i = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, ptr %req_data.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc226.for.body_crit_edge, %for.body.lr.ph
  %i.0445 = phi i32 [ 0, %for.body.lr.ph ], [ %inc227, %for.inc226.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %6 to i32
  %7 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp ugt i32 %7, 1
  br i1 %cmp3, label %do.end, label %for.body.do.end14_crit_edge

for.body.do.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %cond = select i1 %tobool.not, ptr @.str.22, ptr @.str.21
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0445, i32 %sub)
  %cmp8 = icmp eq i32 %i.0445, %sub
  %cond10 = select i1 %cmp8, ptr @.str.23, ptr @.str.24
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv12 = zext i16 %12 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, ptr noundef nonnull %cond10, i32 noundef %conv, i32 noundef %conv12) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end, %for.body.do.end14_crit_edge
  %len16 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 2
  %13 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.end14
  %15 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %algo_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_data.i) #7
  %19 = ptrtoint ptr %req_data.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -71775023844556289, ptr %req_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %buf.i, align 1, !annotation !126
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 4
  %conv.i = trunc i16 %22 to i8
  %23 = ptrtoint ptr %req_data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %req_data.i, align 8
  %24 = ptrtoint ptr %p_buffer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i, ptr %p_buffer.i, align 8
  %cx231xx_send_usb_command.i = getelementptr inbounds %struct.cx231xx, ptr %18, i32 0, i32 64
  %25 = ptrtoint ptr %cx231xx_send_usb_command.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cx231xx_send_usb_command.i, align 4
  %call.i = call i32 %26(ptr noundef %16, ptr noundef nonnull %req_data.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %do.body24, label %if.then18.if.end216_crit_edge

if.then18.if.end216_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

do.body24:                                        ; preds = %if.then18
  %27 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp25 = icmp ugt i32 %27, 1
  br i1 %cmp25, label %do.end30, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %3, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.else:                                          ; preds = %do.end14
  %flags41 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 1
  %28 = ptrtoint ptr %flags41 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags41, align 2
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool44.not = icmp eq i16 %30, 0
  br i1 %tobool44.not, label %if.else67, label %if.then45

if.then45:                                        ; preds = %if.else
  %31 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %algo_data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_data.i334) #7
  %35 = call ptr @memset(ptr %req_data.i334, i32 255, i32 12)
  %nr.i.i = getelementptr inbounds %struct.cx231xx_i2c, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i.i.i = icmp eq i32 %37, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then45.get_real_i2c_port.exit.i.i_crit_edge

if.then45.get_real_i2c_port.exit.i.i_crit_edge:   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_real_i2c_port.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %port_3_switch_enabled.i.i.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 23
  %38 = ptrtoint ptr %port_3_switch_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.i.i = load i8, ptr %port_3_switch_enabled.i.i.i, align 4
  %39 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i.i = icmp eq i8 %39, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 3, i32 4
  br label %get_real_i2c_port.exit.i.i

get_real_i2c_port.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then45.get_real_i2c_port.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %cond.i.i.i, %if.then.i.i.i ], [ %37, %if.then45.get_real_i2c_port.exit.i.i_crit_edge ]
  %tuner_i2c_master.i.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 4, i32 17
  %40 = ptrtoint ptr %tuner_i2c_master.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tuner_i2c_master.i.i, align 8
  %conv.i.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %retval.0.i.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %get_real_i2c_port.exit.i.i.if.else96.i_crit_edge

get_real_i2c_port.exit.i.i.if.else96.i_crit_edge: ; preds = %get_real_i2c_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else96.i

if.end.i.i:                                       ; preds = %get_real_i2c_port.exit.i.i
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx, align 4
  %conv2.i.i = zext i16 %43 to i32
  %tuner_addr.i.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %tuner_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tuner_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv2.i.i)
  %cmp4.not.i.i = icmp eq i32 %45, %conv2.i.i
  br i1 %cmp4.not.i.i, label %is_tuner.exit.i, label %if.end.i.i.if.else96.i_crit_edge

if.end.i.i.if.else96.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else96.i

is_tuner.exit.i:                                  ; preds = %if.end.i.i
  %tuner_type8.i.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 18
  %46 = ptrtoint ptr %tuner_type8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tuner_type8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %47)
  %cmp9.not.i.i = icmp eq i32 %47, 76
  br i1 %cmp9.not.i.i, label %if.then.i, label %is_tuner.exit.i.if.else96.i_crit_edge

is_tuner.exit.i.if.else96.i_crit_edge:            ; preds = %is_tuner.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else96.i

if.then.i:                                        ; preds = %is_tuner.exit.i
  %48 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len16, align 4
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %49, label %if.then.i.if.end17.i_crit_edge [
    i16 2, label %if.then3.i
    i16 1, label %if.then13.i
  ]

if.then.i.if.end17.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i336 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %51 = ptrtoint ptr %buf.i336 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i336, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %conv4.i = zext i8 %54 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %arrayidx6.i = getelementptr i8, ptr %52, i32 1
  %55 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %56 to i16
  %or.i = or i16 %shl.i, %conv7.i
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf14.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %57 = ptrtoint ptr %buf14.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf14.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv16.i = zext i8 %60 to i16
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.then3.i, %if.then.i.if.end17.i_crit_edge
  %saddr.0.i = phi i16 [ %or.i, %if.then3.i ], [ %conv16.i, %if.then13.i ], [ 0, %if.then.i.if.end17.i_crit_edge ]
  %xc_fw_load_done.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 23
  %61 = ptrtoint ptr %xc_fw_load_done.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i = load i8, ptr %xc_fw_load_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end17.i.if.end77.i_crit_edge, label %if.then18.i

if.end17.i.if.end77.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then18.i:                                      ; preds = %if.end17.i
  %62 = zext i16 %saddr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %saddr.0.i, label %if.then18.i.if.end77.i_crit_edge [
    i16 9, label %do.body.i
    i16 4, label %sw.bb38.i
  ]

if.then18.i.if.end77.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

do.body.i:                                        ; preds = %if.then18.i
  %63 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp20.not.i = icmp eq i32 %63, 0
  br i1 %cmp20.not.i, label %do.body.i.do.end27.i_crit_edge, label %do.end.i

do.body.i.do.end27.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #10
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end.i, %do.body.i.do.end27.i_crit_edge
  %buf28.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %64 = ptrtoint ptr %buf28.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf28.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %65, align 1
  %67 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %cmp32.i = icmp eq i16 %68, 2
  br i1 %cmp32.i, label %if.then34.i, label %do.end27.i.cx231xx_i2c_recv_bytes.exit_crit_edge

do.end27.i.cx231xx_i2c_recv_bytes.exit_crit_edge: ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx231xx_i2c_recv_bytes.exit

if.then34.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %buf28.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf28.i, align 4
  %arrayidx36.i = getelementptr i8, ptr %70, i32 1
  %71 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx36.i, align 1
  br label %cx231xx_i2c_recv_bytes.exit

sw.bb38.i:                                        ; preds = %if.then18.i
  %72 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp42.not.i = icmp eq i32 %72, 0
  br i1 %cmp42.not.i, label %sw.bb38.i.do.end63.i_crit_edge, label %do.end47.i

sw.bb38.i.do.end63.i_crit_edge:                   ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63.i

do.end47.i:                                       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv51.i = zext i16 %49 to i32
  %buf52.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %73 = ptrtoint ptr %buf52.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf52.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  %conv54.i = zext i8 %76 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 8
  %arrayidx57.i = getelementptr i8, ptr %74, i32 1
  %77 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = zext i8 %78 to i32
  %or59.i = or i32 %shl55.i, %conv58.i
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv2.i.i, i32 noundef %conv51.i, i32 noundef %or59.i) #10
  br label %do.end63.i

do.end63.i:                                       ; preds = %do.end47.i, %sw.bb38.i.do.end63.i_crit_edge
  %cx231xx_gpio_i2c_write.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 66
  %79 = ptrtoint ptr %cx231xx_gpio_i2c_write.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cx231xx_gpio_i2c_write.i, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx, align 4
  %conv65.i = trunc i16 %82 to i8
  %buf66.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %83 = ptrtoint ptr %buf66.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf66.i, align 4
  %85 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len16, align 4
  %conv68.i = trunc i16 %86 to i8
  %call69.i = call i32 %80(ptr noundef %34, i8 noundef zeroext %conv65.i, ptr noundef %84, i8 noundef zeroext %conv68.i) #7
  %cx231xx_gpio_i2c_read.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 65
  %87 = ptrtoint ptr %cx231xx_gpio_i2c_read.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cx231xx_gpio_i2c_read.i, align 8
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx, align 4
  %conv71.i = trunc i16 %90 to i8
  %91 = ptrtoint ptr %buf66.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf66.i, align 4
  %93 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %len16, align 4
  %conv74.i = trunc i16 %94 to i8
  %call75.i = call i32 %88(ptr noundef %34, i8 noundef zeroext %conv71.i, ptr noundef %92, i8 noundef zeroext %conv74.i) #7
  br label %cx231xx_i2c_recv_bytes.exit

if.end77.i:                                       ; preds = %if.then18.i.if.end77.i_crit_edge, %if.end17.i.if.end77.i_crit_edge
  %conv79.i = trunc i16 %43 to i8
  %95 = ptrtoint ptr %req_data.i334 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv79.i, ptr %req_data.i334, align 4
  %96 = ptrtoint ptr %flags41 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags41, align 2
  %conv80.i = trunc i16 %97 to i8
  %98 = ptrtoint ptr %direction102.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv80.i, ptr %direction102.i, align 1
  %conv82.i = trunc i16 %49 to i8
  %99 = ptrtoint ptr %saddr_len103.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv82.i, ptr %saddr_len103.i, align 2
  %buf83.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %100 = ptrtoint ptr %buf83.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf83.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv85.i = zext i8 %103 to i16
  %shl86.i = shl nuw i16 %conv85.i, 8
  %arrayidx88.i = getelementptr i8, ptr %101, i32 1
  %104 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %105 to i16
  %or90.i = or i16 %shl86.i, %conv89.i
  %106 = ptrtoint ptr %saddr_dat104.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %or90.i, ptr %saddr_dat104.i, align 4
  %107 = ptrtoint ptr %buf_size107.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv82.i, ptr %buf_size107.i, align 2
  br label %if.end112.i

if.else96.i:                                      ; preds = %is_tuner.exit.i.if.else96.i_crit_edge, %if.end.i.i.if.else96.i_crit_edge, %get_real_i2c_port.exit.i.i.if.else96.i_crit_edge
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx, align 4
  %conv98.i = trunc i16 %109 to i8
  %110 = ptrtoint ptr %req_data.i334 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv98.i, ptr %req_data.i334, align 4
  %111 = ptrtoint ptr %flags41 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %flags41, align 2
  %conv101.i = trunc i16 %112 to i8
  %113 = ptrtoint ptr %direction102.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv101.i, ptr %direction102.i, align 1
  %114 = ptrtoint ptr %saddr_len103.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %saddr_len103.i, align 2
  %115 = ptrtoint ptr %saddr_dat104.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %saddr_dat104.i, align 4
  %116 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %len16, align 4
  %conv106.i = trunc i16 %117 to i8
  %118 = ptrtoint ptr %buf_size107.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv106.i, ptr %buf_size107.i, align 2
  %buf108.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %119 = ptrtoint ptr %buf108.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buf108.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else96.i, %if.end77.i
  %.sink.i = phi ptr [ %120, %if.else96.i ], [ %101, %if.end77.i ]
  %121 = ptrtoint ptr %p_buffer109.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %.sink.i, ptr %p_buffer109.i, align 4
  %cx231xx_send_usb_command110.i = getelementptr inbounds %struct.cx231xx, ptr %34, i32 0, i32 64
  %122 = ptrtoint ptr %cx231xx_send_usb_command110.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cx231xx_send_usb_command110.i, align 4
  %call111.i = call i32 %123(ptr noundef %32, ptr noundef nonnull %req_data.i334) #7
  %124 = call i32 @llvm.smin.i32(i32 %call111.i, i32 0) #7
  br label %cx231xx_i2c_recv_bytes.exit

cx231xx_i2c_recv_bytes.exit:                      ; preds = %if.end112.i, %do.end63.i, %if.then34.i, %do.end27.i.cx231xx_i2c_recv_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ %call75.i, %do.end63.i ], [ %124, %if.end112.i ], [ 0, %if.then34.i ], [ 0, %do.end27.i.cx231xx_i2c_recv_bytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_data.i334) #7
  %125 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp48 = icmp ugt i32 %125, 1
  br i1 %cmp48, label %for.cond51.preheader, label %cx231xx_i2c_recv_bytes.exit.if.end212_crit_edge

cx231xx_i2c_recv_bytes.exit.if.end212_crit_edge:  ; preds = %cx231xx_i2c_recv_bytes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

for.cond51.preheader:                             ; preds = %cx231xx_i2c_recv_bytes.exit
  %126 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp55433.not = icmp eq i16 %127, 0
  br i1 %cmp55433.not, label %for.cond51.preheader.if.end212_crit_edge, label %do.end60.lr.ph

for.cond51.preheader.if.end212_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

do.end60.lr.ph:                                   ; preds = %for.cond51.preheader
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  br label %do.end60

do.end60:                                         ; preds = %do.end60.do.end60_crit_edge, %do.end60.lr.ph
  %byte.0434 = phi i32 [ 0, %do.end60.lr.ph ], [ %inc, %do.end60.do.end60_crit_edge ]
  %128 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buf, align 4
  %arrayidx63 = getelementptr i8, ptr %129, i32 %byte.0434
  %130 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %131 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv64) #10
  %inc = add nuw nsw i32 %byte.0434, 1
  %132 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %len16, align 4
  %conv54 = zext i16 %133 to i32
  %cmp55 = icmp ult i32 %inc, %conv54
  br i1 %cmp55, label %do.end60.do.end60_crit_edge, label %do.end60.if.end212_crit_edge

do.end60.if.end212_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

do.end60.do.end60_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.else67:                                        ; preds = %if.else
  %add = add nsw i32 %i.0445, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp68 = icmp slt i32 %add, %num
  br i1 %cmp68, label %land.lhs.true, label %if.else67.if.else184_crit_edge

if.else67.if.else184_crit_edge:                   ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else184

land.lhs.true:                                    ; preds = %if.else67
  %arrayidx71 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %flags72 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %134 = ptrtoint ptr %flags72 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %flags72, align 2
  %136 = and i16 %135, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool75.not = icmp eq i16 %136, 0
  br i1 %tobool75.not, label %land.lhs.true.if.else184_crit_edge, label %land.lhs.true76

land.lhs.true.if.else184_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else184

land.lhs.true76:                                  ; preds = %land.lhs.true
  %137 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx, align 4
  %139 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx71, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %140)
  %cmp84 = icmp eq i16 %138, %140
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp90 = icmp ult i16 %14, 3
  %or.cond = select i1 %cmp84, i1 %cmp90, i1 false
  br i1 %or.cond, label %land.lhs.true92, label %land.lhs.true76.if.else184_crit_edge

land.lhs.true76.if.else184_crit_edge:             ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else184

land.lhs.true92:                                  ; preds = %land.lhs.true76
  %141 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %142)
  %cmp93 = icmp slt i32 %142, 3
  br i1 %cmp93, label %if.then95, label %land.lhs.true92.if.else184_crit_edge

land.lhs.true92.if.else184_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else184

if.then95:                                        ; preds = %land.lhs.true92
  %143 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp96 = icmp ugt i32 %143, 1
  br i1 %cmp96, label %for.cond99.preheader, label %if.then95.do.end153_crit_edge

if.then95.do.end153_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end153

for.cond99.preheader:                             ; preds = %if.then95
  %144 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %cmp103436.not = icmp eq i16 %145, 0
  br i1 %cmp103436.not, label %for.cond99.preheader.do.body124_crit_edge, label %do.end108.lr.ph

for.cond99.preheader.do.body124_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124

do.end108.lr.ph:                                  ; preds = %for.cond99.preheader
  %buf111 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  br label %do.end108

do.end108:                                        ; preds = %do.end108.do.end108_crit_edge, %do.end108.lr.ph
  %byte.1437 = phi i32 [ 0, %do.end108.lr.ph ], [ %inc116, %do.end108.do.end108_crit_edge ]
  %146 = ptrtoint ptr %buf111 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %buf111, align 4
  %arrayidx112 = getelementptr i8, ptr %147, i32 %byte.1437
  %148 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %149 to i32
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv113) #10
  %inc116 = add nuw nsw i32 %byte.1437, 1
  %150 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %len16, align 4
  %conv102 = zext i16 %151 to i32
  %cmp103 = icmp ult i32 %inc116, %conv102
  br i1 %cmp103, label %do.end108.do.end108_crit_edge, label %do.end108.do.body124_crit_edge

do.end108.do.body124_crit_edge:                   ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body124

do.end108.do.end108_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

do.body124:                                       ; preds = %do.end108.do.body124_crit_edge, %for.cond99.preheader.do.body124_crit_edge
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  %.pr = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp125 = icmp ugt i32 %.pr, 1
  br i1 %cmp125, label %do.end130, label %do.body124.do.end153_crit_edge

do.body124.do.end153_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end153

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %flags72 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %flags72, align 2
  %154 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool139.not = icmp eq i16 %154, 0
  %cond140 = select i1 %tobool139.not, ptr @.str.22, ptr @.str.21
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0445, i32 %4)
  %cmp143 = icmp eq i32 %i.0445, %4
  %cond145 = select i1 %cmp143, ptr @.str.23, ptr @.str.24
  %len148 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %155 = ptrtoint ptr %len148 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %len148, align 4
  %conv149 = zext i16 %156 to i32
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond140, ptr noundef nonnull %cond145, i32 noundef %conv, i32 noundef %conv149) #10
  br label %do.end153

do.end153:                                        ; preds = %do.end130, %do.body124.do.end153_crit_edge, %if.then95.do.end153_crit_edge
  %157 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %algo_data, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_data.i341) #7
  %161 = ptrtoint ptr %req_data.i341 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 -1, ptr %req_data.i341, align 8
  %162 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %len16, align 4
  %164 = zext i16 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %163, label %do.end153.if.end16.i_crit_edge [
    i16 2, label %if.then.i347
    i16 1, label %if.then12.i
  ]

do.end153.if.end16.i_crit_edge:                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then.i347:                                     ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i344 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %165 = ptrtoint ptr %buf.i344 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %buf.i344, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 1
  %conv3.i = zext i8 %168 to i16
  %shl.i345 = shl nuw i16 %conv3.i, 8
  %arrayidx5.i = getelementptr i8, ptr %166, i32 1
  %169 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %170 to i16
  %or.i346 = or i16 %shl.i345, %conv6.i
  br label %if.end16.i

if.then12.i:                                      ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #9
  %buf13.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %171 = ptrtoint ptr %buf13.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %buf13.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %172, align 1
  %conv15.i = zext i8 %174 to i16
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.then.i347, %do.end153.if.end16.i_crit_edge
  %saddr.0.i348 = phi i16 [ %or.i346, %if.then.i347 ], [ %conv15.i, %if.then12.i ], [ 0, %do.end153.if.end16.i_crit_edge ]
  %nr.i.i349 = getelementptr inbounds %struct.cx231xx_i2c, ptr %158, i32 0, i32 1
  %175 = ptrtoint ptr %nr.i.i349 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nr.i.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %176)
  %cmp.i.i.i350 = icmp eq i32 %176, 1
  br i1 %cmp.i.i.i350, label %if.then.i.i.i355, label %if.end16.i.get_real_i2c_port.exit.i.i360_crit_edge

if.end16.i.get_real_i2c_port.exit.i.i360_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_real_i2c_port.exit.i.i360

if.then.i.i.i355:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_3_switch_enabled.i.i.i351 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 23
  %177 = ptrtoint ptr %port_3_switch_enabled.i.i.i351 to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load.i.i.i352 = load i8, ptr %port_3_switch_enabled.i.i.i351, align 4
  %178 = and i8 %bf.load.i.i.i352, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.i.i.i353 = icmp eq i8 %178, 0
  %cond.i.i.i354 = select i1 %tobool.not.i.i.i353, i32 3, i32 4
  br label %get_real_i2c_port.exit.i.i360

get_real_i2c_port.exit.i.i360:                    ; preds = %if.then.i.i.i355, %if.end16.i.get_real_i2c_port.exit.i.i360_crit_edge
  %retval.0.i.i.i356 = phi i32 [ %cond.i.i.i354, %if.then.i.i.i355 ], [ %176, %if.end16.i.get_real_i2c_port.exit.i.i360_crit_edge ]
  %tuner_i2c_master.i.i357 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 4, i32 17
  %179 = ptrtoint ptr %tuner_i2c_master.i.i357 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %tuner_i2c_master.i.i357, align 8
  %conv.i.i358 = zext i8 %180 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i356, i32 %conv.i.i358)
  %cmp.not.i.i359 = icmp eq i32 %retval.0.i.i.i356, %conv.i.i358
  br i1 %cmp.not.i.i359, label %if.end.i.i364, label %get_real_i2c_port.exit.i.i360.if.end54.i_crit_edge

get_real_i2c_port.exit.i.i360.if.end54.i_crit_edge: ; preds = %get_real_i2c_port.exit.i.i360
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.end.i.i364:                                    ; preds = %get_real_i2c_port.exit.i.i360
  %181 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %arrayidx71, align 4
  %conv2.i.i361 = zext i16 %182 to i32
  %tuner_addr.i.i362 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 4, i32 3
  %183 = ptrtoint ptr %tuner_addr.i.i362 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tuner_addr.i.i362, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %conv2.i.i361)
  %cmp4.not.i.i363 = icmp eq i32 %184, %conv2.i.i361
  br i1 %cmp4.not.i.i363, label %is_tuner.exit.i367, label %if.end.i.i364.if.end54.i_crit_edge

if.end.i.i364.if.end54.i_crit_edge:               ; preds = %if.end.i.i364
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

is_tuner.exit.i367:                               ; preds = %if.end.i.i364
  %tuner_type8.i.i365 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 18
  %185 = ptrtoint ptr %tuner_type8.i.i365 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tuner_type8.i.i365, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %186)
  %cmp9.not.i.i366 = icmp eq i32 %186, 76
  br i1 %cmp9.not.i.i366, label %if.then17.i, label %is_tuner.exit.i367.if.end54.i_crit_edge

is_tuner.exit.i367.if.end54.i_crit_edge:          ; preds = %is_tuner.exit.i367
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then17.i:                                      ; preds = %is_tuner.exit.i367
  %len18.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %187 = ptrtoint ptr %len18.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %len18.i, align 4
  %conv19.i = zext i16 %188 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %188)
  %cmp20.i = icmp ult i16 %188, 16
  br i1 %cmp20.i, label %do.body.i368, label %if.then17.i.if.end54.i_crit_edge

if.then17.i.if.end54.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

do.body.i368:                                     ; preds = %if.then17.i
  %189 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp23.not.i = icmp eq i32 %189, 0
  br i1 %cmp23.not.i, label %do.body.i368.do.end36.i_crit_edge, label %do.end.i369

do.body.i368.do.end36.i_crit_edge:                ; preds = %do.body.i368
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

do.end.i369:                                      ; preds = %do.body.i368
  call void @__sanitizer_cov_trace_pc() #9
  %conv30.i = zext i16 %saddr.0.i348 to i32
  %conv32.i = zext i16 %163 to i32
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv2.i.i361, i32 noundef %conv19.i, i32 noundef %conv30.i, i32 noundef %conv32.i) #10
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end.i369, %do.body.i368.do.end36.i_crit_edge
  %190 = add i16 %saddr.0.i348, -4
  %switch.and.i = and i16 %190, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.not.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.not.i, label %if.then39.i, label %do.end36.i.if.end54.i_crit_edge

do.end36.i.if.end54.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then39.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %cx231xx_gpio_i2c_write.i370 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 66
  %191 = ptrtoint ptr %cx231xx_gpio_i2c_write.i370 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cx231xx_gpio_i2c_write.i370, align 4
  %193 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %arrayidx, align 4
  %conv41.i = trunc i16 %194 to i8
  %buf42.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %195 = ptrtoint ptr %buf42.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %buf42.i, align 4
  %197 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %len16, align 4
  %conv44.i = trunc i16 %198 to i8
  %call45.i = call i32 %192(ptr noundef %160, i8 noundef zeroext %conv41.i, ptr noundef %196, i8 noundef zeroext %conv44.i) #7
  %cx231xx_gpio_i2c_read.i371 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 65
  %199 = ptrtoint ptr %cx231xx_gpio_i2c_read.i371 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cx231xx_gpio_i2c_read.i371, align 8
  %201 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx71, align 4
  %conv47.i = trunc i16 %202 to i8
  %buf48.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %203 = ptrtoint ptr %buf48.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %buf48.i, align 4
  %205 = ptrtoint ptr %len18.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %len18.i, align 4
  %conv50.i = trunc i16 %206 to i8
  %call51.i = call i32 %200(ptr noundef %160, i8 noundef zeroext %conv47.i, ptr noundef %204, i8 noundef zeroext %conv50.i) #7
  br label %cx231xx_i2c_recv_bytes_with_saddr.exit

if.end54.i:                                       ; preds = %do.end36.i.if.end54.i_crit_edge, %if.then17.i.if.end54.i_crit_edge, %is_tuner.exit.i367.if.end54.i_crit_edge, %if.end.i.i364.if.end54.i_crit_edge, %get_real_i2c_port.exit.i.i360.if.end54.i_crit_edge
  %207 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx71, align 4
  %conv56.i = trunc i16 %208 to i8
  %209 = ptrtoint ptr %req_data.i341 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv56.i, ptr %req_data.i341, align 8
  %210 = ptrtoint ptr %flags72 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %flags72, align 2
  %conv57.i = trunc i16 %211 to i8
  %212 = ptrtoint ptr %direction.i373 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv57.i, ptr %direction.i373, align 1
  %213 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %len16, align 4
  %conv59.i = trunc i16 %214 to i8
  %215 = ptrtoint ptr %saddr_len.i374 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv59.i, ptr %saddr_len.i374, align 2
  %216 = ptrtoint ptr %saddr_dat.i375 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %saddr.0.i348, ptr %saddr_dat.i375, align 4
  %len60.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %217 = ptrtoint ptr %len60.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %len60.i, align 4
  %conv61.i = trunc i16 %218 to i8
  %219 = ptrtoint ptr %buf_size.i376 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv61.i, ptr %buf_size.i376, align 2
  %buf62.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %220 = ptrtoint ptr %buf62.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %buf62.i, align 4
  %222 = ptrtoint ptr %p_buffer.i377 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %221, ptr %p_buffer.i377, align 8
  %cx231xx_send_usb_command.i378 = getelementptr inbounds %struct.cx231xx, ptr %160, i32 0, i32 64
  %223 = ptrtoint ptr %cx231xx_send_usb_command.i378 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cx231xx_send_usb_command.i378, align 4
  %call63.i = call i32 %224(ptr noundef %158, ptr noundef nonnull %req_data.i341) #7
  %225 = call i32 @llvm.smin.i32(i32 %call63.i, i32 0) #7
  br label %cx231xx_i2c_recv_bytes_with_saddr.exit

cx231xx_i2c_recv_bytes_with_saddr.exit:           ; preds = %if.end54.i, %if.then39.i
  %retval.0.i379 = phi i32 [ %call51.i, %if.then39.i ], [ %225, %if.end54.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_data.i341) #7
  %226 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %226)
  %cmp158 = icmp ugt i32 %226, 1
  br i1 %cmp158, label %for.cond161.preheader, label %cx231xx_i2c_recv_bytes_with_saddr.exit.if.end212_crit_edge

cx231xx_i2c_recv_bytes_with_saddr.exit.if.end212_crit_edge: ; preds = %cx231xx_i2c_recv_bytes_with_saddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

for.cond161.preheader:                            ; preds = %cx231xx_i2c_recv_bytes_with_saddr.exit
  %len164 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %227 = ptrtoint ptr %len164 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %len164, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %cmp166439.not = icmp eq i16 %228, 0
  br i1 %cmp166439.not, label %for.cond161.preheader.if.end212_crit_edge, label %do.end171.lr.ph

for.cond161.preheader.if.end212_crit_edge:        ; preds = %for.cond161.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

do.end171.lr.ph:                                  ; preds = %for.cond161.preheader
  %buf175 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  br label %do.end171

do.end171:                                        ; preds = %do.end171.do.end171_crit_edge, %do.end171.lr.ph
  %byte.2440 = phi i32 [ 0, %do.end171.lr.ph ], [ %inc180, %do.end171.do.end171_crit_edge ]
  %229 = ptrtoint ptr %buf175 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %buf175, align 4
  %arrayidx176 = getelementptr i8, ptr %230, i32 %byte.2440
  %231 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %232 to i32
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv177) #10
  %inc180 = add nuw nsw i32 %byte.2440, 1
  %233 = ptrtoint ptr %len164 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %len164, align 4
  %conv165 = zext i16 %234 to i32
  %cmp166 = icmp ult i32 %inc180, %conv165
  br i1 %cmp166, label %do.end171.do.end171_crit_edge, label %do.end171.if.end212_crit_edge

do.end171.if.end212_crit_edge:                    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

do.end171.do.end171_crit_edge:                    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end171

if.else184:                                       ; preds = %land.lhs.true92.if.else184_crit_edge, %land.lhs.true76.if.else184_crit_edge, %land.lhs.true.if.else184_crit_edge, %if.else67.if.else184_crit_edge
  %235 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %235)
  %cmp185 = icmp ugt i32 %235, 1
  br i1 %cmp185, label %for.cond188.preheader, label %if.else184.if.end207_crit_edge

if.else184.if.end207_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

for.cond188.preheader:                            ; preds = %if.else184
  %236 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %237)
  %cmp192442.not = icmp eq i16 %237, 0
  br i1 %cmp192442.not, label %for.cond188.preheader.if.end207_crit_edge, label %do.end197.lr.ph

for.cond188.preheader.if.end207_crit_edge:        ; preds = %for.cond188.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

do.end197.lr.ph:                                  ; preds = %for.cond188.preheader
  %buf200 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  br label %do.end197

do.end197:                                        ; preds = %do.end197.do.end197_crit_edge, %do.end197.lr.ph
  %byte.3443 = phi i32 [ 0, %do.end197.lr.ph ], [ %inc205, %do.end197.do.end197_crit_edge ]
  %238 = ptrtoint ptr %buf200 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %buf200, align 4
  %arrayidx201 = getelementptr i8, ptr %239, i32 %byte.3443
  %240 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %241 to i32
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv202) #10
  %inc205 = add nuw nsw i32 %byte.3443, 1
  %242 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %len16, align 4
  %conv191 = zext i16 %243 to i32
  %cmp192 = icmp ult i32 %inc205, %conv191
  br i1 %cmp192, label %do.end197.do.end197_crit_edge, label %do.end197.if.end207_crit_edge

do.end197.if.end207_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

do.end197.do.end197_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end197

if.end207:                                        ; preds = %do.end197.if.end207_crit_edge, %for.cond188.preheader.if.end207_crit_edge, %if.else184.if.end207_crit_edge
  %244 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %algo_data, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_data.i380) #7
  %248 = call ptr @memset(ptr %req_data.i380, i32 255, i32 12)
  %nr.i.i382 = getelementptr inbounds %struct.cx231xx_i2c, ptr %245, i32 0, i32 1
  %249 = ptrtoint ptr %nr.i.i382 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %nr.i.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %250)
  %cmp.i.i.i383 = icmp eq i32 %250, 1
  br i1 %cmp.i.i.i383, label %if.then.i.i.i388, label %if.end207.get_real_i2c_port.exit.i.i393_crit_edge

if.end207.get_real_i2c_port.exit.i.i393_crit_edge: ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_real_i2c_port.exit.i.i393

if.then.i.i.i388:                                 ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  %port_3_switch_enabled.i.i.i384 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 23
  %251 = ptrtoint ptr %port_3_switch_enabled.i.i.i384 to i32
  call void @__asan_load1_noabort(i32 %251)
  %bf.load.i.i.i385 = load i8, ptr %port_3_switch_enabled.i.i.i384, align 4
  %252 = and i8 %bf.load.i.i.i385, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i.i.i386 = icmp eq i8 %252, 0
  %cond.i.i.i387 = select i1 %tobool.not.i.i.i386, i32 3, i32 4
  br label %get_real_i2c_port.exit.i.i393

get_real_i2c_port.exit.i.i393:                    ; preds = %if.then.i.i.i388, %if.end207.get_real_i2c_port.exit.i.i393_crit_edge
  %retval.0.i.i.i389 = phi i32 [ %cond.i.i.i387, %if.then.i.i.i388 ], [ %250, %if.end207.get_real_i2c_port.exit.i.i393_crit_edge ]
  %tuner_i2c_master.i.i390 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 4, i32 17
  %253 = ptrtoint ptr %tuner_i2c_master.i.i390 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %tuner_i2c_master.i.i390, align 8
  %conv.i.i391 = zext i8 %254 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i389, i32 %conv.i.i391)
  %cmp.not.i.i392 = icmp eq i32 %retval.0.i.i.i389, %conv.i.i391
  br i1 %cmp.not.i.i392, label %if.end.i.i397, label %get_real_i2c_port.exit.i.i393.if.else103.i_crit_edge

get_real_i2c_port.exit.i.i393.if.else103.i_crit_edge: ; preds = %get_real_i2c_port.exit.i.i393
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else103.i

if.end.i.i397:                                    ; preds = %get_real_i2c_port.exit.i.i393
  %255 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %arrayidx, align 4
  %conv2.i.i394 = zext i16 %256 to i32
  %tuner_addr.i.i395 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 4, i32 3
  %257 = ptrtoint ptr %tuner_addr.i.i395 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tuner_addr.i.i395, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %conv2.i.i394)
  %cmp4.not.i.i396 = icmp eq i32 %258, %conv2.i.i394
  br i1 %cmp4.not.i.i396, label %is_tuner.exit.i400, label %if.end.i.i397.if.else103.i_crit_edge

if.end.i.i397.if.else103.i_crit_edge:             ; preds = %if.end.i.i397
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else103.i

is_tuner.exit.i400:                               ; preds = %if.end.i.i397
  %tuner_type8.i.i398 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 18
  %259 = ptrtoint ptr %tuner_type8.i.i398 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %tuner_type8.i.i398, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %260)
  %cmp9.not.i.i399 = icmp eq i32 %260, 76
  br i1 %cmp9.not.i.i399, label %if.then.i402, label %is_tuner.exit.i400.if.else103.i_crit_edge

is_tuner.exit.i400.if.else103.i_crit_edge:        ; preds = %is_tuner.exit.i400
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else103.i

if.then.i402:                                     ; preds = %is_tuner.exit.i400
  %261 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %len16, align 4
  %263 = zext i16 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %262, label %if.then.i402.if.end56.i_crit_edge [
    i16 2, label %if.then.i402.cx231xx_i2c_send_bytes.exit_crit_edge
    i16 4, label %if.end27.i
  ]

if.then.i402.cx231xx_i2c_send_bytes.exit_crit_edge: ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx231xx_i2c_send_bytes.exit

if.then.i402.if.end56.i_crit_edge:                ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.end27.i:                                       ; preds = %if.then.i402
  %buf.i403 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %264 = ptrtoint ptr %buf.i403 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %buf.i403, align 4
  %arrayidx15.i = getelementptr i8, ptr %265, i32 1
  %266 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx15.i, align 1
  %268 = ptrtoint ptr %265 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %265, align 1
  %conv13.i = zext i8 %269 to i32
  %shl.i404 = shl nuw nsw i32 %conv13.i, 8
  %conv16.i405 = zext i8 %267 to i32
  %or.i406 = or i32 %shl.i404, %conv16.i405
  %trunc.i = trunc i32 %or.i406 to i16
  %270 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %trunc.i, label %sw.default.i [
    i16 0, label %sw.bb.i
    i16 13, label %if.end27.i.do.body.i410_crit_edge
    i16 1, label %if.end27.i.do.body.i410_crit_edge451
    i16 2, label %if.end27.i.do.body.i410_crit_edge452
    i16 3, label %if.end27.i.do.body.i410_crit_edge453
  ]

if.end27.i.do.body.i410_crit_edge453:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i410

if.end27.i.do.body.i410_crit_edge452:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i410

if.end27.i.do.body.i410_crit_edge451:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i410

if.end27.i.do.body.i410_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i410

sw.bb.i:                                          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %xc_fw_load_done.i407 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 23
  %271 = ptrtoint ptr %xc_fw_load_done.i407 to i32
  call void @__asan_load1_noabort(i32 %271)
  %bf.load.i408 = load i8, ptr %xc_fw_load_done.i407, align 4
  %bf.set.i = or i8 %bf.load.i408, -128
  store i8 %bf.set.i, ptr %xc_fw_load_done.i407, align 4
  br label %do.body.i410

sw.default.i:                                     ; preds = %if.end27.i
  %xc_fw_load_done30.i = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 23
  %272 = ptrtoint ptr %xc_fw_load_done30.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load31.i = load i8, ptr %xc_fw_load_done30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load31.i)
  %tobool.not.i409 = icmp sgt i8 %bf.load31.i, -1
  br i1 %tobool.not.i409, label %sw.default.i.if.end56.i_crit_edge, label %sw.default.i.do.body.i410_crit_edge

sw.default.i.do.body.i410_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i410

sw.default.i.if.end56.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

do.body.i410:                                     ; preds = %sw.default.i.do.body.i410_crit_edge, %sw.bb.i, %if.end27.i.do.body.i410_crit_edge, %if.end27.i.do.body.i410_crit_edge451, %if.end27.i.do.body.i410_crit_edge452, %if.end27.i.do.body.i410_crit_edge453
  %273 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp36.not.i = icmp eq i32 %273, 0
  br i1 %cmp36.not.i, label %do.body.i410.do.end47.i414_crit_edge, label %do.end.i411

do.body.i410.do.end47.i414_crit_edge:             ; preds = %do.body.i410
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47.i414

do.end.i411:                                      ; preds = %do.body.i410
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx, align 4
  %conv40.i = zext i16 %275 to i32
  %276 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %len16, align 4
  %conv42.i = zext i16 %277 to i32
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv40.i, i32 noundef %conv42.i, i32 noundef %or.i406) #10
  br label %do.end47.i414

do.end47.i414:                                    ; preds = %do.end.i411, %do.body.i410.do.end47.i414_crit_edge
  %cx231xx_gpio_i2c_write.i412 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 66
  %278 = ptrtoint ptr %cx231xx_gpio_i2c_write.i412 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cx231xx_gpio_i2c_write.i412, align 4
  %280 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %arrayidx, align 4
  %conv49.i413 = trunc i16 %281 to i8
  %282 = ptrtoint ptr %buf.i403 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %buf.i403, align 4
  %284 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %len16, align 4
  %conv52.i = trunc i16 %285 to i8
  %call53.i = call i32 %279(ptr noundef %247, i8 noundef zeroext %conv49.i413, ptr noundef %283, i8 noundef zeroext %conv52.i) #7
  br label %cx231xx_i2c_send_bytes.exit

if.end56.i:                                       ; preds = %sw.default.i.if.end56.i_crit_edge, %if.then.i402.if.end56.i_crit_edge
  %sub.i = add i16 %262, -1
  %buf60.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %286 = ptrtoint ptr %buf60.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %buf60.i, align 4
  %add.ptr.i = getelementptr i8, ptr %287, i32 1
  %i2c_nostop.i = getelementptr inbounds %struct.cx231xx_i2c, ptr %245, i32 0, i32 5
  %i2c_reserve.i = getelementptr inbounds %struct.cx231xx_i2c, ptr %245, i32 0, i32 6
  %cx231xx_send_usb_command.i420 = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 64
  br label %do.body61.i

do.body61.i:                                      ; preds = %do.body61.i.do.body61.i_crit_edge, %if.end56.i
  %size.0.i = phi i16 [ %sub.i, %if.end56.i ], [ %sub92.i, %do.body61.i.do.body61.i_crit_edge ]
  %loop.0.i = phi i8 [ 0, %if.end56.i ], [ %inc.i, %do.body61.i.do.body61.i_crit_edge ]
  %288 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %arrayidx, align 4
  %conv63.i = trunc i16 %289 to i8
  %290 = ptrtoint ptr %req_data.i380 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv63.i, ptr %req_data.i380, align 4
  %291 = ptrtoint ptr %flags41 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %flags41, align 2
  %conv64.i = trunc i16 %292 to i8
  %293 = ptrtoint ptr %direction109.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv64.i, ptr %direction109.i, align 1
  %294 = ptrtoint ptr %saddr_len110.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 1, ptr %saddr_len110.i, align 2
  %295 = ptrtoint ptr %buf60.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %buf60.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %296, align 1
  %conv68.i421 = zext i8 %298 to i16
  %299 = ptrtoint ptr %saddr_dat111.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %conv68.i421, ptr %saddr_dat111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %size.0.i)
  %cmp70.i = icmp ugt i16 %size.0.i, 16
  %300 = call i16 @llvm.umin.i16(i16 %size.0.i, i16 16) #7
  %301 = trunc i16 %300 to i8
  %302 = ptrtoint ptr %buf_size114.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %buf_size114.i, align 2
  %conv74.i422 = zext i8 %loop.0.i to i32
  %mul.i = shl nuw nsw i32 %conv74.i422, 4
  %add.ptr75.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %303 = ptrtoint ptr %p_buffer116.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %add.ptr75.i, ptr %p_buffer116.i, align 4
  %conv80.i423 = zext i1 %cmp70.i to i8
  %304 = ptrtoint ptr %i2c_nostop.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv80.i423, ptr %i2c_nostop.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %loop.0.i)
  %cmp82.i = icmp ne i8 %loop.0.i, 0
  %conv85.i424 = zext i1 %cmp82.i to i8
  %305 = ptrtoint ptr %i2c_reserve.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv85.i424, ptr %i2c_reserve.i, align 2
  %306 = ptrtoint ptr %cx231xx_send_usb_command.i420 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cx231xx_send_usb_command.i420, align 4
  %call86.i = call i32 %307(ptr noundef %245, ptr noundef nonnull %req_data.i380) #7
  %inc.i = add i8 %loop.0.i, 1
  %sub92.i = add i16 %size.0.i, -16
  %308 = icmp ult i16 %size.0.i, 17
  br i1 %308, label %do.end100.i, label %do.body61.i.do.body61.i_crit_edge

do.body61.i.do.body61.i_crit_edge:                ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61.i

do.end100.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %i2c_nostop.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %i2c_nostop.i, align 1
  %310 = ptrtoint ptr %i2c_reserve.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %i2c_reserve.i, align 2
  br label %if.end119.i

if.else103.i:                                     ; preds = %is_tuner.exit.i400.if.else103.i_crit_edge, %if.end.i.i397.if.else103.i_crit_edge, %get_real_i2c_port.exit.i.i393.if.else103.i_crit_edge
  %311 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %arrayidx, align 4
  %conv105.i = trunc i16 %312 to i8
  %313 = ptrtoint ptr %req_data.i380 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %conv105.i, ptr %req_data.i380, align 4
  %314 = ptrtoint ptr %flags41 to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %flags41, align 2
  %conv108.i = trunc i16 %315 to i8
  %316 = ptrtoint ptr %direction109.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %conv108.i, ptr %direction109.i, align 1
  %317 = ptrtoint ptr %saddr_len110.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %saddr_len110.i, align 2
  %318 = ptrtoint ptr %saddr_dat111.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 0, ptr %saddr_dat111.i, align 4
  %319 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %len16, align 4
  %conv113.i = trunc i16 %320 to i8
  %321 = ptrtoint ptr %buf_size114.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv113.i, ptr %buf_size114.i, align 2
  %buf115.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0445, i32 3
  %322 = ptrtoint ptr %buf115.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %buf115.i, align 4
  %324 = ptrtoint ptr %p_buffer116.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %323, ptr %p_buffer116.i, align 4
  %cx231xx_send_usb_command117.i = getelementptr inbounds %struct.cx231xx, ptr %247, i32 0, i32 64
  %325 = ptrtoint ptr %cx231xx_send_usb_command117.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %cx231xx_send_usb_command117.i, align 4
  %call118.i = call i32 %326(ptr noundef %245, ptr noundef nonnull %req_data.i380) #7
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else103.i, %do.end100.i
  %status.0.i = phi i32 [ %call86.i, %do.end100.i ], [ %call118.i, %if.else103.i ]
  %327 = call i32 @llvm.smin.i32(i32 %status.0.i, i32 0) #7
  br label %cx231xx_i2c_send_bytes.exit

cx231xx_i2c_send_bytes.exit:                      ; preds = %if.end119.i, %do.end47.i414, %if.then.i402.cx231xx_i2c_send_bytes.exit_crit_edge
  %retval.0.i425 = phi i32 [ %call53.i, %do.end47.i414 ], [ %327, %if.end119.i ], [ 0, %if.then.i402.cx231xx_i2c_send_bytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_data.i380) #7
  br label %if.end212

if.end212:                                        ; preds = %cx231xx_i2c_send_bytes.exit, %do.end171.if.end212_crit_edge, %for.cond161.preheader.if.end212_crit_edge, %cx231xx_i2c_recv_bytes_with_saddr.exit.if.end212_crit_edge, %do.end60.if.end212_crit_edge, %for.cond51.preheader.if.end212_crit_edge, %cx231xx_i2c_recv_bytes.exit.if.end212_crit_edge
  %i.1 = phi i32 [ %i.0445, %cx231xx_i2c_recv_bytes.exit.if.end212_crit_edge ], [ %i.0445, %cx231xx_i2c_send_bytes.exit ], [ %add, %cx231xx_i2c_recv_bytes_with_saddr.exit.if.end212_crit_edge ], [ %add, %for.cond161.preheader.if.end212_crit_edge ], [ %i.0445, %for.cond51.preheader.if.end212_crit_edge ], [ %add, %do.end171.if.end212_crit_edge ], [ %i.0445, %do.end60.if.end212_crit_edge ]
  %rc.0 = phi i32 [ %retval.0.i, %cx231xx_i2c_recv_bytes.exit.if.end212_crit_edge ], [ %retval.0.i425, %cx231xx_i2c_send_bytes.exit ], [ %retval.0.i379, %cx231xx_i2c_recv_bytes_with_saddr.exit.if.end212_crit_edge ], [ %retval.0.i379, %for.cond161.preheader.if.end212_crit_edge ], [ %retval.0.i, %for.cond51.preheader.if.end212_crit_edge ], [ %retval.0.i379, %do.end171.if.end212_crit_edge ], [ %retval.0.i, %do.end60.if.end212_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp213 = icmp slt i32 %rc.0, 0
  br i1 %cmp213, label %do.body230, label %if.end212.if.end216_crit_edge

if.end212.if.end216_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.end216:                                        ; preds = %if.end212.if.end216_crit_edge, %if.then18.if.end216_crit_edge
  %i.1430 = phi i32 [ %i.1, %if.end212.if.end216_crit_edge ], [ %i.0445, %if.then18.if.end216_crit_edge ]
  %328 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %328)
  %cmp217 = icmp ugt i32 %328, 1
  br i1 %cmp217, label %do.end222, label %if.end216.for.inc226_crit_edge

if.end216.for.inc226_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc226

do.end222:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %for.inc226

for.inc226:                                       ; preds = %do.end222, %if.end216.for.inc226_crit_edge
  %inc227 = add i32 %i.1430, 1
  %cmp = icmp slt i32 %inc227, %num
  br i1 %cmp, label %for.inc226.for.body_crit_edge, label %for.inc226.cleanup_crit_edge

for.inc226.cleanup_crit_edge:                     ; preds = %for.inc226
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc226.for.body_crit_edge:                    ; preds = %for.inc226
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body230:                                       ; preds = %if.end212
  %329 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %329)
  %cmp231 = icmp ugt i32 %329, 1
  br i1 %cmp231, label %do.end236, label %do.body230.cleanup_crit_edge

do.body230.cleanup_crit_edge:                     ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end236:                                        ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #9
  %call240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %rc.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end236, %do.body230.cleanup_crit_edge, %for.inc226.cleanup_crit_edge, %do.end30, %do.body24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end30 ], [ %call.i, %do.body24.cleanup_crit_edge ], [ %num, %entry.cleanup_crit_edge ], [ %rc.0, %do.end236 ], [ %rc.0, %do.body230.cleanup_crit_edge ], [ %num, %for.inc226.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %i2c_lock) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_enable_i2c_port_3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__param_i2c_scan, !1, !"__param_i2c_scan", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_scantype303, !1, !"__UNIQUE_ID_i2c_scantype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_scan304, !4, !"__UNIQUE_ID_i2c_scan304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 24, i32 1}
!5 = !{ptr @__param_i2c_debug, !6, !"__param_i2c_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_debugtype305, !6, !"__UNIQUE_ID_i2c_debugtype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_debug306, !9, !"__UNIQUE_ID_i2c_debug306", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 28, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 500, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cx231xx_do_i2c_scan._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @cx231xx_do_i2c_scan._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 524, i32 59}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 531, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cx231xx_i2c_register._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @cx231xx_i2c_register._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_cx231xx_get_i2c_adap, !28, !"__ksymtab_cx231xx_get_i2c_adap", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 598, i32 1}
!29 = !{ptr @i2c_scan, !30, !"i2c_scan", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 22, i32 21}
!31 = !{ptr @i2c_debug, !32, !"i2c_debug", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 26, i32 21}
!33 = !{ptr @__param_str_i2c_scan, !1, !"__param_str_i2c_scan", i1 false, i1 false}
!34 = !{ptr @__param_str_i2c_debug, !6, !"__param_str_i2c_debug", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 466, i32 16}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 461, i32 16}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 465, i32 16}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 462, i32 16}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 463, i32 16}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 464, i32 16}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 467, i32 16}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 468, i32 16}
!51 = !{ptr @i2c_devs, !52, !"i2c_devs", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 460, i32 20}
!53 = !{ptr @cx231xx_adap_template, !54, !"cx231xx_adap_template", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 448, i32 33}
!55 = !{ptr @cx231xx_algo, !56, !"cx231xx_algo", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 443, i32 35}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 372, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cx231xx_i2c_xfer._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cx231xx_i2c_xfer._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 379, i32 5}
!68 = !{ptr @cx231xx_i2c_xfer._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cx231xx_i2c_xfer._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 389, i32 6}
!72 = !{ptr @cx231xx_i2c_xfer._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cx231xx_i2c_xfer._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @cx231xx_i2c_xfer._entry.31, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 397, i32 6}
!76 = !{ptr @cx231xx_i2c_xfer._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 398, i32 5}
!79 = !{ptr @cx231xx_i2c_xfer._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cx231xx_i2c_xfer._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 401, i32 4}
!83 = !{ptr @cx231xx_i2c_xfer._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx231xx_i2c_xfer._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @cx231xx_i2c_xfer._entry.39, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 409, i32 6}
!87 = !{ptr @cx231xx_i2c_xfer._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @cx231xx_i2c_xfer._entry.41, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 416, i32 6}
!90 = !{ptr @cx231xx_i2c_xfer._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @cx231xx_i2c_xfer._entry.43, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 423, i32 4}
!93 = !{ptr @cx231xx_i2c_xfer._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 428, i32 2}
!96 = !{ptr @cx231xx_i2c_xfer._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cx231xx_i2c_xfer._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 203, i32 5}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cx231xx_i2c_recv_bytes._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @cx231xx_i2c_recv_bytes._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 220, i32 5}
!105 = !{ptr @cx231xx_i2c_recv_bytes._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cx231xx_i2c_recv_bytes._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 288, i32 4}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cx231xx_i2c_recv_bytes_with_saddr._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @cx231xx_i2c_recv_bytes_with_saddr._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/cx231xx/cx231xx-i2c.c", i32 118, i32 5}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cx231xx_i2c_send_bytes._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @cx231xx_i2c_send_bytes._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"auto-init"}
!127 = !{i64 2156877062, i64 2156877566, i64 2156877099, i64 2156877155, i64 2156877189, i64 2156877213, i64 2156877254, i64 2156877275, i64 2156877303, i64 2156877337}
