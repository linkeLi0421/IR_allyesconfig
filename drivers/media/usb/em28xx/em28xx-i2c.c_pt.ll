; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.em28xx_audio_mode = type { i32 }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.em28xx_eeprom = type { [4 x i8], i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_scan = internal constant [16 x i8] c"em28xx.i2c_scan\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype303 = internal constant [29 x i8] c"em28xx.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan304 = internal constant [49 x i8] c"em28xx.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@__param_str_i2c_debug = internal constant [17 x i8] c"em28xx.i2c_debug\00", align 1
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype305 = internal constant [30 x i8] c"em28xx.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug306 = internal constant [87 x i8] c"em28xx.parm=i2c_debug:i2c debug message level (1: normal debug, 2: show I2C transfers)\00", section ".modinfo", align 1
@em28xx_do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 966, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"found i2c device @ 0x%x on bus %d [%s]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"em28xx_do_i2c_scan\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/em28xx/em28xx-i2c.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_do_i2c_scan._entry_ptr = internal global ptr @em28xx_do_i2c_scan._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@em28xx_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @em28xx_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"em28xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@em28xx_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1004, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: i2c_add_adapter failed! retval [%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_i2c_register\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@em28xx_i2c_register._entry_ptr = internal global ptr @em28xx_i2c_register._entry, section ".printk_index", align 4
@em28xx_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"em28xx internal\00\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@em28xx_i2c_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 1018, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: em28xx_i2_eeprom failed! retval [%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@em28xx_i2c_register._entry_ptr.11 = internal global ptr @em28xx_i2c_register._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lgdt330x\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"remote IR sensor\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"saa7113h\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"drxk\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp34xx\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9887\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9874\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tvp5150a\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"webcam sensor or tvp5150a\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tuner (analog)\00", [17 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [100 x ptr], [28 x ptr] }>, [128 x i8] } { <{ [100 x ptr], [28 x ptr] }> <{ [100 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr null, ptr null, ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.16, ptr null, ptr null, ptr @.str.17, ptr @.str.16, ptr null, ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.19, ptr null, ptr null, ptr null, ptr @.str.20, ptr @.str.21, ptr null, ptr null, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22], [28 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@em28xx_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @em28xx_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 592, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i2c: %s: %s %s addr=%02x len=%d: %*ph\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"em28xx_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@em28xx_i2c_xfer._entry_ptr = internal global ptr @em28xx_i2c_xfer._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nonstop\00", [24 x i8] zeroinitializer }, align 32
@em28xx_i2c_xfer._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.2, i32 604, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i2c: %s: %s %s addr=%02x len=%d: %sERROR: %i\0A\00", [50 x i8] zeroinitializer }, align 32
@em28xx_i2c_xfer._entry_ptr.33 = internal global ptr @em28xx_i2c_xfer._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no device \00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@em28xx_i2c_recv_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 295, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"reading from i2c device at 0x%x failed (error=%i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em28xx_i2c_recv_bytes\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@em28xx_i2c_recv_bytes._entry_ptr = internal global ptr @em28xx_i2c_recv_bytes._entry, section ".printk_index", align 4
@em28xx_i2c_recv_bytes.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em28xx\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%i bytes read from i2c device at 0x%x requested, but %i bytes written\0A\00", [57 x i8] zeroinitializer }, align 32
@em28xx_i2c_recv_bytes._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 318, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"failed to get i2c transfer status from bridge register (error=%i)\0A\00", [61 x i8] zeroinitializer }, align 32
@em28xx_i2c_recv_bytes._entry_ptr.43 = internal global ptr @em28xx_i2c_recv_bytes._entry.41, section ".printk_index", align 4
@em28xx_i2c_recv_bytes._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 323, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"i2c: %s: I2C ACK error on writing to addr 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_recv_bytes._entry_ptr.46 = internal global ptr @em28xx_i2c_recv_bytes._entry.44, section ".printk_index", align 4
@em28xx_i2c_recv_bytes._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 331, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"i2c: %s: write to i2c device at 0x%x timed out (status=%i)\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_recv_bytes._entry_ptr.49 = internal global ptr @em28xx_i2c_recv_bytes._entry.47, section ".printk_index", align 4
@em28xx_i2c_recv_bytes._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 337, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"read from i2c device at 0x%x failed with unknown error (status=%i)\0A\00", [60 x i8] zeroinitializer }, align 32
@em28xx_i2c_recv_bytes._entry_ptr.52 = internal global ptr @em28xx_i2c_recv_bytes._entry.50, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@em2800_i2c_recv_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 152, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to trigger read from i2c address 0x%x (error=%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em2800_i2c_recv_bytes\00", [42 x i8] zeroinitializer }, align 32
@em2800_i2c_recv_bytes._entry_ptr = internal global ptr @em2800_i2c_recv_bytes._entry, section ".printk_index", align 4
@em2800_i2c_recv_bytes._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 163, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"i2c: %s: R05 returned 0x%02x: I2C ACK error\0A\00", [51 x i8] zeroinitializer }, align 32
@em2800_i2c_recv_bytes._entry_ptr.57 = internal global ptr @em2800_i2c_recv_bytes._entry.55, section ".printk_index", align 4
@em2800_i2c_recv_bytes._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.54, ptr @.str.2, i32 169, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em2800_i2c_recv_bytes._entry_ptr.59 = internal global ptr @em2800_i2c_recv_bytes._entry.58, section ".printk_index", align 4
@em2800_i2c_recv_bytes._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.2, i32 175, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"i2c: %s: read from i2c device at 0x%x timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@em2800_i2c_recv_bytes._entry_ptr.62 = internal global ptr @em2800_i2c_recv_bytes._entry.60, section ".printk_index", align 4
@em2800_i2c_recv_bytes._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.54, ptr @.str.2, i32 182, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"reading from i2c device at 0x%x failed: couldn't get the received message from the bridge (error=%i)\0A\00", [58 x i8] zeroinitializer }, align 32
@em2800_i2c_recv_bytes._entry_ptr.65 = internal global ptr @em2800_i2c_recv_bytes._entry.63, section ".printk_index", align 4
@em25xx_bus_B_recv_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.66, ptr @.str.2, i32 430, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"em25xx_bus_B_recv_bytes\00", [40 x i8] zeroinitializer }, align 32
@em25xx_bus_B_recv_bytes._entry_ptr = internal global ptr @em25xx_bus_B_recv_bytes._entry, section ".printk_index", align 4
@em25xx_bus_B_recv_bytes._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 452, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"i2c: %s: Bus B R08 returned 0x%02x: I2C ACK error\0A\00", [45 x i8] zeroinitializer }, align 32
@em25xx_bus_B_recv_bytes._entry_ptr.69 = internal global ptr @em25xx_bus_B_recv_bytes._entry.67, section ".printk_index", align 4
@em28xx_i2c_send_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 228, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"writing to i2c device at 0x%x failed (error=%i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em28xx_i2c_send_bytes\00", [42 x i8] zeroinitializer }, align 32
@em28xx_i2c_send_bytes._entry_ptr = internal global ptr @em28xx_i2c_send_bytes._entry, section ".printk_index", align 4
@em28xx_i2c_send_bytes._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 233, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%i bytes write to i2c device at 0x%x requested, but %i bytes written\0A\00", [58 x i8] zeroinitializer }, align 32
@em28xx_i2c_send_bytes._entry_ptr.74 = internal global ptr @em28xx_i2c_send_bytes._entry.72, section ".printk_index", align 4
@em28xx_i2c_send_bytes._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.71, ptr @.str.2, i32 244, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_send_bytes._entry_ptr.76 = internal global ptr @em28xx_i2c_send_bytes._entry.75, section ".printk_index", align 4
@em28xx_i2c_send_bytes._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.71, ptr @.str.2, i32 250, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_send_bytes._entry_ptr.78 = internal global ptr @em28xx_i2c_send_bytes._entry.77, section ".printk_index", align 4
@em28xx_i2c_send_bytes._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.71, ptr @.str.2, i32 265, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_send_bytes._entry_ptr.80 = internal global ptr @em28xx_i2c_send_bytes._entry.79, section ".printk_index", align 4
@em28xx_i2c_send_bytes._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.2, i32 271, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"write to i2c device at 0x%x failed with unknown error (status=%i)\0A\00", [61 x i8] zeroinitializer }, align 32
@em28xx_i2c_send_bytes._entry_ptr.83 = internal global ptr @em28xx_i2c_send_bytes._entry.81, section ".printk_index", align 4
@em2800_i2c_send_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 107, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to trigger write to i2c address 0x%x (error=%i)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em2800_i2c_send_bytes\00", [42 x i8] zeroinitializer }, align 32
@em2800_i2c_send_bytes._entry_ptr = internal global ptr @em2800_i2c_send_bytes._entry, section ".printk_index", align 4
@em2800_i2c_send_bytes._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.85, ptr @.str.2, i32 116, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em2800_i2c_send_bytes._entry_ptr.87 = internal global ptr @em2800_i2c_send_bytes._entry.86, section ".printk_index", align 4
@em2800_i2c_send_bytes._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.85, ptr @.str.2, i32 122, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em2800_i2c_send_bytes._entry_ptr.89 = internal global ptr @em2800_i2c_send_bytes._entry.88, section ".printk_index", align 4
@em2800_i2c_send_bytes._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.85, ptr @.str.2, i32 127, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"i2c: %s: write to i2c device at 0x%x timed out\0A\00", [48 x i8] zeroinitializer }, align 32
@em2800_i2c_send_bytes._entry_ptr.92 = internal global ptr @em2800_i2c_send_bytes._entry.90, section ".printk_index", align 4
@em25xx_bus_B_send_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.93, ptr @.str.2, i32 378, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"em25xx_bus_B_send_bytes\00", [40 x i8] zeroinitializer }, align 32
@em25xx_bus_B_send_bytes._entry_ptr = internal global ptr @em25xx_bus_B_send_bytes._entry, section ".printk_index", align 4
@em25xx_bus_B_send_bytes._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.93, ptr @.str.2, i32 384, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em25xx_bus_B_send_bytes._entry_ptr.95 = internal global ptr @em25xx_bus_B_send_bytes._entry.94, section ".printk_index", align 4
@em25xx_bus_B_send_bytes._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.93, ptr @.str.2, i32 397, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em25xx_bus_B_send_bytes._entry_ptr.97 = internal global ptr @em25xx_bus_B_send_bytes._entry.96, section ".printk_index", align 4
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown i2c bus algorithm.\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"board has no eeprom\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_i2c_eeprom\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr = internal global ptr @em28xx_i2c_eeprom._entry, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 717, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read eeprom (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.103 = internal global ptr @em28xx_i2c_eeprom._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"em28xx eeprom \00", [17 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.100, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"eeprom %06x: ... (skipped)\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.107 = internal global ptr @em28xx_i2c_eeprom._entry.105, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.100, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EEPROM ID = %4ph, EEPROM hash = 0x%08lx\0A\00", [55 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.110 = internal global ptr @em28xx_i2c_eeprom._entry.108, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.100, ptr @.str.2, i32 744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EEPROM info:\0A\00", [18 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.113 = internal global ptr @em28xx_i2c_eeprom._entry.111, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.100, ptr @.str.2, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\09microcode start address = 0x%04x, boot configuration = 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.116 = internal global ptr @em28xx_i2c_eeprom._entry.114, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.100, ptr @.str.2, i32 767, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"failed to read hardware configuration data from eeprom (err=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.119 = internal global ptr @em28xx_i2c_eeprom._entry.117, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.100, ptr @.str.2, i32 786, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.121 = internal global ptr @em28xx_i2c_eeprom._entry.120, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.100, ptr @.str.2, i32 795, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\09no hardware configuration dataset found in eeprom\0A\00", [44 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.124 = internal global ptr @em28xx_i2c_eeprom._entry.122, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.100, ptr @.str.2, i32 811, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.126 = internal global ptr @em28xx_i2c_eeprom._entry.125, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.100, ptr @.str.2, i32 813, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.128 = internal global ptr @em28xx_i2c_eeprom._entry.127, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.100, ptr @.str.2, i32 816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unknown eeprom format or eeprom corrupted !\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.131 = internal global ptr @em28xx_i2c_eeprom._entry.129, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.100, ptr @.str.2, i32 827, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09No audio on board.\0A\00", [43 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.134 = internal global ptr @em28xx_i2c_eeprom._entry.132, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.100, ptr @.str.2, i32 830, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09AC97 audio (5 sample rates)\0A\00", [34 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.137 = internal global ptr @em28xx_i2c_eeprom._entry.135, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.100, ptr @.str.2, i32 835, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09I2S audio, sample rate=32k\0A\00", [35 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.140 = internal global ptr @em28xx_i2c_eeprom._entry.138, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.100, ptr @.str.2, i32 838, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09I2S audio, 3 sample rates\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.143 = internal global ptr @em28xx_i2c_eeprom._entry.141, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.100, ptr @.str.2, i32 843, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.145 = internal global ptr @em28xx_i2c_eeprom._entry.144, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.100, ptr @.str.2, i32 846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09I2S audio, 5 sample rates\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.148 = internal global ptr @em28xx_i2c_eeprom._entry.146, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.100, ptr @.str.2, i32 851, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09USB Remote wakeup capable\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.151 = internal global ptr @em28xx_i2c_eeprom._entry.149, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.100, ptr @.str.2, i32 854, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09USB Self power capable\0A\00", [39 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.154 = internal global ptr @em28xx_i2c_eeprom._entry.152, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.100, ptr @.str.2, i32 858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09500mA max power\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.157 = internal global ptr @em28xx_i2c_eeprom._entry.155, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.100, ptr @.str.2, i32 861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09400mA max power\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.160 = internal global ptr @em28xx_i2c_eeprom._entry.158, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.100, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09300mA max power\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.163 = internal global ptr @em28xx_i2c_eeprom._entry.161, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.100, ptr @.str.2, i32 867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09200mA max power\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.166 = internal global ptr @em28xx_i2c_eeprom._entry.164, section ".printk_index", align 4
@em28xx_i2c_eeprom._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.100, ptr @.str.2, i32 875, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\09Table at offset 0x%02x, strings=0x%04x, 0x%04x, 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@em28xx_i2c_eeprom._entry_ptr.169 = internal global ptr @em28xx_i2c_eeprom._entry.167, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.em28xx_i2c_register = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165], [16 x i8] zeroinitializer }, align 32
@switch.table.em28xx_i2c_xfer = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 36, i32 36, i32 39], [20 x i8] zeroinitializer }, align 32
@switch.table.em28xx_i2c_xfer.170 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 36, i32 36, i32 39], [20 x i8] zeroinitializer }, align 32
@switch.table.functionality = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 251592713, i32 218038281, i32 251592713], [20 x i8] zeroinitializer }, align 32
@switch.table.em2800_i2c_recv_bytes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 36, i32 36, i32 39], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.171 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 16]
@___asan_gen_.177 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 35, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 39, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 964, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [21 x i8] c"em28xx_adap_template\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 910, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1002, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [23 x i8] c"em28xx_client_template\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 916, i32 32 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1016, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 927, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 928, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 929, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 930, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 934, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 933, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 936, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 937, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 938, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 939, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 940, i32 16 }
@___asan_gen_.261 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 926, i32 14 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"em28xx_algo\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 905, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 588, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 599, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 293, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 298, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 316, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 322, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 329, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 335, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 150, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 162, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 167, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 175, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 180, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 428, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 452, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 226, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 231, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 243, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 248, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 263, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 269, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 105, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 116, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 120, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 127, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 376, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 382, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 397, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 901, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 703, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 716, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 723, i32 30 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 727, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 740, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 743, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 745, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 765, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 784, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 794, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 809, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 812, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 815, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 827, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 830, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 834, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 837, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 842, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 845, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 851, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 854, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 858, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 861, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 864, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 867, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.595 = private constant [41 x i8] c"../drivers/media/usb/em28xx/em28xx-i2c.c\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 870, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [33 x i8] c"switch.table.em28xx_i2c_register\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [29 x i8] c"switch.table.em28xx_i2c_xfer\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [33 x i8] c"switch.table.em28xx_i2c_xfer.170\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [27 x i8] c"switch.table.functionality\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [35 x i8] c"switch.table.em2800_i2c_recv_bytes\00", align 1
@llvm.compiler.used = appending global [206 x ptr] [ptr @__UNIQUE_ID_i2c_debug306, ptr @__UNIQUE_ID_i2c_debugtype305, ptr @__UNIQUE_ID_i2c_scan304, ptr @__UNIQUE_ID_i2c_scantype303, ptr @__param_i2c_debug, ptr @__param_i2c_scan, ptr @em25xx_bus_B_recv_bytes._entry, ptr @em25xx_bus_B_recv_bytes._entry.67, ptr @em25xx_bus_B_recv_bytes._entry_ptr, ptr @em25xx_bus_B_recv_bytes._entry_ptr.69, ptr @em25xx_bus_B_send_bytes._entry, ptr @em25xx_bus_B_send_bytes._entry.94, ptr @em25xx_bus_B_send_bytes._entry.96, ptr @em25xx_bus_B_send_bytes._entry_ptr, ptr @em25xx_bus_B_send_bytes._entry_ptr.95, ptr @em25xx_bus_B_send_bytes._entry_ptr.97, ptr @em2800_i2c_recv_bytes._entry, ptr @em2800_i2c_recv_bytes._entry.55, ptr @em2800_i2c_recv_bytes._entry.58, ptr @em2800_i2c_recv_bytes._entry.60, ptr @em2800_i2c_recv_bytes._entry.63, ptr @em2800_i2c_recv_bytes._entry_ptr, ptr @em2800_i2c_recv_bytes._entry_ptr.57, ptr @em2800_i2c_recv_bytes._entry_ptr.59, ptr @em2800_i2c_recv_bytes._entry_ptr.62, ptr @em2800_i2c_recv_bytes._entry_ptr.65, ptr @em2800_i2c_send_bytes._entry, ptr @em2800_i2c_send_bytes._entry.86, ptr @em2800_i2c_send_bytes._entry.88, ptr @em2800_i2c_send_bytes._entry.90, ptr @em2800_i2c_send_bytes._entry_ptr, ptr @em2800_i2c_send_bytes._entry_ptr.87, ptr @em2800_i2c_send_bytes._entry_ptr.89, ptr @em2800_i2c_send_bytes._entry_ptr.92, ptr @em28xx_do_i2c_scan._entry, ptr @em28xx_do_i2c_scan._entry_ptr, ptr @em28xx_i2c_eeprom._entry, ptr @em28xx_i2c_eeprom._entry.101, ptr @em28xx_i2c_eeprom._entry.105, ptr @em28xx_i2c_eeprom._entry.108, ptr @em28xx_i2c_eeprom._entry.111, ptr @em28xx_i2c_eeprom._entry.114, ptr @em28xx_i2c_eeprom._entry.117, ptr @em28xx_i2c_eeprom._entry.120, ptr @em28xx_i2c_eeprom._entry.122, ptr @em28xx_i2c_eeprom._entry.125, ptr @em28xx_i2c_eeprom._entry.127, ptr @em28xx_i2c_eeprom._entry.129, ptr @em28xx_i2c_eeprom._entry.132, ptr @em28xx_i2c_eeprom._entry.135, ptr @em28xx_i2c_eeprom._entry.138, ptr @em28xx_i2c_eeprom._entry.141, ptr @em28xx_i2c_eeprom._entry.144, ptr @em28xx_i2c_eeprom._entry.146, ptr @em28xx_i2c_eeprom._entry.149, ptr @em28xx_i2c_eeprom._entry.152, ptr @em28xx_i2c_eeprom._entry.155, ptr @em28xx_i2c_eeprom._entry.158, ptr @em28xx_i2c_eeprom._entry.161, ptr @em28xx_i2c_eeprom._entry.164, ptr @em28xx_i2c_eeprom._entry.167, ptr @em28xx_i2c_eeprom._entry_ptr, ptr @em28xx_i2c_eeprom._entry_ptr.103, ptr @em28xx_i2c_eeprom._entry_ptr.107, ptr @em28xx_i2c_eeprom._entry_ptr.110, ptr @em28xx_i2c_eeprom._entry_ptr.113, ptr @em28xx_i2c_eeprom._entry_ptr.116, ptr @em28xx_i2c_eeprom._entry_ptr.119, ptr @em28xx_i2c_eeprom._entry_ptr.121, ptr @em28xx_i2c_eeprom._entry_ptr.124, ptr @em28xx_i2c_eeprom._entry_ptr.126, ptr @em28xx_i2c_eeprom._entry_ptr.128, ptr @em28xx_i2c_eeprom._entry_ptr.131, ptr @em28xx_i2c_eeprom._entry_ptr.134, ptr @em28xx_i2c_eeprom._entry_ptr.137, ptr @em28xx_i2c_eeprom._entry_ptr.140, ptr @em28xx_i2c_eeprom._entry_ptr.143, ptr @em28xx_i2c_eeprom._entry_ptr.145, ptr @em28xx_i2c_eeprom._entry_ptr.148, ptr @em28xx_i2c_eeprom._entry_ptr.151, ptr @em28xx_i2c_eeprom._entry_ptr.154, ptr @em28xx_i2c_eeprom._entry_ptr.157, ptr @em28xx_i2c_eeprom._entry_ptr.160, ptr @em28xx_i2c_eeprom._entry_ptr.163, ptr @em28xx_i2c_eeprom._entry_ptr.166, ptr @em28xx_i2c_eeprom._entry_ptr.169, ptr @em28xx_i2c_recv_bytes._entry, ptr @em28xx_i2c_recv_bytes._entry.41, ptr @em28xx_i2c_recv_bytes._entry.44, ptr @em28xx_i2c_recv_bytes._entry.47, ptr @em28xx_i2c_recv_bytes._entry.50, ptr @em28xx_i2c_recv_bytes._entry_ptr, ptr @em28xx_i2c_recv_bytes._entry_ptr.43, ptr @em28xx_i2c_recv_bytes._entry_ptr.46, ptr @em28xx_i2c_recv_bytes._entry_ptr.49, ptr @em28xx_i2c_recv_bytes._entry_ptr.52, ptr @em28xx_i2c_register._entry, ptr @em28xx_i2c_register._entry.9, ptr @em28xx_i2c_register._entry_ptr, ptr @em28xx_i2c_register._entry_ptr.11, ptr @em28xx_i2c_send_bytes._entry, ptr @em28xx_i2c_send_bytes._entry.72, ptr @em28xx_i2c_send_bytes._entry.75, ptr @em28xx_i2c_send_bytes._entry.77, ptr @em28xx_i2c_send_bytes._entry.79, ptr @em28xx_i2c_send_bytes._entry.81, ptr @em28xx_i2c_send_bytes._entry_ptr, ptr @em28xx_i2c_send_bytes._entry_ptr.74, ptr @em28xx_i2c_send_bytes._entry_ptr.76, ptr @em28xx_i2c_send_bytes._entry_ptr.78, ptr @em28xx_i2c_send_bytes._entry_ptr.80, ptr @em28xx_i2c_send_bytes._entry_ptr.83, ptr @em28xx_i2c_xfer._entry, ptr @em28xx_i2c_xfer._entry.31, ptr @em28xx_i2c_xfer._entry_ptr, ptr @em28xx_i2c_xfer._entry_ptr.33, ptr @i2c_scan, ptr @i2c_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @em28xx_adap_template, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @em28xx_client_template, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @i2c_devs, ptr @em28xx_algo, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.91, ptr @.str.93, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.123, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @switch.table.em28xx_i2c_register, ptr @switch.table.em28xx_i2c_xfer, ptr @switch.table.em28xx_i2c_xfer.170, ptr @switch.table.functionality, ptr @switch.table.em2800_i2c_recv_bytes], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_xfer._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_recv_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_recv_bytes._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_recv_bytes._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_recv_bytes._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_recv_bytes._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_recv_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_recv_bytes._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_recv_bytes._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_recv_bytes._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_recv_bytes._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em25xx_bus_B_recv_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em25xx_bus_B_recv_bytes._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_send_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_send_bytes._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_send_bytes._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_send_bytes._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_send_bytes._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_send_bytes._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_send_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_send_bytes._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_send_bytes._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2800_i2c_send_bytes._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em25xx_bus_B_send_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em25xx_bus_B_send_bytes._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em25xx_bus_B_send_bytes._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_eeprom._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.em28xx_i2c_register to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.em28xx_i2c_xfer to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.em28xx_i2c_xfer.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.functionality to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.em2800_i2c_recv_bytes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @em28xx_do_i2c_scan(ptr noundef %dev, i32 noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %i2c_devicelist = alloca [128 x i8], align 1
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %i2c_devicelist) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !292
  %1 = call ptr @memset(ptr %i2c_devicelist, i32 0, i32 128)
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %bus
  %addr = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %bus, i32 1
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %i.030 to i16
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %addr, align 2
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx, ptr noundef nonnull %buf, i32 noundef 0, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %i.030 to i8
  %arrayidx6 = getelementptr [128 x i8], ptr %i2c_devicelist, i32 0, i32 %i.030
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %arrayidx6, align 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %shl = shl nuw nsw i32 %i.030, 1
  %arrayidx8 = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.030
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not, ptr @.str.5, ptr %7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str, i32 noundef %shl, i32 noundef %bus, ptr noundef nonnull %spec.select) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %8 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %def_i2c_bus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %bus)
  %cmp10 = icmp eq i32 %9, %bus
  br i1 %cmp10, label %for.end.do.body.i_crit_edge, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.end.do.body.i_crit_edge:                      ; preds = %for.end
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.end.do.body.i_crit_edge
  %buf.addr.0.i = phi ptr [ %buf.addr.1.i, %if.end.i.do.body.i_crit_edge ], [ %i2c_devicelist, %for.end.do.body.i_crit_edge ]
  %hash.0.i = phi i32 [ %hash.1.i, %if.end.i.do.body.i_crit_edge ], [ 0, %for.end.do.body.i_crit_edge ]
  %l.0.i = phi i32 [ %or.i, %if.end.i.do.body.i_crit_edge ], [ 0, %for.end.do.body.i_crit_edge ]
  %len.0.i = phi i32 [ %inc.i, %if.end.i.do.body.i_crit_edge ], [ 0, %for.end.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.0.i)
  %cmp.i = icmp eq i32 %len.0.i, 128
  br i1 %cmp.i, label %do.body.i.if.end.i_crit_edge, label %if.else.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.0.i, i32 1
  %10 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.addr.0.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.body.i.if.end.i_crit_edge
  %buf.addr.1.i = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %buf.addr.0.i, %do.body.i.if.end.i_crit_edge ]
  %len.1.i = phi i32 [ %len.0.i, %if.else.i ], [ -1, %do.body.i.if.end.i_crit_edge ]
  %c.0.i = phi i8 [ %11, %if.else.i ], [ -128, %do.body.i.if.end.i_crit_edge ]
  %shl.i = shl i32 %l.0.i, 8
  %conv1.i = zext i8 %c.0.i to i32
  %or.i = or i32 %shl.i, %conv1.i
  %inc.i = add i32 %len.1.i, 1
  %and.i = and i32 %inc.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  %xor.i = xor i32 %or.i, %hash.0.i
  %mul.i = mul i32 %xor.i, -1640562687
  %hash.1.i = select i1 %cmp2.i, i32 %mul.i, i32 %hash.0.i
  %tobool.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i, label %em28xx_hash_mem.exit, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

em28xx_hash_mem.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_hash = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 33
  %12 = ptrtoint ptr %i2c_hash to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %hash.1.i, ptr %i2c_hash, align 8
  br label %if.end15

if.end15:                                         ; preds = %em28xx_hash_mem.exit, %for.end.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %i2c_devicelist) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em28xx_i2c_register(ptr noundef %dev, i32 noundef %bus, i32 noundef %algo_type) local_unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %em28xx_write_regs = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 63
  %0 = ptrtoint ptr %em28xx_write_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em28xx_write_regs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %em28xx_read_reg = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %em28xx_read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %em28xx_read_reg, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %em28xx_write_regs_req = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 66
  %4 = ptrtoint ptr %em28xx_write_regs_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %em28xx_write_regs_req, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.do.end_crit_edge, label %lor.rhs

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false3
  %em28xx_read_reg_req = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 67
  %6 = ptrtoint ptr %em28xx_read_reg_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %em28xx_read_reg_req, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.rhs.do.end_crit_edge, label %if.end28, !prof !293

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 984, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end28:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bus)
  %cmp = icmp ugt i32 %bus, 1
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end28
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %bus
  %8 = call ptr @memcpy(ptr %arrayidx, ptr @em28xx_adap_template, i32 1360)
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %parent = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %bus, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev31, ptr %parent, align 8
  %name = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %bus, i32 12
  %init_name.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.dev_name.exit_crit_edge

if.end30.dev_name.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev31, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end30.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end30.dev_name.exit_crit_edge ]
  %call39 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %retval.0.i, i32 noundef 48) #6
  %arrayidx40 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 21, i32 %bus
  %bus41 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 21, i32 %bus, i32 1
  %16 = ptrtoint ptr %bus41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bus, ptr %bus41, align 4
  %algo_type44 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 21, i32 %bus, i32 2
  %17 = ptrtoint ptr %algo_type44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %algo_type, ptr %algo_type44, align 4
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %arrayidx40, align 4
  %algo_data = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %bus, i32 3
  %19 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx40, ptr %algo_data, align 4
  %call54 = tail call i32 @i2c_add_adapter(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end62

do.end59:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf, align 4
  %dev61 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call54) #9
  br label %cleanup

if.end62:                                         ; preds = %dev_name.exit
  %arrayidx63 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %bus
  %22 = call ptr @memcpy(ptr %arrayidx63, ptr @em28xx_client_template, i32 984)
  %adapter = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %bus, i32 3
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %adapter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus)
  %tobool68.not = icmp eq i32 %bus, 0
  br i1 %tobool68.not, label %if.then69, label %if.end62.if.end80_crit_edge

if.end62.if.end80_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then69:                                        ; preds = %if.end62
  %eedata = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 38
  %eedata_len = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #6
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %buf.i, align 1, !annotation !292
  %25 = ptrtoint ptr %eedata to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %eedata, align 4
  %26 = ptrtoint ptr %eedata_len to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %eedata_len, align 2
  %i2c_client.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 20
  %addr.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 20, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 80, ptr %addr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client.i, ptr noundef nonnull %buf.i, i32 noundef 0, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i133

do.end.i:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.99) #9
  br label %em28xx_i2c_eeprom.exit.thread

if.end.i133:                                      ; preds = %if.then69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 256) #10
  %tobool.not.i132 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i132, label %if.end.i133.em28xx_i2c_eeprom.exit_crit_edge, label %if.end6.i

if.end.i133.em28xx_i2c_eeprom.exit_crit_edge:     ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %em28xx_i2c_eeprom.exit

if.end6.i:                                        ; preds = %if.end.i133
  %eeprom_addrwidth_16bit.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 22
  %31 = ptrtoint ptr %eeprom_addrwidth_16bit.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %eeprom_addrwidth_16bit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool7.i = icmp slt i8 %bf.load.i, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf.i.i, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %32, align 1
  %lnot.i.i = xor i1 %tobool7.i, true
  %lnot.ext.i.i = zext i1 %lnot.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %lnot.ext.i.i
  %add15.i.i = select i1 %tobool7.i, i32 2, i32 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client.i, ptr noundef %add.ptr.i.i, i32 noundef %add15.i.i, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp16.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp16.i.i, label %if.end6.i.do.end13.i_crit_edge, label %if.end19.i.i

if.end6.i.do.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end19.i.i:                                     ; preds = %if.end6.i
  %is_em2800.i.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %35 = ptrtoint ptr %is_em2800.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i.i = load i16, ptr %is_em2800.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool20.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  %..i.i = select i1 %tobool20.not.i.i, i32 64, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end36.i.i.while.body.i.i_crit_edge, %if.end19.i.i
  %remain.04.i.i = phi i32 [ %sub.i.i, %if.end36.i.i.while.body.i.i_crit_edge ], [ 256, %if.end19.i.i ]
  %data.addr.03.i.i = phi ptr [ %add.ptr37.i.i, %if.end36.i.i.while.body.i.i_crit_edge ], [ %call7.i.i.i, %if.end19.i.i ]
  %36 = call i32 @llvm.smin.i32(i32 %remain.04.i.i, i32 %..i.i) #6
  %call.i1.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client.i, ptr noundef %data.addr.03.i.i, i32 noundef %36, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %cmp33.i.i = icmp slt i32 %call.i1.i.i, 0
  br i1 %cmp33.i.i, label %while.body.i.i.do.end13.i_crit_edge, label %if.end36.i.i

while.body.i.i.do.end13.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end36.i.i:                                     ; preds = %while.body.i.i
  %sub.i.i = sub i32 %remain.04.i.i, %36
  %add.ptr37.i.i = getelementptr i8, ptr %data.addr.03.i.i, i32 %36
  %cmp23.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp23.i.i, label %if.end36.i.i.while.body.i.i_crit_edge, label %if.end16.i

if.end36.i.i.while.body.i.i_crit_edge:            ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

do.end13.i:                                       ; preds = %while.body.i.i.do.end13.i_crit_edge, %if.end6.i.do.end13.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %if.end6.i.do.end13.i_crit_edge ], [ %call.i1.i.i, %while.body.i.i.do.end13.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %37 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf, align 4
  %dev15.i = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i.ph.i) #9
  br label %error.i

if.end16.i:                                       ; preds = %if.end36.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %39 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool17.not.i = icmp eq i32 %39, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end30.i_crit_edge, label %if.then18.i

if.end16.i.if.end30.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.104, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef 256, i1 noundef zeroext true) #6
  %40 = ptrtoint ptr %eeprom_addrwidth_16bit.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load20.i = load i8, ptr %eeprom_addrwidth_16bit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20.i)
  %tobool22.not.i = icmp sgt i8 %bf.load20.i, -1
  br i1 %tobool22.not.i, label %if.then18.i.land.lhs.true130.i_crit_edge, label %do.end26.i

if.then18.i.land.lhs.true130.i_crit_edge:         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true130.i

do.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf, align 4
  %dev28.i = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28.i, ptr noundef nonnull @.str.106, i32 noundef 256) #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end26.i, %if.end16.i.if.end30.i_crit_edge
  %43 = ptrtoint ptr %eeprom_addrwidth_16bit.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load32.pr.i = load i8, ptr %eeprom_addrwidth_16bit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32.pr.i)
  %tobool34.not.i = icmp sgt i8 %bf.load32.pr.i, -1
  br i1 %tobool34.not.i, label %if.end30.i.land.lhs.true130.i_crit_edge, label %land.lhs.true.i

if.end30.i.land.lhs.true130.i_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true130.i

land.lhs.true.i:                                  ; preds = %if.end30.i
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %45)
  %cmp37.i = icmp eq i8 %45, 38
  br i1 %cmp37.i, label %land.lhs.true39.i, label %land.lhs.true.i.do.end167.i_crit_edge

land.lhs.true.i.do.end167.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

land.lhs.true39.i:                                ; preds = %land.lhs.true.i
  %arrayidx40.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %46 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp42.i = icmp eq i8 %47, 0
  br i1 %cmp42.i, label %land.lhs.true39.i.do.body.i.i_crit_edge, label %land.lhs.true39.i.do.end167.i_crit_edge

land.lhs.true39.i.do.end167.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

land.lhs.true39.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true39.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %land.lhs.true39.i.do.body.i.i_crit_edge
  %buf.addr.0.i.i = phi ptr [ %buf.addr.1.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ %call7.i.i.i, %land.lhs.true39.i.do.body.i.i_crit_edge ]
  %hash.0.i.i = phi i32 [ %hash.1.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ 0, %land.lhs.true39.i.do.body.i.i_crit_edge ]
  %l.0.i.i = phi i32 [ %or.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ 0, %land.lhs.true39.i.do.body.i.i_crit_edge ]
  %len.0.i.i = phi i32 [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ 0, %land.lhs.true39.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len.0.i.i)
  %cmp.i.i = icmp eq i32 %len.0.i.i, 256
  br i1 %cmp.i.i, label %do.body.i.i.if.end.i.i_crit_edge, label %if.else.i.i

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.0.i.i, i32 1
  %48 = ptrtoint ptr %buf.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf.addr.0.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %do.body.i.i.if.end.i.i_crit_edge
  %buf.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.else.i.i ], [ %buf.addr.0.i.i, %do.body.i.i.if.end.i.i_crit_edge ]
  %len.1.i.i = phi i32 [ %len.0.i.i, %if.else.i.i ], [ -1, %do.body.i.i.if.end.i.i_crit_edge ]
  %c.0.i.i = phi i8 [ %49, %if.else.i.i ], [ 0, %do.body.i.i.if.end.i.i_crit_edge ]
  %shl.i.i = shl i32 %l.0.i.i, 8
  %conv1.i.i = zext i8 %c.0.i.i to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %inc.i.i = add i32 %len.1.i.i, 1
  %and.i.i = and i32 %inc.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  %xor.i.i = xor i32 %or.i.i, %hash.0.i.i
  %mul.i.i = mul i32 %xor.i.i, -1640562687
  %hash.1.i.i = select i1 %cmp2.i.i, i32 %mul.i.i, i32 %hash.0.i.i
  %tobool.not.i.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i.i, label %em28xx_hash_mem.exit.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

em28xx_hash_mem.exit.i:                           ; preds = %if.end.i.i
  %hash.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 32
  %50 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %hash.1.i.i, ptr %hash.i, align 4
  %arrayidx46.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %51 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %52 to i32
  %shl.i = shl nuw nsw i32 %conv47.i, 8
  %add.i = or i32 %shl.i, 4
  %53 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intf, align 4
  %dev53.i = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53.i, ptr noundef nonnull @.str.109, ptr noundef nonnull %call7.i.i.i, i32 noundef %hash.1.i.i) #9
  %55 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %intf, align 4
  %dev59.i = getelementptr inbounds %struct.usb_interface, ptr %56, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59.i, ptr noundef nonnull @.str.112) #9
  %57 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %intf, align 4
  %dev64.i = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  %arrayidx66.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %59 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx66.i, align 2
  %conv67.i = zext i8 %60 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64.i, ptr noundef nonnull @.str.115, i32 noundef %add.i, i32 noundef %conv67.i) #9
  %61 = trunc i32 %shl.i to i16
  %conv70.i = or i16 %61, 50
  %call71.i = call fastcc i32 @em28xx_i2c_read_block(ptr noundef %dev, i16 noundef zeroext %conv70.i, i1 noundef zeroext true, i16 noundef zeroext 2, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call71.i)
  %cmp72.not.i = icmp eq i32 %call71.i, 2
  br i1 %cmp72.not.i, label %if.end80.i, label %do.end77.i

do.end77.i:                                       ; preds = %em28xx_hash_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intf, align 4
  %dev79.i = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79.i, ptr noundef nonnull @.str.118, i32 noundef %call71.i) #9
  br label %error.i

if.end80.i:                                       ; preds = %em28xx_hash_mem.exit.i
  %64 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %call7.i.i.i, align 8
  %conv83.i = zext i8 %65 to i32
  %add84.i = add nuw nsw i32 %add.i, %conv83.i
  %66 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx46.i, align 1
  %conv86.i = zext i8 %67 to i32
  %shl87.i = shl nuw nsw i32 %conv86.i, 8
  %add88.i = add nuw nsw i32 %add84.i, %shl87.i
  %conv89.i = trunc i32 %add88.i to i16
  %call90.i = call fastcc i32 @em28xx_i2c_read_block(ptr noundef %dev, i16 noundef zeroext %conv89.i, i1 noundef zeroext true, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call90.i)
  %cmp91.not.i = icmp eq i32 %call90.i, 256
  br i1 %cmp91.not.i, label %if.end99.i, label %do.end96.i

do.end96.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %intf, align 4
  %dev98.i = getelementptr inbounds %struct.usb_interface, ptr %69, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98.i, ptr noundef nonnull @.str.118, i32 noundef %call90.i) #9
  br label %error.i

if.end99.i:                                       ; preds = %if.end80.i
  %70 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %71)
  %cmp102.not.i = icmp eq i8 %71, 26
  br i1 %cmp102.not.i, label %lor.lhs.false.i, label %if.end99.i.cleanup.thread32.i_crit_edge

if.end99.i.cleanup.thread32.i_crit_edge:          ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread32.i

lor.lhs.false.i:                                  ; preds = %if.end99.i
  %72 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx46.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %73)
  %cmp106.not.i = icmp eq i8 %73, -21
  br i1 %cmp106.not.i, label %lor.lhs.false108.i, label %lor.lhs.false.i.cleanup.thread32.i_crit_edge

lor.lhs.false.i.cleanup.thread32.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread32.i

lor.lhs.false108.i:                               ; preds = %lor.lhs.false.i
  %74 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx66.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %75)
  %cmp111.not.i = icmp eq i8 %75, 103
  br i1 %cmp111.not.i, label %lor.lhs.false113.i, label %lor.lhs.false108.i.cleanup.thread32.i_crit_edge

lor.lhs.false108.i.cleanup.thread32.i_crit_edge:  ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread32.i

lor.lhs.false113.i:                               ; preds = %lor.lhs.false108.i
  %76 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %77)
  %cmp116.not.i = icmp eq i8 %77, -107
  br i1 %cmp116.not.i, label %lor.lhs.false113.i.if.end171.i_crit_edge, label %lor.lhs.false113.i.cleanup.thread32.i_crit_edge

lor.lhs.false113.i.cleanup.thread32.i_crit_edge:  ; preds = %lor.lhs.false113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread32.i

lor.lhs.false113.i.if.end171.i_crit_edge:         ; preds = %lor.lhs.false113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171.i

cleanup.thread32.i:                               ; preds = %lor.lhs.false113.i.cleanup.thread32.i_crit_edge, %lor.lhs.false108.i.cleanup.thread32.i_crit_edge, %lor.lhs.false.i.cleanup.thread32.i_crit_edge, %if.end99.i.cleanup.thread32.i_crit_edge
  %78 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %intf, align 4
  %dev123.i = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev123.i, ptr noundef nonnull @.str.123) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %em28xx_i2c_eeprom.exit.thread

land.lhs.true130.i:                               ; preds = %if.end30.i.land.lhs.true130.i_crit_edge, %if.then18.i.land.lhs.true130.i_crit_edge
  %80 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %81)
  %cmp133.i = icmp eq i8 %81, 26
  br i1 %cmp133.i, label %land.lhs.true135.i, label %land.lhs.true130.i.do.end167.i_crit_edge

land.lhs.true130.i.do.end167.i_crit_edge:         ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

land.lhs.true135.i:                               ; preds = %land.lhs.true130.i
  %arrayidx136.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %82 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx136.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %83)
  %cmp138.i = icmp eq i8 %83, -21
  br i1 %cmp138.i, label %land.lhs.true140.i, label %land.lhs.true135.i.do.end167.i_crit_edge

land.lhs.true135.i.do.end167.i_crit_edge:         ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

land.lhs.true140.i:                               ; preds = %land.lhs.true135.i
  %arrayidx141.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %84 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx141.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %85)
  %cmp143.i = icmp eq i8 %85, 103
  br i1 %cmp143.i, label %land.lhs.true145.i, label %land.lhs.true140.i.do.end167.i_crit_edge

land.lhs.true140.i.do.end167.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

land.lhs.true145.i:                               ; preds = %land.lhs.true140.i
  %arrayidx146.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %86 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx146.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %87)
  %cmp148.i = icmp eq i8 %87, -107
  br i1 %cmp148.i, label %land.lhs.true145.i.do.body.i6.i_crit_edge, label %land.lhs.true145.i.do.end167.i_crit_edge

land.lhs.true145.i.do.end167.i_crit_edge:         ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

land.lhs.true145.i.do.body.i6.i_crit_edge:        ; preds = %land.lhs.true145.i
  br label %do.body.i6.i

do.body.i6.i:                                     ; preds = %if.end.i22.i.do.body.i6.i_crit_edge, %land.lhs.true145.i.do.body.i6.i_crit_edge
  %buf.addr.0.i1.i = phi ptr [ %buf.addr.1.i9.i, %if.end.i22.i.do.body.i6.i_crit_edge ], [ %call7.i.i.i, %land.lhs.true145.i.do.body.i6.i_crit_edge ]
  %hash.0.i2.i = phi i32 [ %hash.1.i20.i, %if.end.i22.i.do.body.i6.i_crit_edge ], [ 0, %land.lhs.true145.i.do.body.i6.i_crit_edge ]
  %l.0.i3.i = phi i32 [ %or.i14.i, %if.end.i22.i.do.body.i6.i_crit_edge ], [ 0, %land.lhs.true145.i.do.body.i6.i_crit_edge ]
  %len.0.i4.i = phi i32 [ %inc.i15.i, %if.end.i22.i.do.body.i6.i_crit_edge ], [ 0, %land.lhs.true145.i.do.body.i6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len.0.i4.i)
  %cmp.i5.i = icmp eq i32 %len.0.i4.i, 256
  br i1 %cmp.i5.i, label %do.body.i6.i.if.end.i22.i_crit_edge, label %if.else.i8.i

do.body.i6.i.if.end.i22.i_crit_edge:              ; preds = %do.body.i6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i22.i

if.else.i8.i:                                     ; preds = %do.body.i6.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i7.i = getelementptr i8, ptr %buf.addr.0.i1.i, i32 1
  %88 = ptrtoint ptr %buf.addr.0.i1.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %buf.addr.0.i1.i, align 1
  br label %if.end.i22.i

if.end.i22.i:                                     ; preds = %if.else.i8.i, %do.body.i6.i.if.end.i22.i_crit_edge
  %buf.addr.1.i9.i = phi ptr [ %incdec.ptr.i7.i, %if.else.i8.i ], [ %buf.addr.0.i1.i, %do.body.i6.i.if.end.i22.i_crit_edge ]
  %len.1.i10.i = phi i32 [ %len.0.i4.i, %if.else.i8.i ], [ -1, %do.body.i6.i.if.end.i22.i_crit_edge ]
  %c.0.i11.i = phi i8 [ %89, %if.else.i8.i ], [ 0, %do.body.i6.i.if.end.i22.i_crit_edge ]
  %shl.i12.i = shl i32 %l.0.i3.i, 8
  %conv1.i13.i = zext i8 %c.0.i11.i to i32
  %or.i14.i = or i32 %shl.i12.i, %conv1.i13.i
  %inc.i15.i = add i32 %len.1.i10.i, 1
  %and.i16.i = and i32 %inc.i15.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %cmp2.i17.i = icmp eq i32 %and.i16.i, 0
  %xor.i18.i = xor i32 %or.i14.i, %hash.0.i2.i
  %mul.i19.i = mul i32 %xor.i18.i, -1640562687
  %hash.1.i20.i = select i1 %cmp2.i17.i, i32 %mul.i19.i, i32 %hash.0.i2.i
  %tobool.not.i21.i = icmp eq i32 %inc.i15.i, 0
  br i1 %tobool.not.i21.i, label %em28xx_hash_mem.exit23.i, label %if.end.i22.i.do.body.i6.i_crit_edge

if.end.i22.i.do.body.i6.i_crit_edge:              ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i6.i

em28xx_hash_mem.exit23.i:                         ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  %hash152.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 32
  %90 = ptrtoint ptr %hash152.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %hash.1.i20.i, ptr %hash152.i, align 4
  %91 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %intf, align 4
  %dev157.i = getelementptr inbounds %struct.usb_interface, ptr %92, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev157.i, ptr noundef nonnull @.str.109, ptr noundef nonnull %call7.i.i.i, i32 noundef %hash.1.i20.i) #9
  %93 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %intf, align 4
  %dev163.i = getelementptr inbounds %struct.usb_interface, ptr %94, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev163.i, ptr noundef nonnull @.str.112) #9
  br label %if.end171.i

do.end167.i:                                      ; preds = %land.lhs.true145.i.do.end167.i_crit_edge, %land.lhs.true140.i.do.end167.i_crit_edge, %land.lhs.true135.i.do.end167.i_crit_edge, %land.lhs.true130.i.do.end167.i_crit_edge, %land.lhs.true39.i.do.end167.i_crit_edge, %land.lhs.true.i.do.end167.i_crit_edge
  %95 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf, align 4
  %dev169.i = getelementptr inbounds %struct.usb_interface, ptr %96, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev169.i, ptr noundef nonnull @.str.130) #9
  br label %error.i

if.end171.i:                                      ; preds = %em28xx_hash_mem.exit23.i, %lor.lhs.false113.i.if.end171.i_crit_edge
  %97 = ptrtoint ptr %eedata to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i.i, ptr %eedata, align 4
  %98 = ptrtoint ptr %eedata_len to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 256, ptr %eedata_len, align 2
  %chip_conf.i = getelementptr inbounds %struct.em28xx_eeprom, ptr %call7.i.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %chip_conf.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %chip_conf.i, align 8
  %101 = lshr i16 %100, 12
  %102 = and i16 %101, 3
  %and.i = zext i16 %102 to i32
  %103 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end171.unreachabledefault.i [
    i32 0, label %do.end175.i
    i32 1, label %do.end181.i
    i32 2, label %sw.bb184.i
    i32 3, label %sw.bb200.i
  ]

do.end175.i:                                      ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %intf, align 4
  %dev177.i = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev177.i, ptr noundef nonnull @.str.133) #9
  br label %sw.epilog.i

do.end181.i:                                      ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %intf, align 4
  %dev183.i = getelementptr inbounds %struct.usb_interface, ptr %107, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev183.i, ptr noundef nonnull @.str.136) #9
  br label %sw.epilog.i

sw.bb184.i:                                       ; preds = %if.end171.i
  %chip_id.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %108 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %chip_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %109)
  %cmp185.i = icmp ult i32 %109, 34
  %110 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %intf, align 4
  %dev192.i = getelementptr inbounds %struct.usb_interface, ptr %111, i32 0, i32 7
  br i1 %cmp185.i, label %do.end190.i, label %do.end196.i

do.end190.i:                                      ; preds = %sw.bb184.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev192.i, ptr noundef nonnull @.str.139) #9
  br label %sw.epilog.i

do.end196.i:                                      ; preds = %sw.bb184.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev192.i, ptr noundef nonnull @.str.142) #9
  br label %sw.epilog.i

sw.bb200.i:                                       ; preds = %if.end171.i
  %chip_id201.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %112 = ptrtoint ptr %chip_id201.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %chip_id201.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %113)
  %cmp202.i = icmp ult i32 %113, 34
  %114 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %intf, align 4
  %dev209.i = getelementptr inbounds %struct.usb_interface, ptr %115, i32 0, i32 7
  br i1 %cmp202.i, label %do.end207.i, label %do.end213.i

do.end207.i:                                      ; preds = %sw.bb200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev209.i, ptr noundef nonnull @.str.142) #9
  br label %sw.epilog.i

do.end213.i:                                      ; preds = %sw.bb200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev209.i, ptr noundef nonnull @.str.147) #9
  br label %sw.epilog.i

if.end171.unreachabledefault.i:                   ; preds = %if.end171.i
  unreachable

sw.epilog.i:                                      ; preds = %do.end213.i, %do.end207.i, %do.end196.i, %do.end190.i, %do.end181.i, %do.end175.i
  %116 = ptrtoint ptr %chip_conf.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %chip_conf.i, align 8
  %118 = and i16 %117, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool220.not.i = icmp eq i16 %118, 0
  br i1 %tobool220.not.i, label %sw.epilog.i.if.end227.i_crit_edge, label %do.end224.i

sw.epilog.i.if.end227.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227.i

do.end224.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %intf, align 4
  %dev226.i = getelementptr inbounds %struct.usb_interface, ptr %120, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev226.i, ptr noundef nonnull @.str.150) #9
  br label %if.end227.i

if.end227.i:                                      ; preds = %do.end224.i, %sw.epilog.i.if.end227.i_crit_edge
  %121 = ptrtoint ptr %chip_conf.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %chip_conf.i, align 8
  %123 = and i16 %122, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool231.not.i = icmp eq i16 %123, 0
  br i1 %tobool231.not.i, label %if.end227.i.if.end238.i_crit_edge, label %do.end235.i

if.end227.i.if.end238.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end238.i

do.end235.i:                                      ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %intf, align 4
  %dev237.i = getelementptr inbounds %struct.usb_interface, ptr %125, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev237.i, ptr noundef nonnull @.str.153) #9
  br label %if.end238.i

if.end238.i:                                      ; preds = %do.end235.i, %if.end227.i.if.end238.i_crit_edge
  %126 = ptrtoint ptr %chip_conf.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %chip_conf.i, align 8
  %128 = lshr i16 %127, 8
  %129 = and i16 %128, 3
  %and241.i = zext i16 %129 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.em28xx_i2c_register, i32 0, i32 %and241.i
  %130 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %130)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %131 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %intf, align 4
  %dev247.i = getelementptr inbounds %struct.usb_interface, ptr %132, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev247.i, ptr noundef nonnull %switch.load) #9
  %133 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %intf, align 4
  %dev271.i = getelementptr inbounds %struct.usb_interface, ptr %134, i32 0, i32 7
  %string_idx_table.i = getelementptr inbounds %struct.em28xx_eeprom, ptr %call7.i.i.i, i32 0, i32 8
  %135 = ptrtoint ptr %string_idx_table.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %string_idx_table.i, align 2
  %conv272.i = zext i8 %136 to i32
  %string1.i = getelementptr inbounds %struct.em28xx_eeprom, ptr %call7.i.i.i, i32 0, i32 5
  %137 = ptrtoint ptr %string1.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %string1.i, align 4
  %139 = call i16 @llvm.bswap.i16(i16 %138) #6
  %conv273.i = zext i16 %139 to i32
  %string2.i = getelementptr inbounds %struct.em28xx_eeprom, ptr %call7.i.i.i, i32 0, i32 6
  %140 = ptrtoint ptr %string2.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %string2.i, align 2
  %142 = call i16 @llvm.bswap.i16(i16 %141) #6
  %conv274.i = zext i16 %142 to i32
  %string3.i = getelementptr inbounds %struct.em28xx_eeprom, ptr %call7.i.i.i, i32 0, i32 7
  %143 = ptrtoint ptr %string3.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %string3.i, align 8
  %145 = call i16 @llvm.bswap.i16(i16 %144) #6
  %conv275.i = zext i16 %145 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev271.i, ptr noundef nonnull @.str.168, i32 noundef %conv272.i, i32 noundef %conv273.i, i32 noundef %conv274.i, i32 noundef %conv275.i) #9
  br label %em28xx_i2c_eeprom.exit.thread

error.i:                                          ; preds = %do.end167.i, %do.end96.i, %do.end77.i, %do.end13.i
  %err.1.i = phi i32 [ %retval.0.i.ph.i, %do.end13.i ], [ -19, %do.end167.i ], [ %call90.i, %do.end96.i ], [ %call71.i, %do.end77.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %em28xx_i2c_eeprom.exit

em28xx_i2c_eeprom.exit.thread:                    ; preds = %if.end238.i, %cleanup.thread32.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  br label %if.end80

em28xx_i2c_eeprom.exit:                           ; preds = %error.i, %if.end.i133.em28xx_i2c_eeprom.exit_crit_edge
  %retval.1.i = phi i32 [ %err.1.i, %error.i ], [ -12, %if.end.i133.em28xx_i2c_eeprom.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i)
  %cmp71 = icmp sgt i32 %retval.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.1.i)
  %cmp72.not = icmp eq i32 %retval.1.i, -19
  %or.cond = or i1 %cmp71, %cmp72.not
  br i1 %or.cond, label %em28xx_i2c_eeprom.exit.if.end80_crit_edge, label %do.end76

em28xx_i2c_eeprom.exit.if.end80_crit_edge:        ; preds = %em28xx_i2c_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end76:                                         ; preds = %em28xx_i2c_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %intf, align 4
  %dev78 = getelementptr inbounds %struct.usb_interface, ptr %147, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef %retval.1.i) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end76, %em28xx_i2c_eeprom.exit.if.end80_crit_edge, %em28xx_i2c_eeprom.exit.thread, %if.end62.if.end80_crit_edge
  %148 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool81.not = icmp eq i32 %148, 0
  br i1 %tobool81.not, label %if.end80.cleanup_crit_edge, label %if.then82

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void @em28xx_do_i2c_scan(ptr noundef %dev, i32 noundef %bus)
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end80.cleanup_crit_edge, %do.end59, %if.end28.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call54, %do.end59 ], [ -19, %if.end28.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em28xx_i2c_unregister(ptr noundef %dev, i32 noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bus)
  %cmp = icmp ugt i32 %bus, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %bus
  tail call void @i2c_del_adapter(ptr noundef %arrayidx) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %b2.i.i = alloca [6 x i8], align 1
  %buf.i27.i = alloca i8, align 1
  %buf.i21.i = alloca i8, align 1
  %buf.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus2 = getelementptr inbounds %struct.em28xx_i2c_bus, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus2, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %disconnected, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_bus_lock = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 25
  %call = tail call i32 @rt_mutex_trylock(ptr noundef %i2c_bus_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cur_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %cur_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_i2c_bus, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp eq i32 %5, %9
  br i1 %cmp.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %algo_type = getelementptr inbounds %struct.em28xx_i2c_bus, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %algo_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %algo_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8 = icmp eq i32 %5, 1
  %. = select i1 %cmp8, i8 4, i8 0
  %call11 = tail call i32 @em28xx_write_reg_bits(ptr noundef %3, i16 noundef zeroext 6, i8 noundef zeroext %., i8 noundef zeroext 4) #6
  %12 = ptrtoint ptr %cur_i2c_bus to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %cur_i2c_bus, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp14273 = icmp sgt i32 %num, 0
  br i1 %cmp14273, label %for.body.lr.ph, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end13
  %algo_type.i162 = getelementptr inbounds %struct.em28xx_i2c_bus, ptr %1, i32 0, i32 2
  %sub = add nsw i32 %num, -1
  %13 = getelementptr inbounds [6 x i8], ptr %b2.i.i, i32 0, i32 1
  %14 = getelementptr inbounds [6 x i8], ptr %b2.i.i, i32 0, i32 2
  %15 = getelementptr inbounds [6 x i8], ptr %b2.i.i, i32 0, i32 5
  %16 = getelementptr inbounds [6 x i8], ptr %b2.i.i, i32 0, i32 4
  %17 = getelementptr inbounds [6 x i8], ptr %b2.i.i, i32 0, i32 3
  %intf = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0274 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %19 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool17.not = icmp eq i16 %21, 0
  br i1 %tobool17.not, label %if.then18, label %if.else25

if.then18:                                        ; preds = %for.body
  %conv19 = trunc i32 %shl to i16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %algo_type.i162 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %algo_type.i162, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %25, label %if.then18.do.body68_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then4.i
    i32 2, label %if.then10.i
  ]

if.then18.do.body68_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.then.i:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #6
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !292
  %call.i.i = call fastcc i32 @em28xx_i2c_recv_bytes(ptr noundef %23, i16 noundef zeroext %conv19, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp1.i.i, i32 %call.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #6
  br i1 %cmp.i.i, label %if.then.i.do.body_crit_edge, label %if.then.i.i2c_check_for_device.exit_crit_edge

if.then.i.i2c_check_for_device.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_check_for_device.exit

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4.i:                                       ; preds = %if.then18
  %conv.i = trunc i32 %shl to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i21.i) #6
  %call.i22.i = call fastcc i32 @em2800_i2c_recv_bytes(ptr noundef %23, i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i21.i, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i22.i)
  %cmp.i23.i = icmp eq i32 %call.i22.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %cmp1.i24.i = icmp slt i32 %call.i22.i, 0
  %spec.select.i25.i = select i1 %cmp1.i24.i, i32 %call.i22.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i21.i) #6
  br i1 %cmp.i23.i, label %if.then4.i.do.body_crit_edge, label %if.then4.i.i2c_check_for_device.exit_crit_edge

if.then4.i.i2c_check_for_device.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_check_for_device.exit

if.then4.i.do.body_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then10.i:                                      ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i27.i) #6
  %28 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %buf.i27.i, align 1, !annotation !292
  %em28xx_read_reg_req_len.i.i.i = getelementptr inbounds %struct.em28xx, ptr %23, i32 0, i32 65
  %29 = ptrtoint ptr %em28xx_read_reg_req_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %em28xx_read_reg_req_len.i.i.i, align 8
  %call.i.i.i = call i32 %30(ptr noundef %23, i8 noundef zeroext 6, i16 noundef zeroext %conv19, ptr noundef nonnull %buf.i27.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp6.i.i.i, label %do.end.i.i.i, label %if.end11.i.i.i

do.end.i.i.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf.i.i.i = getelementptr inbounds %struct.em28xx, ptr %23, i32 0, i32 44
  %31 = ptrtoint ptr %intf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf.i.i.i, align 4
  %dev9.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %conv10.i.i.i = and i32 %shl, 65534
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i.i.i, ptr noundef nonnull @.str.36, i32 noundef %conv10.i.i.i, i32 noundef %call.i.i.i) #9
  br label %em25xx_bus_B_check_for_device.exit.i

if.end11.i.i.i:                                   ; preds = %if.then10.i
  %em28xx_read_reg_req.i.i.i = getelementptr inbounds %struct.em28xx, ptr %23, i32 0, i32 67
  %33 = ptrtoint ptr %em28xx_read_reg_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %em28xx_read_reg_req.i.i.i, align 8
  %call12.i.i.i = call i32 %34(ptr noundef %23, i8 noundef zeroext 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end11.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge, label %if.end15.i.i.i

if.end11.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em25xx_bus_B_check_for_device.exit.i

if.end15.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp16.i.i.i = icmp sgt i32 %call12.i.i.i, 0
  br i1 %cmp16.i.i.i, label %do.body19.i.i.i, label %if.end15.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge

if.end15.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em25xx_bus_B_check_for_device.exit.i

do.body19.i.i.i:                                  ; preds = %if.end15.i.i.i
  %35 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp20.i.i.i = icmp ugt i32 %35, 1
  br i1 %cmp20.i.i.i, label %do.end25.i.i.i, label %do.body19.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge

do.body19.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge: ; preds = %do.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em25xx_bus_B_check_for_device.exit.i

do.end25.i.i.i:                                   ; preds = %do.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf26.i.i.i = getelementptr inbounds %struct.em28xx, ptr %23, i32 0, i32 44
  %36 = ptrtoint ptr %intf26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf26.i.i.i, align 4
  %dev27.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev27.i.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %call12.i.i.i) #9
  br label %em25xx_bus_B_check_for_device.exit.i

em25xx_bus_B_check_for_device.exit.i:             ; preds = %do.end25.i.i.i, %do.body19.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge, %if.end15.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge, %if.end11.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge, %do.end.i.i.i
  %38 = phi i32 [ 0, %if.end11.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge ], [ %call12.i.i.i, %if.end15.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge ], [ -6, %do.body19.i.i.i.em25xx_bus_B_check_for_device.exit.i_crit_edge ], [ -6, %do.end25.i.i.i ], [ %call.i.i.i, %do.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i27.i) #6
  br label %i2c_check_for_device.exit

i2c_check_for_device.exit:                        ; preds = %em25xx_bus_B_check_for_device.exit.i, %if.then4.i.i2c_check_for_device.exit_crit_edge, %if.then.i.i2c_check_for_device.exit_crit_edge
  %rc.0.i = phi i32 [ %spec.select.i.i, %if.then.i.i2c_check_for_device.exit_crit_edge ], [ %spec.select.i25.i, %if.then4.i.i2c_check_for_device.exit_crit_edge ], [ %38, %em25xx_bus_B_check_for_device.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %rc.0.i)
  %cmp21 = icmp eq i32 %rc.0.i, -6
  br i1 %cmp21, label %i2c_check_for_device.exit.do.body68_crit_edge, label %i2c_check_for_device.exit.if.end38_crit_edge

i2c_check_for_device.exit.if.end38_crit_edge:     ; preds = %i2c_check_for_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

i2c_check_for_device.exit.do.body68_crit_edge:    ; preds = %i2c_check_for_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.else25:                                        ; preds = %for.body
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags, align 2
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool28.not = icmp eq i16 %41, 0
  br i1 %tobool28.not, label %if.else32, label %if.then29

if.then29:                                        ; preds = %if.else25
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack157 = load i32, ptr %arrayidx, align 4
  %.elt158 = getelementptr inbounds [3 x i32], ptr %arrayidx, i32 0, i32 1
  %43 = ptrtoint ptr %.elt158 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack159 = load i32, ptr %.elt158, align 4
  %.elt160 = getelementptr inbounds [3 x i32], ptr %arrayidx, i32 0, i32 2
  %44 = ptrtoint ptr %.elt160 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack161 = load i32, ptr %.elt160, align 4
  %msg.sroa.230.4.extract.shift.i = lshr i32 %.unpack159, 16
  %msg.sroa.230.4.extract.trunc.i = trunc i32 %msg.sroa.230.4.extract.shift.i to i16
  %45 = inttoptr i32 %.unpack161 to ptr
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = lshr i32 %.unpack157, 15
  %49 = trunc i32 %48 to i16
  %conv3.i = and i16 %49, -2
  %50 = ptrtoint ptr %algo_type.i162 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %algo_type.i162, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %51, label %if.then29.do.body68_crit_edge [
    i32 0, label %if.then.i163
    i32 1, label %if.then8.i
    i32 2, label %if.then17.i
  ]

if.then29.do.body68_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.then.i163:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call fastcc i32 @em28xx_i2c_recv_bytes(ptr noundef %47, i16 noundef zeroext %conv3.i, ptr noundef %45, i16 noundef zeroext %msg.sroa.230.4.extract.trunc.i) #6
  br label %if.end38

if.then8.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i = trunc i16 %conv3.i to i8
  %call12.i = call fastcc i32 @em2800_i2c_recv_bytes(ptr noundef %47, i8 noundef zeroext %conv9.i, ptr noundef %45, i16 noundef zeroext %msg.sroa.230.4.extract.trunc.i) #6
  br label %if.end38

if.then17.i:                                      ; preds = %if.then29
  %53 = add i16 %msg.sroa.230.4.extract.trunc.i, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -64, i16 %53)
  %54 = icmp ult i16 %53, -64
  br i1 %54, label %if.then17.i.do.body68_crit_edge, label %if.end.i.i

if.then17.i.do.body68_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.end.i.i:                                       ; preds = %if.then17.i
  %em28xx_read_reg_req_len.i.i = getelementptr inbounds %struct.em28xx, ptr %47, i32 0, i32 65
  %55 = ptrtoint ptr %em28xx_read_reg_req_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %em28xx_read_reg_req_len.i.i, align 8
  %call.i.i164 = call i32 %56(ptr noundef %47, i8 noundef zeroext 6, i16 noundef zeroext %conv3.i, ptr noundef %45, i32 noundef %msg.sroa.230.4.extract.shift.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %cmp6.i.i = icmp slt i32 %call.i.i164, 0
  br i1 %cmp6.i.i, label %do.end.i.i, label %if.end11.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf.i.i = getelementptr inbounds %struct.em28xx, ptr %47, i32 0, i32 44
  %57 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %intf.i.i, align 4
  %dev9.i.i = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  %conv10.i.i = zext i16 %conv3.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i.i, ptr noundef nonnull @.str.36, i32 noundef %conv10.i.i, i32 noundef %call.i.i164) #9
  br label %do.body68

if.end11.i.i:                                     ; preds = %if.end.i.i
  %em28xx_read_reg_req.i.i = getelementptr inbounds %struct.em28xx, ptr %47, i32 0, i32 67
  %59 = ptrtoint ptr %em28xx_read_reg_req.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %em28xx_read_reg_req.i.i, align 8
  %call12.i.i = call i32 %60(ptr noundef %47, i8 noundef zeroext 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i.i.do.body_crit_edge, label %if.end15.i.i

if.end11.i.i.do.body_crit_edge:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end15.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp16.i.i = icmp sgt i32 %call12.i.i, 0
  br i1 %cmp16.i.i, label %do.body19.i.i, label %if.end15.i.i.do.body68_crit_edge

if.end15.i.i.do.body68_crit_edge:                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

do.body19.i.i:                                    ; preds = %if.end15.i.i
  %61 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp20.i.i = icmp ugt i32 %61, 1
  br i1 %cmp20.i.i, label %do.end25.i.i, label %do.body19.i.i.cleanup.sink.split_crit_edge

do.body19.i.i.cleanup.sink.split_crit_edge:       ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end25.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf26.i.i = getelementptr inbounds %struct.em28xx, ptr %47, i32 0, i32 44
  %62 = ptrtoint ptr %intf26.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intf26.i.i, align 4
  %dev27.i.i = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev27.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %call12.i.i) #9
  br label %do.body68

if.else32:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0274, i32 %sub)
  %cmp34.not = icmp eq i32 %i.0274, %sub
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack = load i32, ptr %arrayidx, align 4
  %.elt153 = getelementptr inbounds [3 x i32], ptr %arrayidx, i32 0, i32 1
  %65 = ptrtoint ptr %.elt153 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack154 = load i32, ptr %.elt153, align 4
  %.elt155 = getelementptr inbounds [3 x i32], ptr %arrayidx, i32 0, i32 2
  %66 = ptrtoint ptr %.elt155 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack156 = load i32, ptr %.elt155, align 4
  %msg.sroa.230.4.extract.shift.i166 = lshr i32 %.unpack154, 16
  %msg.sroa.230.4.extract.trunc.i167 = trunc i32 %msg.sroa.230.4.extract.shift.i166 to i16
  %67 = inttoptr i32 %.unpack156 to ptr
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = lshr i32 %.unpack, 15
  %71 = trunc i32 %70 to i16
  %conv3.i168 = and i16 %71, -2
  %72 = ptrtoint ptr %algo_type.i162 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %algo_type.i162, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %73, label %if.else32.do.body68_crit_edge [
    i32 0, label %if.then.i170
    i32 1, label %if.then8.i176
    i32 2, label %if.then17.i178
  ]

if.else32.do.body68_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.then.i170:                                     ; preds = %if.else32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %i2c_speed.i.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 8
  %76 = ptrtoint ptr %i2c_speed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i.i.i = load i8, ptr %i2c_speed.i.i.i, align 4
  %77 = and i8 %bf.load.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %77)
  %.not494 = icmp eq i8 %77, 3
  br i1 %.not494, label %if.then.i170.if.else.i.i.i.i_crit_edge, label %switch.lookup

if.then.i170.if.else.i.i.i.i_crit_edge:           ; preds = %if.then.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i.i.i

switch.lookup:                                    ; preds = %if.then.i170
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = zext i8 %77 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.em28xx_i2c_xfer, i32 0, i32 %and.i.i.i
  %78 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %78)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %switch.lookup, %if.then.i170.if.else.i.i.i.i_crit_edge
  %time.0.i.i.i = phi i32 [ 35, %if.then.i170.if.else.i.i.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %call2.i.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %time.0.i.i.i) #6
  %79 = add i16 %msg.sroa.230.4.extract.trunc.i167, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -64, i16 %79)
  %80 = icmp ult i16 %79, -64
  br i1 %80, label %if.else.i.i.i.i.do.body68_crit_edge, label %if.end.i.i172

if.else.i.i.i.i.do.body68_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.end.i.i172:                                    ; preds = %if.else.i.i.i.i
  %em28xx_write_regs_req.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 66
  %81 = ptrtoint ptr %em28xx_write_regs_req.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %em28xx_write_regs_req.i.i, align 4
  %conv5.i.i = select i1 %cmp34.not, i8 2, i8 3
  %call7.i.i = call i32 %82(ptr noundef %69, i8 noundef zeroext %conv5.i.i, i16 noundef zeroext %conv3.i168, ptr noundef %67, i32 noundef %msg.sroa.230.4.extract.shift.i166) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i, i32 %msg.sroa.230.4.extract.shift.i166)
  %cmp9.not.i.i = icmp eq i32 %call7.i.i, %msg.sroa.230.4.extract.shift.i166
  br i1 %cmp9.not.i.i, label %while.cond.preheader.i.i, label %if.then11.i.i

while.cond.preheader.i.i:                         ; preds = %if.end.i.i172
  %83 = add i32 %call2.i.i.i.i, %75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %sub125.i.i = sub i32 %84, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub125.i.i)
  %cmp26126.i.i = icmp slt i32 %sub125.i.i, 0
  br i1 %cmp26126.i.i, label %while.body.lr.ph.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %em28xx_read_reg.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 64
  br label %while.body.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp12.i.i = icmp slt i32 %call7.i.i, 0
  %intf.i.i173 = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %85 = ptrtoint ptr %intf.i.i173 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %intf.i.i173, align 4
  %dev15.i.i = getelementptr inbounds %struct.usb_interface, ptr %86, i32 0, i32 7
  %conv16.i.i = zext i16 %conv3.i168 to i32
  br i1 %cmp12.i.i, label %do.end.i.i174, label %do.end20.i.i

do.end.i.i174:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15.i.i, ptr noundef nonnull @.str.70, i32 noundef %conv16.i.i, i32 noundef %call7.i.i) #9
  br label %do.body68

do.end20.i.i:                                     ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15.i.i, ptr noundef nonnull @.str.73, i32 noundef %msg.sroa.230.4.extract.shift.i166, i32 noundef %conv16.i.i, i32 noundef %call7.i.i) #9
  br label %do.body68

while.body.i.i:                                   ; preds = %if.end59.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %87 = ptrtoint ptr %em28xx_read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %em28xx_read_reg.i.i, align 4
  %call28.i.i = call i32 %88(ptr noundef %69, i16 noundef zeroext 5) #6
  %89 = zext i32 %call28.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call28.i.i, label %if.end50.i.i [
    i32 0, label %while.body.i.i.do.body_crit_edge
    i32 16, label %do.body37.i.i
  ]

while.body.i.i.do.body_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body37.i.i:                                    ; preds = %while.body.i.i
  %90 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp38.i.i = icmp ugt i32 %90, 1
  br i1 %cmp38.i.i, label %do.end43.i.i, label %do.body37.i.i.cleanup.sink.split_crit_edge

do.body37.i.i.cleanup.sink.split_crit_edge:       ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end43.i.i:                                     ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf44.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %91 = ptrtoint ptr %intf44.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %intf44.i.i, align 4
  %dev45.i.i = getelementptr inbounds %struct.usb_interface, ptr %92, i32 0, i32 7
  %conv46.i.i = zext i16 %conv3.i168 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev45.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.71, i32 noundef %conv46.i.i) #9
  br label %do.body68

if.end50.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp51.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp51.i.i, label %do.end56.i.i, label %if.end59.i.i

do.end56.i.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf57.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %93 = ptrtoint ptr %intf57.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %intf57.i.i, align 4
  %dev58.i.i = getelementptr inbounds %struct.usb_interface, ptr %94, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev58.i.i, ptr noundef nonnull @.str.42, i32 noundef %call28.i.i) #9
  br label %do.body68

if.end59.i.i:                                     ; preds = %if.end50.i.i
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %95, %83
  %cmp26.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp26.i.i, label %if.end59.i.i.while.body.i.i_crit_edge, label %if.end59.i.i.while.end.i.i_crit_edge

if.end59.i.i.while.end.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end59.i.i.while.body.i.i_crit_edge:            ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end59.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %ret.0.lcssa.i.i = phi i32 [ %call28.i.i, %if.end59.i.i.while.end.i.i_crit_edge ], [ %msg.sroa.230.4.extract.shift.i166, %while.cond.preheader.i.i.while.end.i.i_crit_edge ]
  %96 = zext i32 %ret.0.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %ret.0.lcssa.i.i, label %do.end82.i.i [
    i32 2, label %while.end.i.i.do.body66.i.i_crit_edge
    i32 4, label %while.end.i.i.do.body66.i.i_crit_edge636
  ]

while.end.i.i.do.body66.i.i_crit_edge636:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i.i

while.end.i.i.do.body66.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66.i.i

do.body66.i.i:                                    ; preds = %while.end.i.i.do.body66.i.i_crit_edge, %while.end.i.i.do.body66.i.i_crit_edge636
  %97 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp67.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp67.not.i.i, label %do.body66.i.i.cleanup.sink.split_crit_edge, label %do.end72.i.i

do.body66.i.i.cleanup.sink.split_crit_edge:       ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end72.i.i:                                     ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf73.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %98 = ptrtoint ptr %intf73.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %intf73.i.i, align 4
  %dev74.i.i = getelementptr inbounds %struct.usb_interface, ptr %99, i32 0, i32 7
  %conv75.i.i = zext i16 %conv3.i168 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev74.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.71, i32 noundef %conv75.i.i, i32 noundef %ret.0.lcssa.i.i) #9
  br label %do.body68

do.end82.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf83.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %100 = ptrtoint ptr %intf83.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %intf83.i.i, align 4
  %dev84.i.i = getelementptr inbounds %struct.usb_interface, ptr %101, i32 0, i32 7
  %conv85.i.i = zext i16 %conv3.i168 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev84.i.i, ptr noundef nonnull @.str.82, i32 noundef %conv85.i.i, i32 noundef %ret.0.lcssa.i.i) #9
  br label %do.body68

if.then8.i176:                                    ; preds = %if.else32
  %conv9.i175 = trunc i16 %conv3.i168 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %i2c_speed.i.i36.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 8
  %103 = ptrtoint ptr %i2c_speed.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load.i.i37.i = load i8, ptr %i2c_speed.i.i36.i, align 4
  %104 = and i8 %bf.load.i.i37.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %104)
  %.not = icmp eq i8 %104, 3
  br i1 %.not, label %if.then8.i176.if.else.i.i.i44.i_crit_edge, label %switch.lookup491

if.then8.i176.if.else.i.i.i44.i_crit_edge:        ; preds = %if.then8.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i.i44.i

switch.lookup491:                                 ; preds = %if.then8.i176
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i38.i = zext i8 %104 to i32
  %switch.gep492 = getelementptr inbounds [3 x i32], ptr @switch.table.em28xx_i2c_xfer.170, i32 0, i32 %and.i.i38.i
  %105 = ptrtoint ptr %switch.gep492 to i32
  call void @__asan_load4_noabort(i32 %105)
  %switch.load493 = load i32, ptr %switch.gep492, align 4
  br label %if.else.i.i.i44.i

if.else.i.i.i44.i:                                ; preds = %switch.lookup491, %if.then8.i176.if.else.i.i.i44.i_crit_edge
  %time.0.i.i41.i = phi i32 [ 35, %if.then8.i176.if.else.i.i.i44.i_crit_edge ], [ %switch.load493, %switch.lookup491 ]
  %call2.i.i.i43.i = call i32 @__msecs_to_jiffies(i32 noundef %time.0.i.i41.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %b2.i.i) #6
  %106 = add i16 %msg.sroa.230.4.extract.trunc.i167, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %106)
  %107 = icmp ult i16 %106, -4
  %108 = call ptr @memset(ptr %b2.i.i, i32 255, i32 3)
  br i1 %107, label %if.else.i.i.i44.i.em2800_i2c_send_bytes.exit.i_crit_edge, label %if.end.i50.i

if.else.i.i.i44.i.em2800_i2c_send_bytes.exit.i_crit_edge: ; preds = %if.else.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em2800_i2c_send_bytes.exit.i

if.end.i50.i:                                     ; preds = %if.else.i.i.i44.i
  %sub.i48.i = add nuw nsw i32 %msg.sroa.230.4.extract.shift.i166, 127
  %conv7.i.i = trunc i32 %sub.i48.i to i8
  %109 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv7.i.i, ptr %15, align 1
  %110 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv9.i175, ptr %16, align 1
  %111 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %67, align 1
  %113 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %msg.sroa.230.4.extract.trunc.i167)
  %cmp12.i49.i = icmp ugt i16 %msg.sroa.230.4.extract.trunc.i167, 1
  br i1 %cmp12.i49.i, label %if.end17.i.i, label %if.end.i50.i.if.end31.i.i_crit_edge

if.end.i50.i.if.end31.i.i_crit_edge:              ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.end17.i.i:                                     ; preds = %if.end.i50.i
  %arrayidx15.i.i = getelementptr i8, ptr %67, i32 1
  %114 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx15.i.i, align 1
  %116 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %msg.sroa.230.4.extract.trunc.i167)
  %cmp19.not.i.i = icmp eq i16 %msg.sroa.230.4.extract.trunc.i167, 2
  br i1 %cmp19.not.i.i, label %if.end17.i.i.if.end31.i.i_crit_edge, label %if.end24.i.i

if.end17.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.end24.i.i:                                     ; preds = %if.end17.i.i
  %arrayidx22.i.i = getelementptr i8, ptr %67, i32 2
  %117 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx22.i.i, align 1
  %119 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %msg.sroa.230.4.extract.trunc.i167)
  %cmp26.i51.i = icmp ugt i16 %msg.sroa.230.4.extract.trunc.i167, 3
  br i1 %cmp26.i51.i, label %if.then28.i.i, label %if.end24.i.i.if.end31.i.i_crit_edge

if.end24.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29.i.i = getelementptr i8, ptr %67, i32 3
  %120 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx29.i.i, align 1
  %122 = ptrtoint ptr %b2.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %b2.i.i, align 1
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.end24.i.i.if.end31.i.i_crit_edge, %if.end17.i.i.if.end31.i.i_crit_edge, %if.end.i50.i.if.end31.i.i_crit_edge
  %em28xx_write_regs.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 63
  %123 = ptrtoint ptr %em28xx_write_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %em28xx_write_regs.i.i, align 8
  %sub33.i.i = sub nsw i32 4, %msg.sroa.230.4.extract.shift.i166
  %conv34.i.i = trunc i32 %sub33.i.i to i16
  %arrayidx37.i.i = getelementptr [6 x i8], ptr %b2.i.i, i32 0, i32 %sub33.i.i
  %add39.i.i = add nuw nsw i32 %msg.sroa.230.4.extract.shift.i166, 2
  %call40.i.i = call i32 %124(ptr noundef %69, i16 noundef zeroext %conv34.i.i, ptr noundef %arrayidx37.i.i, i32 noundef %add39.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call40.i.i, i32 %add39.i.i)
  %cmp43.not.i.i = icmp eq i32 %call40.i.i, %add39.i.i
  br i1 %cmp43.not.i.i, label %while.cond.preheader.i52.i, label %do.end.i56.i

while.cond.preheader.i52.i:                       ; preds = %if.end31.i.i
  %125 = add i32 %call2.i.i.i43.i, %102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %sub51144.i.i = sub i32 %126, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51144.i.i)
  %cmp52145.i.i = icmp slt i32 %sub51144.i.i, 0
  br i1 %cmp52145.i.i, label %while.body.lr.ph.i54.i, label %while.cond.preheader.i52.i.do.body91.i.i_crit_edge

while.cond.preheader.i52.i.do.body91.i.i_crit_edge: ; preds = %while.cond.preheader.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91.i.i

while.body.lr.ph.i54.i:                           ; preds = %while.cond.preheader.i52.i
  %em28xx_read_reg.i53.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 64
  %sub65.i.i = add nuw nsw i32 %msg.sroa.230.4.extract.shift.i166, 147
  br label %while.body.i57.i

do.end.i56.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf.i55.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %127 = ptrtoint ptr %intf.i55.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %intf.i55.i, align 4
  %dev46.i.i = getelementptr inbounds %struct.usb_interface, ptr %128, i32 0, i32 7
  %conv9.mask.i = and i32 %70, 254
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev46.i.i, ptr noundef nonnull @.str.84, i32 noundef %conv9.mask.i, i32 noundef %call40.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp48.i.i = icmp slt i32 %call40.i.i, 0
  %spec.select.i.i177 = select i1 %cmp48.i.i, i32 %call40.i.i, i32 -5
  br label %em2800_i2c_send_bytes.exit.i

while.body.i57.i:                                 ; preds = %if.end90.i.i.while.body.i57.i_crit_edge, %while.body.lr.ph.i54.i
  %129 = ptrtoint ptr %em28xx_read_reg.i53.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %em28xx_read_reg.i53.i, align 4
  %call54.i.i = call i32 %130(ptr noundef %69, i16 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.i.i, i32 %sub.i48.i)
  %cmp58.i.i = icmp eq i32 %call54.i.i, %sub.i48.i
  br i1 %cmp58.i.i, label %while.body.i57.i.em2800_i2c_send_bytes.exit.i_crit_edge, label %if.end62.i.i

while.body.i57.i.em2800_i2c_send_bytes.exit.i_crit_edge: ; preds = %while.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em2800_i2c_send_bytes.exit.i

if.end62.i.i:                                     ; preds = %while.body.i57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.i.i, i32 %sub65.i.i)
  %cmp66.i.i = icmp eq i32 %call54.i.i, %sub65.i.i
  br i1 %cmp66.i.i, label %do.body69.i.i, label %if.end81.i.i

do.body69.i.i:                                    ; preds = %if.end62.i.i
  %131 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp70.i.i = icmp ugt i32 %131, 1
  br i1 %cmp70.i.i, label %do.end75.i.i, label %do.body69.i.i.em2800_i2c_send_bytes.exit.i_crit_edge

do.body69.i.i.em2800_i2c_send_bytes.exit.i_crit_edge: ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em2800_i2c_send_bytes.exit.i

do.end75.i.i:                                     ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf76.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %132 = ptrtoint ptr %intf76.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %intf76.i.i, align 4
  %dev77.i.i = getelementptr inbounds %struct.usb_interface, ptr %133, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev77.i.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.85, i32 noundef %sub65.i.i) #9
  br label %em2800_i2c_send_bytes.exit.i

if.end81.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %cmp82.i.i = icmp slt i32 %call54.i.i, 0
  br i1 %cmp82.i.i, label %do.end87.i.i, label %if.end90.i.i

do.end87.i.i:                                     ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf88.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %134 = ptrtoint ptr %intf88.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %intf88.i.i, align 4
  %dev89.i.i = getelementptr inbounds %struct.usb_interface, ptr %135, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev89.i.i, ptr noundef nonnull @.str.42, i32 noundef %call54.i.i) #9
  br label %em2800_i2c_send_bytes.exit.i

if.end90.i.i:                                     ; preds = %if.end81.i.i
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %sub51.i.i = sub i32 %136, %125
  %cmp52.i.i = icmp slt i32 %sub51.i.i, 0
  br i1 %cmp52.i.i, label %if.end90.i.i.while.body.i57.i_crit_edge, label %if.end90.i.i.do.body91.i.i_crit_edge

if.end90.i.i.do.body91.i.i_crit_edge:             ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91.i.i

if.end90.i.i.while.body.i57.i_crit_edge:          ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i57.i

do.body91.i.i:                                    ; preds = %if.end90.i.i.do.body91.i.i_crit_edge, %while.cond.preheader.i52.i.do.body91.i.i_crit_edge
  %137 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp92.not.i.i = icmp eq i32 %137, 0
  br i1 %cmp92.not.i.i, label %do.body91.i.i.em2800_i2c_send_bytes.exit.i_crit_edge, label %do.end97.i.i

do.body91.i.i.em2800_i2c_send_bytes.exit.i_crit_edge: ; preds = %do.body91.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %em2800_i2c_send_bytes.exit.i

do.end97.i.i:                                     ; preds = %do.body91.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf98.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %138 = ptrtoint ptr %intf98.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %intf98.i.i, align 4
  %dev99.i.i = getelementptr inbounds %struct.usb_interface, ptr %139, i32 0, i32 7
  %conv9.mask66.i = and i32 %70, 254
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev99.i.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.85, i32 noundef %conv9.mask66.i) #9
  br label %em2800_i2c_send_bytes.exit.i

em2800_i2c_send_bytes.exit.i:                     ; preds = %do.end97.i.i, %do.body91.i.i.em2800_i2c_send_bytes.exit.i_crit_edge, %do.end87.i.i, %do.end75.i.i, %do.body69.i.i.em2800_i2c_send_bytes.exit.i_crit_edge, %while.body.i57.i.em2800_i2c_send_bytes.exit.i_crit_edge, %do.end.i56.i, %if.else.i.i.i44.i.em2800_i2c_send_bytes.exit.i_crit_edge
  %retval.0.i58.i = phi i32 [ %spec.select.i.i177, %do.end.i56.i ], [ %call54.i.i, %do.end87.i.i ], [ -95, %if.else.i.i.i44.i.em2800_i2c_send_bytes.exit.i_crit_edge ], [ -6, %do.end75.i.i ], [ -6, %do.body69.i.i.em2800_i2c_send_bytes.exit.i_crit_edge ], [ -110, %do.end97.i.i ], [ -110, %do.body91.i.i.em2800_i2c_send_bytes.exit.i_crit_edge ], [ %msg.sroa.230.4.extract.shift.i166, %while.body.i57.i.em2800_i2c_send_bytes.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %b2.i.i) #6
  br label %if.end38

if.then17.i178:                                   ; preds = %if.else32
  %140 = add i16 %msg.sroa.230.4.extract.trunc.i167, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -64, i16 %140)
  %141 = icmp ult i16 %140, -64
  br i1 %141, label %if.then17.i178.do.body68_crit_edge, label %if.end.i61.i

if.then17.i178.do.body68_crit_edge:               ; preds = %if.then17.i178
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.end.i61.i:                                     ; preds = %if.then17.i178
  %em28xx_write_regs_req.i60.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 66
  %142 = ptrtoint ptr %em28xx_write_regs_req.i60.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %em28xx_write_regs_req.i60.i, align 4
  %call.i.i179 = call i32 %143(ptr noundef %69, i8 noundef zeroext 6, i16 noundef zeroext %conv3.i168, ptr noundef %67, i32 noundef %msg.sroa.230.4.extract.shift.i166) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i179, i32 %msg.sroa.230.4.extract.shift.i166)
  %cmp7.not.i.i = icmp eq i32 %call.i.i179, %msg.sroa.230.4.extract.shift.i166
  br i1 %cmp7.not.i.i, label %if.end23.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %cmp10.i.i = icmp slt i32 %call.i.i179, 0
  %intf.i62.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %144 = ptrtoint ptr %intf.i62.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %intf.i62.i, align 4
  %dev13.i.i = getelementptr inbounds %struct.usb_interface, ptr %145, i32 0, i32 7
  %conv14.i.i = zext i16 %conv3.i168 to i32
  br i1 %cmp10.i.i, label %do.end.i63.i, label %do.end18.i.i

do.end.i63.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.70, i32 noundef %conv14.i.i, i32 noundef %call.i.i179) #9
  br label %do.body68

do.end18.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.73, i32 noundef %msg.sroa.230.4.extract.shift.i166, i32 noundef %conv14.i.i, i32 noundef %call.i.i179) #9
  br label %do.body68

if.end23.i.i:                                     ; preds = %if.end.i61.i
  %em28xx_read_reg_req.i.i180 = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 67
  %146 = ptrtoint ptr %em28xx_read_reg_req.i.i180 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %em28xx_read_reg_req.i.i180, align 8
  %call24.i.i = call i32 %147(ptr noundef %69, i8 noundef zeroext 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool.not.i64.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool.not.i64.i, label %if.end23.i.i.do.body_crit_edge, label %if.end27.i.i

if.end23.i.i.do.body_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end27.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp28.i.i = icmp sgt i32 %call24.i.i, 0
  br i1 %cmp28.i.i, label %do.body31.i.i, label %if.end27.i.i.do.body68_crit_edge

if.end27.i.i.do.body68_crit_edge:                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

do.body31.i.i:                                    ; preds = %if.end27.i.i
  %148 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp32.i.i = icmp ugt i32 %148, 1
  br i1 %cmp32.i.i, label %do.end37.i.i, label %do.body31.i.i.cleanup.sink.split_crit_edge

do.body31.i.i.cleanup.sink.split_crit_edge:       ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end37.i.i:                                     ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf38.i.i = getelementptr inbounds %struct.em28xx, ptr %69, i32 0, i32 44
  %149 = ptrtoint ptr %intf38.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %intf38.i.i, align 4
  %dev39.i.i = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev39.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.93, i32 noundef %call24.i.i) #9
  br label %do.body68

if.end38:                                         ; preds = %em2800_i2c_send_bytes.exit.i, %if.then8.i, %if.then.i163, %i2c_check_for_device.exit.if.end38_crit_edge
  %rc.0 = phi i32 [ %rc.0.i, %i2c_check_for_device.exit.if.end38_crit_edge ], [ %call.i, %if.then.i163 ], [ %call12.i, %if.then8.i ], [ %retval.0.i58.i, %em2800_i2c_send_bytes.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp39 = icmp slt i32 %rc.0, 0
  br i1 %cmp39, label %if.end38.do.body68_crit_edge, label %if.end38.do.body_crit_edge

if.end38.do.body_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end38.do.body68_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

do.body:                                          ; preds = %if.end38.do.body_crit_edge, %if.end23.i.i.do.body_crit_edge, %while.body.i.i.do.body_crit_edge, %if.end11.i.i.do.body_crit_edge, %if.then4.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %151 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %cmp43 = icmp ugt i32 %151, 2
  br i1 %cmp43, label %do.end, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %intf, align 4
  %dev47 = getelementptr inbounds %struct.usb_interface, ptr %153, i32 0, i32 7
  %flags49 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274, i32 1
  %154 = ptrtoint ptr %flags49 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %flags49, align 2
  %156 = and i16 %155, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool52.not = icmp eq i16 %156, 0
  %cond = select i1 %tobool52.not, ptr @.str.28, ptr @.str.27
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0274, i32 %sub)
  %cmp54 = icmp eq i32 %i.0274, %sub
  %cond56 = select i1 %cmp54, ptr @.str.29, ptr @.str.30
  %157 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %len, align 4
  %conv59 = zext i16 %158 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274, i32 3
  %159 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %buf, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev47, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond, ptr noundef nonnull %cond56, i32 noundef %shl, i32 noundef %conv59, i32 noundef %conv59, ptr noundef %160) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0274, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body68:                                        ; preds = %if.end38.do.body68_crit_edge, %do.end37.i.i, %if.end27.i.i.do.body68_crit_edge, %do.end18.i.i, %do.end.i63.i, %if.then17.i178.do.body68_crit_edge, %do.end82.i.i, %do.end72.i.i, %do.end56.i.i, %do.end43.i.i, %do.end20.i.i, %do.end.i.i174, %if.else.i.i.i.i.do.body68_crit_edge, %if.else32.do.body68_crit_edge, %do.end25.i.i, %if.end15.i.i.do.body68_crit_edge, %do.end.i.i, %if.then17.i.do.body68_crit_edge, %if.then29.do.body68_crit_edge, %i2c_check_for_device.exit.do.body68_crit_edge, %if.then18.do.body68_crit_edge
  %rc.0187.ph = phi i32 [ %call.i.i164, %do.end.i.i ], [ -6, %do.end25.i.i ], [ %call12.i.i, %if.end15.i.i.do.body68_crit_edge ], [ %call7.i.i, %do.end.i.i174 ], [ -5, %do.end20.i.i ], [ %call28.i.i, %do.end56.i.i ], [ -5, %do.end82.i.i ], [ -6, %do.end43.i.i ], [ -110, %do.end72.i.i ], [ %call.i.i179, %do.end.i63.i ], [ -5, %do.end18.i.i ], [ -6, %do.end37.i.i ], [ %call24.i.i, %if.end27.i.i.do.body68_crit_edge ], [ %rc.0, %if.end38.do.body68_crit_edge ], [ -95, %if.then29.do.body68_crit_edge ], [ -95, %if.then17.i.do.body68_crit_edge ], [ -95, %if.else32.do.body68_crit_edge ], [ -95, %if.else.i.i.i.i.do.body68_crit_edge ], [ -95, %if.then17.i178.do.body68_crit_edge ], [ -19, %i2c_check_for_device.exit.do.body68_crit_edge ], [ -95, %if.then18.do.body68_crit_edge ]
  %.pr = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp69 = icmp ugt i32 %.pr, 2
  br i1 %cmp69, label %do.end74, label %do.body68.cleanup.sink.split_crit_edge

do.body68.cleanup.sink.split_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %intf, align 4
  %dev76 = getelementptr inbounds %struct.usb_interface, ptr %162, i32 0, i32 7
  %flags78 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274, i32 1
  %163 = ptrtoint ptr %flags78 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %flags78, align 2
  %165 = and i16 %164, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool81.not = icmp eq i16 %165, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.28, ptr @.str.27
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0274, i32 %sub)
  %cmp84 = icmp eq i32 %i.0274, %sub
  %cond86 = select i1 %cmp84, ptr @.str.29, ptr @.str.30
  %166 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %len, align 4
  %conv89 = zext i16 %167 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %rc.0187.ph)
  %cmp90 = icmp eq i32 %rc.0187.ph, -19
  %cond92 = select i1 %cmp90, ptr @.str.34, ptr @.str.35
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev76, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond82, ptr noundef nonnull %cond86, i32 noundef %shl, i32 noundef %conv89, ptr noundef nonnull %cond92, i32 noundef %rc.0187.ph) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end74, %do.body68.cleanup.sink.split_crit_edge, %for.inc.cleanup.sink.split_crit_edge, %do.body31.i.i.cleanup.sink.split_crit_edge, %do.body66.i.i.cleanup.sink.split_crit_edge, %do.body37.i.i.cleanup.sink.split_crit_edge, %do.body19.i.i.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %num, %if.end13.cleanup.sink.split_crit_edge ], [ %rc.0187.ph, %do.end74 ], [ %rc.0187.ph, %do.body68.cleanup.sink.split_crit_edge ], [ -6, %do.body19.i.i.cleanup.sink.split_crit_edge ], [ -6, %do.body37.i.i.cleanup.sink.split_crit_edge ], [ -110, %do.body66.i.i.cleanup.sink.split_crit_edge ], [ -6, %do.body31.i.i.cleanup.sink.split_crit_edge ], [ %num, %for.inc.cleanup.sink.split_crit_edge ]
  call void @rt_mutex_unlock(ptr noundef %i2c_bus_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readonly %i2c_adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %algo_type = getelementptr inbounds %struct.em28xx_i2c_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %algo_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 901, i32 noundef 9, ptr noundef nonnull @.str.98) #6
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.functionality, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_i2c_recv_bytes(ptr noundef %dev, i16 noundef zeroext %addr, ptr noundef %buf, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %0 = add i16 %len, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -64, i16 %0)
  %1 = icmp ult i16 %0, -64
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %em28xx_read_reg_req_len = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 65
  %2 = ptrtoint ptr %em28xx_read_reg_req_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %em28xx_read_reg_req_len, align 8
  %call = tail call i32 %3(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %conv10 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.36, i32 noundef %conv10, i32 noundef %call) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp12.not = icmp eq i32 %call, %conv
  br i1 %cmp12.not, label %if.else.if.end28_crit_edge, label %do.body15

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.body15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @em28xx_i2c_recv_bytes.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@em28xx_i2c_recv_bytes, %if.then19)) #6
          to label %if.end28 [label %if.then19], !srcloc !294

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %intf20 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %intf20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf20, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %conv22 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @em28xx_i2c_recv_bytes.__UNIQUE_ID_ddebug307, ptr noundef %dev21, ptr noundef nonnull @.str.40, i32 noundef %call, i32 noundef %conv22, i32 noundef %conv) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %do.body15, %if.else.if.end28_crit_edge
  %em28xx_read_reg = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 64
  %8 = ptrtoint ptr %em28xx_read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %em28xx_read_reg, align 4
  %call29 = tail call i32 %9(ptr noundef %dev, i16 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp35 = icmp slt i32 %call29, 0
  br i1 %cmp35, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %intf41 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %intf41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf41, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.42, i32 noundef %call29) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %12 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %call29, label %do.end83 [
    i32 16, label %do.body47
    i32 2, label %if.end43.do.body67_crit_edge
    i32 4, label %if.end43.do.body67_crit_edge120
  ]

if.end43.do.body67_crit_edge120:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

if.end43.do.body67_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

do.body47:                                        ; preds = %if.end43
  %13 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp48 = icmp ugt i32 %13, 1
  br i1 %cmp48, label %do.end53, label %do.body47.cleanup_crit_edge

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %intf54 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %14 = ptrtoint ptr %intf54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf54, align 4
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %conv56 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev55, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37, i32 noundef %conv56) #9
  br label %cleanup

do.body67:                                        ; preds = %if.end43.do.body67_crit_edge, %if.end43.do.body67_crit_edge120
  %16 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp68.not = icmp eq i32 %16, 0
  br i1 %cmp68.not, label %do.body67.cleanup_crit_edge, label %do.end73

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %intf74 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %17 = ptrtoint ptr %intf74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf74, align 4
  %dev75 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %conv76 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev75, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.37, i32 noundef %conv76, i32 noundef %call29) #9
  br label %cleanup

do.end83:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %intf84 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %19 = ptrtoint ptr %intf84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf84, align 4
  %dev85 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  %conv86 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev85, ptr noundef nonnull @.str.51, i32 noundef %conv86, i32 noundef %call29) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %do.end73, %do.body67.cleanup_crit_edge, %do.end53, %do.body47.cleanup_crit_edge, %do.end40, %if.end28.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call29, %do.end40 ], [ -5, %do.end83 ], [ -95, %entry.cleanup_crit_edge ], [ %conv, %if.end28.cleanup_crit_edge ], [ -6, %do.end53 ], [ -6, %do.body47.cleanup_crit_edge ], [ -110, %do.end73 ], [ -110, %do.body67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em2800_i2c_recv_bytes(ptr noundef %dev, i8 noundef zeroext %addr, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %buf2 = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %i2c_speed.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %i2c_speed.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %i2c_speed.i, align 4
  %2 = and i8 %bf.load.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %.not = icmp eq i8 %2, 3
  br i1 %.not, label %entry.if.else.i.i_crit_edge, label %switch.lookup

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = zext i8 %2 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.em2800_i2c_recv_bytes, i32 0, i32 %and.i
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %switch.lookup, %entry.if.else.i.i_crit_edge
  %time.0.i = phi i32 [ 35, %entry.if.else.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %time.0.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf2) #6
  %conv = zext i16 %len to i32
  %4 = add i16 %len, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %4)
  %5 = icmp ult i16 %4, -4
  %6 = getelementptr inbounds i8, ptr %buf2, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 -1, ptr %6, align 1
  br i1 %5, label %if.else.i.i.cleanup_crit_edge, label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i
  %8 = getelementptr inbounds [4 x i8], ptr %buf2, i32 0, i32 1
  %sub = add nuw nsw i32 %conv, 131
  %conv7 = trunc i32 %sub to i8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %8, align 1
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %addr, ptr %buf2, align 1
  %em28xx_write_regs = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 63
  %11 = ptrtoint ptr %em28xx_write_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %em28xx_write_regs, align 8
  %call9 = call i32 %12(ptr noundef %dev, i16 noundef zeroext 4, ptr noundef nonnull %buf2, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 2
  br i1 %cmp10.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %if.end
  %13 = add i32 %call2.i.i, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub18155 = sub i32 %14, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18155)
  %cmp19156 = icmp slt i32 %sub18155, 0
  br i1 %cmp19156, label %while.body.lr.ph, label %while.cond.preheader.do.body63_crit_edge

while.cond.preheader.do.body63_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %em28xx_read_reg = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 64
  %sub31 = add nuw nsw i32 %conv, 147
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %15 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %conv14 = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.53, i32 noundef %conv14, i32 noundef %call9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp15 = icmp slt i32 %call9, 0
  %spec.select = select i1 %cmp15, i32 %call9, i32 -5
  br label %cleanup

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %17 = ptrtoint ptr %em28xx_read_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %em28xx_read_reg, align 4
  %call21 = call i32 %18(ptr noundef %dev, i16 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %sub)
  %cmp25 = icmp eq i32 %call21, %sub
  br i1 %cmp25, label %while.body.if.end76_crit_edge, label %if.end28

while.body.if.end76_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.end28:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %sub31)
  %cmp32 = icmp eq i32 %call21, %sub31
  br i1 %cmp32, label %do.body35, label %if.end47

do.body35:                                        ; preds = %if.end28
  %19 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp36 = icmp ugt i32 %19, 1
  br i1 %cmp36, label %do.end41, label %do.body35.cleanup_crit_edge

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %intf42 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %20 = ptrtoint ptr %intf42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf42, align 4
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev43, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %sub31) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp48 = icmp slt i32 %call21, 0
  br i1 %cmp48, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %intf54 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %22 = ptrtoint ptr %intf54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf54, align 4
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev55, ptr noundef nonnull @.str.42, i32 noundef %call21) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub18 = sub i32 %24, %13
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %if.end56.while.body_crit_edge, label %while.end

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %sub)
  %cmp60.not = icmp eq i32 %call21, %sub
  br i1 %cmp60.not, label %while.end.if.end76_crit_edge, label %while.end.do.body63_crit_edge

while.end.do.body63_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.body63:                                        ; preds = %while.end.do.body63_crit_edge, %while.cond.preheader.do.body63_crit_edge
  %25 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp64.not = icmp eq i32 %25, 0
  br i1 %cmp64.not, label %do.body63.if.end76_crit_edge, label %do.end69

do.body63.if.end76_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %intf70 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %26 = ptrtoint ptr %intf70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf70, align 4
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  %conv72 = zext i8 %addr to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev71, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.54, i32 noundef %conv72) #9
  br label %if.end76

if.end76:                                         ; preds = %do.end69, %do.body63.if.end76_crit_edge, %while.end.if.end76_crit_edge, %while.body.if.end76_crit_edge
  %em28xx_read_reg_req_len = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 65
  %28 = ptrtoint ptr %em28xx_read_reg_req_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %em28xx_read_reg_req_len, align 8
  %sub78 = sub i16 4, %len
  %call82 = call i32 %29(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext %sub78, ptr noundef nonnull %buf2, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call82, i32 %conv)
  %cmp84.not = icmp eq i32 %call82, %conv
  br i1 %cmp84.not, label %for.cond.preheader, label %do.end89

for.cond.preheader:                               ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %cmp101158.not = icmp eq i16 %len, 0
  br i1 %cmp101158.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end89:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %intf90 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %30 = ptrtoint ptr %intf90 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf90, align 4
  %dev91 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  %conv92 = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev91, ptr noundef nonnull @.str.64, i32 noundef %conv92, i32 noundef %call82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp93 = icmp slt i32 %call82, 0
  %spec.select153 = select i1 %cmp93, i32 %call82, i32 -5
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0159 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %32 = xor i32 %i.0159, -1
  %sub105 = add nsw i32 %32, %conv
  %arrayidx106 = getelementptr [4 x i8], ptr %buf2, i32 0, i32 %sub105
  %33 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx106, align 1
  %arrayidx107 = getelementptr i8, ptr %buf, i32 %i.0159
  %35 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx107, align 1
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end89, %for.cond.preheader.cleanup_crit_edge, %do.end53, %do.end41, %do.body35.cleanup_crit_edge, %do.end, %if.else.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %spec.select153, %do.end89 ], [ %call21, %do.end53 ], [ -95, %if.else.i.i.cleanup_crit_edge ], [ -6, %do.end41 ], [ -6, %do.body35.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %conv, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf2) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_i2c_read_block(ptr noundef %dev, i16 noundef zeroext %addr, i1 noundef zeroext %addr_w16, i16 noundef zeroext %len, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %conv1 = zext i16 %addr to i32
  %add = add nuw nsw i32 %conv, %conv1
  %add4 = select i1 %addr_w16, i32 65536, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add4)
  %cmp = icmp ugt i32 %add, %add4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = lshr i16 %addr, 8
  %conv7 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv7, ptr %buf, align 1
  %conv9 = trunc i16 %addr to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv9, ptr %0, align 1
  %i2c_client = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 20
  %lnot = xor i1 %addr_w16, true
  %lnot.ext = zext i1 %lnot to i32
  %add.ptr = getelementptr i8, ptr %buf, i32 %lnot.ext
  %add15 = select i1 %addr_w16, i32 2, i32 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef %add.ptr, i32 noundef %add15, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %is_em2800 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %4 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_em2800, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool20.not = icmp sgt i16 %bf.load, -1
  %. = select i1 %tobool20.not, i32 64, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %cmp232.not = icmp eq i16 %len, 0
  br i1 %cmp232.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %if.end19.while.body_crit_edge
  %remain.04 = phi i32 [ %sub, %if.end36.while.body_crit_edge ], [ %conv, %if.end19.while.body_crit_edge ]
  %data.addr.03 = phi ptr [ %add.ptr37, %if.end36.while.body_crit_edge ], [ %data, %if.end19.while.body_crit_edge ]
  %5 = call i32 @llvm.smin.i32(i32 %remain.04, i32 %.)
  %call.i1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef %data.addr.03, i32 noundef %5, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp33 = icmp slt i32 %call.i1, 0
  br i1 %cmp33, label %while.body.cleanup_crit_edge, label %if.end36

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %while.body
  %sub = sub i32 %remain.04, %5
  %add.ptr37 = getelementptr i8, ptr %data.addr.03, i32 %5
  %cmp23 = icmp sgt i32 %sub, 0
  br i1 %cmp23, label %if.end36.while.body_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end36.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %call.i1, %while.body.cleanup_crit_edge ], [ %conv, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @__param_i2c_scan, !1, !"__param_i2c_scan", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_scantype303, !1, !"__UNIQUE_ID_i2c_scantype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_scan304, !4, !"__UNIQUE_ID_i2c_scan304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 37, i32 1}
!5 = !{ptr @__param_i2c_debug, !6, !"__param_i2c_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_debugtype305, !6, !"__UNIQUE_ID_i2c_debugtype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_debug306, !9, !"__UNIQUE_ID_i2c_debug306", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 41, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 964, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @em28xx_do_i2c_scan._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @em28xx_do_i2c_scan._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 1002, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @em28xx_i2c_register._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @em28xx_i2c_register._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 1016, i32 4}
!27 = !{ptr @em28xx_i2c_register._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @em28xx_i2c_register._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @i2c_scan, !30, !"i2c_scan", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 35, i32 21}
!31 = !{ptr @i2c_debug, !32, !"i2c_debug", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 39, i32 21}
!33 = !{ptr @__param_str_i2c_scan, !1, !"__param_str_i2c_scan", i1 false, i1 false}
!34 = !{ptr @__param_str_i2c_debug, !6, !"__param_str_i2c_debug", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 927, i32 16}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 928, i32 16}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 929, i32 16}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 930, i32 16}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 934, i32 16}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 933, i32 16}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 936, i32 16}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 937, i32 16}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 938, i32 16}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 939, i32 16}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 940, i32 16}
!57 = !{ptr @i2c_devs, !58, !"i2c_devs", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 926, i32 14}
!59 = !{ptr @em28xx_adap_template, !60, !"em28xx_adap_template", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 910, i32 33}
!61 = !{ptr @em28xx_algo, !62, !"em28xx_algo", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 905, i32 35}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 588, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @em28xx_i2c_xfer._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @em28xx_i2c_xfer._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 599, i32 2}
!75 = !{ptr @em28xx_i2c_xfer._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @em28xx_i2c_xfer._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 293, i32 3}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @em28xx_i2c_recv_bytes._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @em28xx_i2c_recv_bytes._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 298, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @em28xx_i2c_recv_bytes.__UNIQUE_ID_ddebug307, !86, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 316, i32 3}
!91 = !{ptr @em28xx_i2c_recv_bytes._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @em28xx_i2c_recv_bytes._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 322, i32 3}
!95 = !{ptr @em28xx_i2c_recv_bytes._entry.44, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @em28xx_i2c_recv_bytes._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 329, i32 3}
!99 = !{ptr @em28xx_i2c_recv_bytes._entry.47, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @em28xx_i2c_recv_bytes._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 335, i32 2}
!103 = !{ptr @em28xx_i2c_recv_bytes._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @em28xx_i2c_recv_bytes._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 150, i32 3}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @em2800_i2c_recv_bytes._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @em2800_i2c_recv_bytes._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 162, i32 4}
!112 = !{ptr @em2800_i2c_recv_bytes._entry.55, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @em2800_i2c_recv_bytes._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @em2800_i2c_recv_bytes._entry.58, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 167, i32 4}
!116 = !{ptr @em2800_i2c_recv_bytes._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 175, i32 3}
!119 = !{ptr @em2800_i2c_recv_bytes._entry.60, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @em2800_i2c_recv_bytes._entry_ptr.62, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 180, i32 3}
!123 = !{ptr @em2800_i2c_recv_bytes._entry.63, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @em2800_i2c_recv_bytes._entry_ptr.65, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 428, i32 3}
!127 = !{ptr @em25xx_bus_B_recv_bytes._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @em25xx_bus_B_recv_bytes._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 452, i32 3}
!131 = !{ptr @em25xx_bus_B_recv_bytes._entry.67, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @em25xx_bus_B_recv_bytes._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 226, i32 4}
!135 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @em28xx_i2c_send_bytes._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @em28xx_i2c_send_bytes._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 231, i32 3}
!140 = !{ptr @em28xx_i2c_send_bytes._entry.72, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @em28xx_i2c_send_bytes._entry_ptr.74, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @em28xx_i2c_send_bytes._entry.75, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 243, i32 4}
!144 = !{ptr @em28xx_i2c_send_bytes._entry_ptr.76, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @em28xx_i2c_send_bytes._entry.77, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 248, i32 4}
!147 = !{ptr @em28xx_i2c_send_bytes._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @em28xx_i2c_send_bytes._entry.79, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 263, i32 3}
!150 = !{ptr @em28xx_i2c_send_bytes._entry_ptr.80, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 269, i32 2}
!153 = !{ptr @em28xx_i2c_send_bytes._entry.81, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @em28xx_i2c_send_bytes._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 105, i32 3}
!157 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @em2800_i2c_send_bytes._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @em2800_i2c_send_bytes._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @em2800_i2c_send_bytes._entry.86, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 116, i32 4}
!162 = !{ptr @em2800_i2c_send_bytes._entry_ptr.87, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @em2800_i2c_send_bytes._entry.88, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 120, i32 4}
!165 = !{ptr @em2800_i2c_send_bytes._entry_ptr.89, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.91, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 127, i32 2}
!168 = !{ptr @em2800_i2c_send_bytes._entry.90, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @em2800_i2c_send_bytes._entry_ptr.92, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 376, i32 4}
!172 = !{ptr @em25xx_bus_B_send_bytes._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @em25xx_bus_B_send_bytes._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @em25xx_bus_B_send_bytes._entry.94, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 382, i32 3}
!176 = !{ptr @em25xx_bus_B_send_bytes._entry_ptr.95, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @em25xx_bus_B_send_bytes._entry.96, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 397, i32 3}
!179 = !{ptr @em25xx_bus_B_send_bytes._entry_ptr.97, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 901, i32 2}
!182 = !{ptr @em28xx_client_template, !183, !"em28xx_client_template", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 916, i32 32}
!184 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 703, i32 3}
!186 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @em28xx_i2c_eeprom._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @em28xx_i2c_eeprom._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 716, i32 3}
!191 = !{ptr @em28xx_i2c_eeprom._entry.101, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @em28xx_i2c_eeprom._entry_ptr.103, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 723, i32 30}
!195 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 727, i32 4}
!197 = !{ptr @em28xx_i2c_eeprom._entry.105, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @em28xx_i2c_eeprom._entry_ptr.107, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.109, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 740, i32 3}
!201 = !{ptr @em28xx_i2c_eeprom._entry.108, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @em28xx_i2c_eeprom._entry_ptr.110, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.112, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 743, i32 3}
!205 = !{ptr @em28xx_i2c_eeprom._entry.111, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @em28xx_i2c_eeprom._entry_ptr.113, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 745, i32 3}
!209 = !{ptr @em28xx_i2c_eeprom._entry.114, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @em28xx_i2c_eeprom._entry_ptr.116, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 765, i32 4}
!213 = !{ptr @em28xx_i2c_eeprom._entry.117, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @em28xx_i2c_eeprom._entry_ptr.119, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @em28xx_i2c_eeprom._entry.120, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 784, i32 4}
!217 = !{ptr @em28xx_i2c_eeprom._entry_ptr.121, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.123, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 794, i32 4}
!220 = !{ptr @em28xx_i2c_eeprom._entry.122, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @em28xx_i2c_eeprom._entry_ptr.124, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @em28xx_i2c_eeprom._entry.125, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 809, i32 3}
!224 = !{ptr @em28xx_i2c_eeprom._entry_ptr.126, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @em28xx_i2c_eeprom._entry.127, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 812, i32 3}
!227 = !{ptr @em28xx_i2c_eeprom._entry_ptr.128, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 815, i32 3}
!230 = !{ptr @em28xx_i2c_eeprom._entry.129, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @em28xx_i2c_eeprom._entry_ptr.131, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.133, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 827, i32 3}
!234 = !{ptr @em28xx_i2c_eeprom._entry.132, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @em28xx_i2c_eeprom._entry_ptr.134, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.136, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 830, i32 3}
!238 = !{ptr @em28xx_i2c_eeprom._entry.135, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @em28xx_i2c_eeprom._entry_ptr.137, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.139, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 834, i32 4}
!242 = !{ptr @em28xx_i2c_eeprom._entry.138, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @em28xx_i2c_eeprom._entry_ptr.140, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.142, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 837, i32 4}
!246 = !{ptr @em28xx_i2c_eeprom._entry.141, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @em28xx_i2c_eeprom._entry_ptr.143, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @em28xx_i2c_eeprom._entry.144, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 842, i32 4}
!250 = !{ptr @em28xx_i2c_eeprom._entry_ptr.145, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.147, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 845, i32 4}
!253 = !{ptr @em28xx_i2c_eeprom._entry.146, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @em28xx_i2c_eeprom._entry_ptr.148, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.150, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 851, i32 3}
!257 = !{ptr @em28xx_i2c_eeprom._entry.149, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @em28xx_i2c_eeprom._entry_ptr.151, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.153, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 854, i32 3}
!261 = !{ptr @em28xx_i2c_eeprom._entry.152, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @em28xx_i2c_eeprom._entry_ptr.154, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.156, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 858, i32 3}
!265 = !{ptr @em28xx_i2c_eeprom._entry.155, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @em28xx_i2c_eeprom._entry_ptr.157, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.159, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 861, i32 3}
!269 = !{ptr @em28xx_i2c_eeprom._entry.158, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @em28xx_i2c_eeprom._entry_ptr.160, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.162, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 864, i32 3}
!273 = !{ptr @em28xx_i2c_eeprom._entry.161, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @em28xx_i2c_eeprom._entry_ptr.163, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.165, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 867, i32 3}
!277 = !{ptr @em28xx_i2c_eeprom._entry.164, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @em28xx_i2c_eeprom._entry_ptr.166, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.168, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/em28xx/em28xx-i2c.c", i32 870, i32 2}
!281 = !{ptr @em28xx_i2c_eeprom._entry.167, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @em28xx_i2c_eeprom._entry_ptr.169, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{!"auto-init"}
!293 = !{!"branch_weights", i32 1, i32 2000}
!294 = !{i64 2148979808, i64 2148979813, i64 2148979826, i64 2148979870, i64 2148979904, i64 2148979925}
