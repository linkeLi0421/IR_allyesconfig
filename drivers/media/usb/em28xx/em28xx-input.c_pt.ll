; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-input.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.em28xx_ops = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_audio_mode = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.em28xx_button = type { i32, i8, i8, i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.em28xx_IR = type { ptr, ptr, [32 x i8], i32, %struct.delayed_work, i8, i32, i64, ptr, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.em28xx_led = type { i32, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.em28xx_ir_poll_result = type { i8, i32, i32 }

@__param_str_ir_debug = internal constant [19 x i8] c"em28xx_rc.ir_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype303 = internal constant [32 x i8] c"em28xx_rc.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug304 = internal constant [51 x i8] c"em28xx_rc.parm=ir_debug:enable debug messages [IR]\00", section ".modinfo", align 1
@rc_ops = internal global { %struct.em28xx_ops, [32 x i8] } { %struct.em28xx_ops { %struct.list_head zeroinitializer, ptr @.str.3, i32 48, ptr @em28xx_ir_init, ptr @em28xx_ir_fini, ptr @em28xx_ir_suspend, ptr @em28xx_ir_resume }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file305 = internal constant [50 x i8] c"em28xx_rc.file=drivers/media/usb/em28xx/em28xx-rc\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"em28xx_rc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [39 x i8] c"em28xx_rc.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [67 x i8] c"em28xx_rc.description=Empia em28xx device driver - input interface\00", section ".modinfo", align 1
@__UNIQUE_ID_version309 = internal constant [24 x i8] c"em28xx_rc.version=0.2.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"em28xx_rc\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.2.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_em28xx_rc__310_942_em28xx_rc_register6 = internal global ptr @em28xx_rc_register, section ".initcall6.init", align 4
@__exitcall_em28xx_rc_unregister = internal global ptr @em28xx_rc_unregister, section ".exitcall.exit", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Em28xx Input Extension\00", [41 x i8] zeroinitializer }, align 32
@em28xx_ir_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&dev->buttons_query_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@em28xx_ir_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&dev->buttons_query_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@em28xx_ir_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 722, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No i2c IR remote control device found.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"em28xx_ir_init\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/em28xx/em28xx-input.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_ir_init._entry_ptr = internal global ptr @em28xx_ir_init._entry, section ".printk_index", align 4
@em28xx_ir_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 731, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Remote control support is not available for this card.\0A\00", [40 x i8] zeroinitializer }, align 32
@em28xx_ir_init._entry_ptr.14 = internal global ptr @em28xx_ir_init._entry.12, section ".printk_index", align 4
@em28xx_ir_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 735, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Registering input extension\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@em28xx_ir_init._entry_ptr.18 = internal global ptr @em28xx_ir_init._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-em-terratec\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-pinnacle-grey\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rc-winfast-usbii-deluxe\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@em28xx_boards = external dso_local local_unnamed_addr constant [0 x %struct.em28xx_board], align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em28xx\00", [25 x i8] zeroinitializer }, align 32
@em28xx_ir_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.9, i32 834, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Input extension successfully initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@em28xx_ir_init._entry_ptr.27 = internal global ptr @em28xx_ir_init._entry.25, section ".printk_index", align 4
@em28xx_query_buttons.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BUG: unhandled button role.\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@em28xx_init_buttons.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"BUG: maximum number of button polling addresses exceeded.\00", [38 x i8] zeroinitializer }, align 32
@em28xx_init_buttons._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 654, ptr @.str.32, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"BUG: illumination button defined, but no illumination LED.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_init_buttons\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@em28xx_init_buttons._entry_ptr = internal global ptr @em28xx_init_buttons._entry, section ".printk_index", align 4
@em28xx_register_snapshot_button._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 591, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Registering snapshot button...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"em28xx_register_snapshot_button\00", [32 x i8] zeroinitializer }, align 32
@em28xx_register_snapshot_button._entry_ptr = internal global ptr @em28xx_register_snapshot_button._entry, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/sbutton\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"em28xx snapshot button\00", [41 x i8] zeroinitializer }, align 32
@em28xx_register_snapshot_button._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.9, i32 612, ptr @.str.32, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"input_register_device failed\0A\00", [34 x i8] zeroinitializer }, align 32
@em28xx_register_snapshot_button._entry_ptr.39 = internal global ptr @em28xx_register_snapshot_button._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@em28xx_ir_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&ir->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@em28xx_ir_start.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&ir->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@em28xx_i2c_ir_handle_key.scancode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@em28xx_i2c_ir_handle_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 311, ptr @.str.45, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"input: %s: ir->get_key_i2c() failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"em28xx_i2c_ir_handle_key\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@em28xx_i2c_ir_handle_key._entry_ptr = internal global ptr @em28xx_i2c_ir_handle_key._entry, section ".printk_index", align 4
@em28xx_i2c_ir_handle_key._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.9, i32 317, ptr @.str.45, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"input: %s: %s: proto = 0x%04x, scancode = 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_i2c_ir_handle_key._entry_ptr.48 = internal global ptr @em28xx_i2c_ir_handle_key._entry.46, section ".printk_index", align 4
@em28xx_ir_handle_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.9, i32 331, ptr @.str.45, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"input: %s: ir->get_key() failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_ir_handle_key\00", [43 x i8] zeroinitializer }, align 32
@em28xx_ir_handle_key._entry_ptr = internal global ptr @em28xx_ir_handle_key._entry, section ".printk_index", align 4
@em28xx_ir_handle_key._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.9, i32 338, ptr @.str.45, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"input: %s: %s: toggle: %d, count: %d, key 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_ir_handle_key._entry_ptr.53 = internal global ptr @em28xx_ir_handle_key._entry.51, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@em28xx_ir_change_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.9, i32 476, ptr @.str.32, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unrecognized em28xx chip id 0x%02x: IR not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"em28xx_ir_change_protocol\00", [38 x i8] zeroinitializer }, align 32
@em28xx_ir_change_protocol._entry_ptr = internal global ptr @em28xx_ir_change_protocol._entry, section ".printk_index", align 4
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@em28xx_shutdown_buttons._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.9, i32 691, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Deregistering snapshot button\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"em28xx_shutdown_buttons\00", [40 x i8] zeroinitializer }, align 32
@em28xx_shutdown_buttons._entry_ptr = internal global ptr @em28xx_shutdown_buttons._entry, section ".printk_index", align 4
@em28xx_ir_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.9, i32 857, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Closing input extension\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"em28xx_ir_fini\00", [17 x i8] zeroinitializer }, align 32
@em28xx_ir_fini._entry_ptr = internal global ptr @em28xx_ir_fini._entry, section ".printk_index", align 4
@em28xx_ir_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.9, i32 886, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Suspending input extension\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_ir_suspend\00", [46 x i8] zeroinitializer }, align 32
@em28xx_ir_suspend._entry_ptr = internal global ptr @em28xx_ir_suspend._entry, section ".printk_index", align 4
@em28xx_ir_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.9, i32 905, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Resuming input extension\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"em28xx_ir_resume\00", [47 x i8] zeroinitializer }, align 32
@em28xx_ir_resume._entry_ptr = internal global ptr @em28xx_ir_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 6, i64 28]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 34, i64 36, i64 65, i64 68, i64 113, i64 114]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 64, i64 4, i64 512, i64 32768]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 32, i64 34, i64 36, i64 65, i64 68, i64 113, i64 114]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 65, i64 68]
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 35, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"rc_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 918, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 940, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 920, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 712, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 721, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 730, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 735, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 757, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 761, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 765, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 770, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 821, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 827, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 834, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 572, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 642, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 653, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 591, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 598, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 601, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 612, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 381, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"scancode\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 305, i32 13 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 311, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 316, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 331, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 336, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 474, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 912, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 691, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 857, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 886, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [43 x i8] c"../drivers/media/usb/em28xx/em28xx-input.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 905, i32 2 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_ir_debug304, ptr @__UNIQUE_ID_ir_debugtype303, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_version309, ptr @__exitcall_em28xx_rc_unregister, ptr @__initcall__kmod_em28xx_rc__310_942_em28xx_rc_register6, ptr @__modver_attr, ptr @__param_ir_debug, ptr @em28xx_i2c_ir_handle_key._entry, ptr @em28xx_i2c_ir_handle_key._entry.46, ptr @em28xx_i2c_ir_handle_key._entry_ptr, ptr @em28xx_i2c_ir_handle_key._entry_ptr.48, ptr @em28xx_init_buttons._entry, ptr @em28xx_init_buttons._entry_ptr, ptr @em28xx_ir_change_protocol._entry, ptr @em28xx_ir_change_protocol._entry_ptr, ptr @em28xx_ir_fini._entry, ptr @em28xx_ir_fini._entry_ptr, ptr @em28xx_ir_handle_key._entry, ptr @em28xx_ir_handle_key._entry.51, ptr @em28xx_ir_handle_key._entry_ptr, ptr @em28xx_ir_handle_key._entry_ptr.53, ptr @em28xx_ir_init._entry, ptr @em28xx_ir_init._entry.12, ptr @em28xx_ir_init._entry.15, ptr @em28xx_ir_init._entry.25, ptr @em28xx_ir_init._entry_ptr, ptr @em28xx_ir_init._entry_ptr.14, ptr @em28xx_ir_init._entry_ptr.18, ptr @em28xx_ir_init._entry_ptr.27, ptr @em28xx_ir_resume._entry, ptr @em28xx_ir_resume._entry_ptr, ptr @em28xx_ir_suspend._entry, ptr @em28xx_ir_suspend._entry_ptr, ptr @em28xx_rc_unregister, ptr @em28xx_register_snapshot_button._entry, ptr @em28xx_register_snapshot_button._entry.37, ptr @em28xx_register_snapshot_button._entry_ptr, ptr @em28xx_register_snapshot_button._entry_ptr.39, ptr @em28xx_shutdown_buttons._entry, ptr @em28xx_shutdown_buttons._entry_ptr, ptr @ir_debug, ptr @rc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @em28xx_ir_init.__key, ptr @.str.4, ptr @em28xx_ir_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @em28xx_ir_start.__key, ptr @.str.40, ptr @em28xx_ir_start.__key.41, ptr @.str.42, ptr @em28xx_i2c_ir_handle_key.scancode, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_buttons._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_snapshot_button._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_register_snapshot_button._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_start.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_ir_handle_key.scancode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_ir_handle_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_ir_handle_key._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_handle_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_handle_key._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_change_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_shutdown_buttons._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ir_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_rc_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @em28xx_unregister_extension(ptr noundef nonnull @rc_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_rc_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_register_extension(ptr noundef nonnull @rc_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_ir_init(ptr noundef %dev) #2 align 64 {
entry:
  %rc_proto = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rc_proto) #10
  %4 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %rc_proto, align 8, !annotation !156
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !158

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !159

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dev, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %buttons_query_work = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69
  tail call void @__init_work(ptr noundef %buttons_query_work, i32 noundef 0) #10
  %9 = ptrtoint ptr %buttons_query_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %buttons_query_work, align 8
  %lockdep_map = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @em28xx_ir_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry8 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69, i32 0, i32 1
  %10 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @em28xx_query_buttons, ptr %func, align 4
  %timer = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @em28xx_ir_init.__key.5) #10
  %buttons = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 21
  %13 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buttons, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %kref_get.exit.if.end19_crit_edge, label %if.then18

kref_get.exit.if.end19_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %kref_get.exit
  %button_polling_interval.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 73
  %15 = ptrtoint ptr %button_polling_interval.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 500, ptr %button_polling_interval.i, align 8
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp6157.i = icmp ult i32 %17, 2
  br i1 %cmp6157.i, label %for.cond.preheader.lr.ph.i, label %if.then18.while.end.i_crit_edge

if.then18.while.end.i_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

for.cond.preheader.lr.ph.i:                       ; preds = %if.then18
  %num_button_polling_addresses.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 72
  %snapshot_button_path.i.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 74
  %sbutton_input_dev.i.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 75
  %arrayidx16.i231 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 70, i32 0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %next_button.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.lr.ph.i
  %18 = phi i32 [ %17, %for.cond.preheader.lr.ph.i ], [ %76, %next_button.i.for.cond.preheader.i_crit_edge ]
  %idxprom159.i = phi i32 [ 0, %for.cond.preheader.lr.ph.i ], [ %idxprom.i, %next_button.i.for.cond.preheader.i_crit_edge ]
  %19 = phi ptr [ %14, %for.cond.preheader.lr.ph.i ], [ %74, %next_button.i.for.cond.preheader.i_crit_edge ]
  %i.0158.i = phi i8 [ 0, %for.cond.preheader.lr.ph.i ], [ %inc101.i, %next_button.i.for.cond.preheader.i_crit_edge ]
  %20 = ptrtoint ptr %num_button_polling_addresses.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_button_polling_addresses.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp12152.not.i = icmp eq i8 %21, 0
  br i1 %cmp12152.not.i, label %for.cond.preheader.i.if.end64.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end64.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %reg_r.i = getelementptr %struct.em28xx_button, ptr %19, i32 %idxprom159.i, i32 1
  %22 = ptrtoint ptr %reg_r.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_r.i, align 4
  %24 = zext i8 %21 to i32
  %25 = ptrtoint ptr %arrayidx16.i231 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.i231, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %26)
  %cmp18.i232 = icmp eq i8 %23, %26
  br i1 %cmp18.i232, label %for.body.lr.ph.i.if.end64.i_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end64.i_crit_edge:            ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %indvars.iv.i233 = phi i32 [ %indvars.iv.next.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i233, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i, i32 %24)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %24
  br i1 %exitcond.not.i, label %land.lhs.true.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx16.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 70, i32 %indvars.iv.next.i
  %27 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16.i, align 1
  %cmp18.i = icmp eq i8 %23, %28
  br i1 %cmp18.i, label %if.end64.i.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

land.lhs.true.critedge.i:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp23.i = icmp ugt i8 %21, 4
  br i1 %cmp23.i, label %land.end30.i, label %land.lhs.true.critedge.i.if.end64.i_crit_edge

land.lhs.true.critedge.i.if.end64.i_crit_edge:    ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

land.end30.i:                                     ; preds = %land.lhs.true.critedge.i
  %.b139.i = load i1, ptr @em28xx_init_buttons.__already_done, align 1
  br i1 %.b139.i, label %land.end30.i.next_button.i_crit_edge, label %if.then34.i, !prof !159

land.end30.i.next_button.i_crit_edge:             ; preds = %land.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_button.i

if.then34.i:                                      ; preds = %land.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @em28xx_init_buttons.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 642, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %next_button.i

if.end64.i.loopexit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next.i, i32 %24)
  %cmp12.i.le = icmp ult i32 %indvars.iv.next.i, %24
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end64.i.loopexit, %land.lhs.true.critedge.i.if.end64.i_crit_edge, %for.body.lr.ph.i.if.end64.i_crit_edge, %for.cond.preheader.i.if.end64.i_crit_edge
  %cmp12148.i = phi i1 [ false, %land.lhs.true.critedge.i.if.end64.i_crit_edge ], [ false, %for.cond.preheader.i.if.end64.i_crit_edge ], [ true, %for.body.lr.ph.i.if.end64.i_crit_edge ], [ %cmp12.i.le, %if.end64.i.loopexit ]
  %29 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end64.i.if.end86.i_crit_edge [
    i32 0, label %if.then68.i
    i32 1, label %if.then76.i
  ]

if.end64.i.if.end86.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.then68.i:                                      ; preds = %if.end64.i
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.33) #13
  %call3.i.i = tail call ptr @input_allocate_device() #10
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %if.then68.i.next_button.i_crit_edge, label %if.end.i.i

if.then68.i.next_button.i_crit_edge:              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_button.i

if.end.i.i:                                       ; preds = %if.then68.i
  %bus.i.i.i = getelementptr i8, ptr %33, i32 -64
  %34 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i.i, align 8
  %bus_name.i.i.i = getelementptr inbounds %struct.usb_bus, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bus_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_name.i.i.i, align 4
  %devpath.i.i.i = getelementptr i8, ptr %33, i32 -124
  %call.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %snapshot_button_path.i.i, i32 noundef 30, ptr noundef nonnull @.str.56, ptr noundef %37, ptr noundef %devpath.i.i.i) #10
  %call7.i.i = tail call i32 @strlcat(ptr noundef %snapshot_button_path.i.i, ptr noundef nonnull @.str.35, i32 noundef 30) #10
  %38 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.36, ptr %call3.i.i, align 8
  %phys.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %snapshot_button_path.i.i, ptr %phys.i.i, align 4
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %evbit.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1048578, ptr %evbit.i.i, align 8
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 212, ptr noundef %keybit.i.i) #10
  %keycodesize.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 16
  %41 = ptrtoint ptr %keycodesize.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %keycodesize.i.i, align 8
  %keycodemax.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 15
  %42 = ptrtoint ptr %keycodemax.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %keycodemax.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 3, ptr %id.i.i, align 2
  %idVendor.i.i.i = getelementptr i8, ptr %33, i32 936
  %44 = ptrtoint ptr %idVendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %idVendor.i.i.i, align 8
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #10
  %vendor.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vendor.i.i.i, align 2
  %idProduct.i.i.i = getelementptr i8, ptr %33, i32 938
  %48 = ptrtoint ptr %idProduct.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %idProduct.i.i.i, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #10
  %product.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %product.i.i.i, align 2
  %bcdDevice.i.i.i = getelementptr i8, ptr %33, i32 940
  %52 = ptrtoint ptr %bcdDevice.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bcdDevice.i.i.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #10
  %version.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %version.i.i.i, align 2
  %56 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf, align 4
  %dev12.i.i = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %call3.i.i, i32 0, i32 40, i32 1
  %58 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev12.i.i, ptr %parent.i.i, align 8
  %call14.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call3.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %em28xx_register_snapshot_button.exit.thread144.i, label %em28xx_register_snapshot_button.exit.i

em28xx_register_snapshot_button.exit.thread144.i: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %sbutton_input_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call3.i.i, ptr %sbutton_input_dev.i.i, align 8
  br label %if.end86.i

em28xx_register_snapshot_button.exit.i:           ; preds = %if.end.i.i
  %60 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %intf, align 4
  %dev21.i.i = getelementptr inbounds %struct.usb_interface, ptr %61, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i.i, ptr noundef nonnull @.str.38) #13
  tail call void @input_free_device(ptr noundef nonnull %call3.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp69.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp69.i, label %em28xx_register_snapshot_button.exit.i.next_button.i_crit_edge, label %em28xx_register_snapshot_button.exit.i.if.end86.i_crit_edge

em28xx_register_snapshot_button.exit.i.if.end86.i_crit_edge: ; preds = %em28xx_register_snapshot_button.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

em28xx_register_snapshot_button.exit.i.next_button.i_crit_edge: ; preds = %em28xx_register_snapshot_button.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_button.i

if.then76.i:                                      ; preds = %if.end64.i
  %call77.i = tail call ptr @em28xx_find_led(ptr noundef %dev, i32 noundef 3) #10
  %tobool78.not.i = icmp eq ptr %call77.i, null
  br i1 %tobool78.not.i, label %do.end82.i, label %if.then76.i.if.end86.i_crit_edge

if.then76.i.if.end86.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

do.end82.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intf, align 4
  %dev83.i = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83.i, ptr noundef nonnull @.str.30) #13
  br label %next_button.i

if.end86.i:                                       ; preds = %if.then76.i.if.end86.i_crit_edge, %em28xx_register_snapshot_button.exit.i.if.end86.i_crit_edge, %em28xx_register_snapshot_button.exit.thread144.i, %if.end64.i.if.end86.i_crit_edge
  br i1 %cmp12148.i, label %if.end86.i.if.end96.i_crit_edge, label %if.then88.i

if.end86.i.if.end96.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

if.then88.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %num_button_polling_addresses.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_button_polling_addresses.i, align 2
  %conv90.i = zext i8 %65 to i32
  %reg_r91.i = getelementptr %struct.em28xx_button, ptr %19, i32 %idxprom159.i, i32 1
  %66 = ptrtoint ptr %reg_r91.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %reg_r91.i, align 4
  %arrayidx93.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 70, i32 %conv90.i
  %68 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx93.i, align 1
  %69 = load i8, ptr %num_button_polling_addresses.i, align 2
  %inc95.i = add i8 %69, 1
  store i8 %inc95.i, ptr %num_button_polling_addresses.i, align 2
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then88.i, %if.end86.i.if.end96.i_crit_edge
  %reg_clearing.i = getelementptr %struct.em28xx_button, ptr %19, i32 %idxprom159.i, i32 2
  %70 = ptrtoint ptr %reg_clearing.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %reg_clearing.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool97.not.i = icmp eq i8 %71, 0
  br i1 %tobool97.not.i, label %if.then98.i, label %if.end96.i.next_button.i_crit_edge

if.end96.i.next_button.i_crit_edge:               ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_button.i

if.then98.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %button_polling_interval.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 100, ptr %button_polling_interval.i, align 8
  br label %next_button.i

next_button.i:                                    ; preds = %if.then98.i, %if.end96.i.next_button.i_crit_edge, %do.end82.i, %em28xx_register_snapshot_button.exit.i.next_button.i_crit_edge, %if.then68.i.next_button.i_crit_edge, %if.then34.i, %land.end30.i.next_button.i_crit_edge
  %inc101.i = add i8 %i.0158.i, 1
  %73 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buttons, align 4
  %idxprom.i = zext i8 %inc101.i to i32
  %arrayidx.i = getelementptr %struct.em28xx_button, ptr %74, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  %cmp6.i = icmp ult i32 %76, 2
  br i1 %cmp6.i, label %next_button.i.for.cond.preheader.i_crit_edge, label %next_button.i.while.end.i_crit_edge

next_button.i.while.end.i_crit_edge:              ; preds = %next_button.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

next_button.i.for.cond.preheader.i_crit_edge:     ; preds = %next_button.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

while.end.i:                                      ; preds = %next_button.i.while.end.i_crit_edge, %if.then18.while.end.i_crit_edge
  %num_button_polling_addresses102.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 72
  %77 = ptrtoint ptr %num_button_polling_addresses102.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_button_polling_addresses102.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool103.not.i = icmp eq i8 %78, 0
  br i1 %tobool103.not.i, label %while.end.i.if.end19_crit_edge, label %if.then104.i

while.end.i.if.end19_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then104.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %button_polling_last_values.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 71
  %79 = call ptr @memset(ptr %button_polling_last_values.i, i32 0, i32 5)
  %80 = ptrtoint ptr %button_polling_interval.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %button_polling_interval.i, align 8
  %conv106.i = zext i16 %81 to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv106.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %82 = load ptr, ptr @system_wq, align 4
  %call.i.i141.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %buttons_query_work, i32 noundef %call2.i.i) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then104.i, %while.end.i.if.end19_crit_edge, %kref_get.exit.if.end19_crit_edge
  %has_ir_i2c = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %83 = ptrtoint ptr %has_ir_i2c to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load21 = load i16, ptr %has_ir_i2c, align 8
  %84 = and i16 %bf.load21, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool25.not = icmp eq i16 %84, 0
  br i1 %tobool25.not, label %if.end19.if.end40_crit_edge, label %if.then26

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then26:                                        ; preds = %if.end19
  %def_i2c_bus.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %85 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %def_i2c_bus.i, align 4
  %arrayidx2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %86
  %call.i = tail call i32 @i2c_probe_func_quick_read(ptr noundef %arrayidx2.i, i16 noundef zeroext 31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 1
  br i1 %cmp4.i, label %if.then26.em28xx_probe_i2c_ir.exit_crit_edge, label %while.cond.i

if.then26.em28xx_probe_i2c_ir.exit_crit_edge:     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_probe_i2c_ir.exit

while.cond.i:                                     ; preds = %if.then26
  %87 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %def_i2c_bus.i, align 4
  %arrayidx2.1.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %88
  %call.1.i = tail call i32 @i2c_probe_func_quick_read(ptr noundef %arrayidx2.1.i, i16 noundef zeroext 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1.i)
  %cmp4.1.i = icmp eq i32 %call.1.i, 1
  br i1 %cmp4.1.i, label %while.cond.i.em28xx_probe_i2c_ir.exit_crit_edge, label %while.cond.1.i

while.cond.i.em28xx_probe_i2c_ir.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_probe_i2c_ir.exit

while.cond.1.i:                                   ; preds = %while.cond.i
  %89 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %def_i2c_bus.i, align 4
  %arrayidx2.2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %90
  %call.2.i = tail call i32 @i2c_probe_func_quick_read(ptr noundef %arrayidx2.2.i, i16 noundef zeroext 71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.2.i)
  %cmp4.2.i = icmp eq i32 %call.2.i, 1
  br i1 %cmp4.2.i, label %while.cond.1.i.em28xx_probe_i2c_ir.exit_crit_edge, label %while.cond.1.i.if.end40_crit_edge

while.cond.1.i.if.end40_crit_edge:                ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

while.cond.1.i.em28xx_probe_i2c_ir.exit_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_probe_i2c_ir.exit

em28xx_probe_i2c_ir.exit:                         ; preds = %while.cond.1.i.em28xx_probe_i2c_ir.exit_crit_edge, %while.cond.i.em28xx_probe_i2c_ir.exit_crit_edge, %if.then26.em28xx_probe_i2c_ir.exit_crit_edge
  %.lcssa.i = phi i16 [ 31, %if.then26.em28xx_probe_i2c_ir.exit_crit_edge ], [ 48, %while.cond.i.em28xx_probe_i2c_ir.exit_crit_edge ], [ 71, %while.cond.1.i.em28xx_probe_i2c_ir.exit_crit_edge ]
  br label %if.end40

if.end40:                                         ; preds = %em28xx_probe_i2c_ir.exit, %while.cond.1.i.if.end40_crit_edge, %if.end19.if.end40_crit_edge
  %i2c_rc_dev_addr.0 = phi i16 [ %.lcssa.i, %em28xx_probe_i2c_ir.exit ], [ 0, %if.end19.if.end40_crit_edge ], [ -19, %while.cond.1.i.if.end40_crit_edge ]
  %ir_codes = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 19
  %91 = ptrtoint ptr %ir_codes to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ir_codes, align 4
  %tobool42.not = icmp eq ptr %92, null
  br i1 %tobool42.not, label %land.lhs.true, label %if.end40.do.end59_crit_edge

if.end40.do.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

land.lhs.true:                                    ; preds = %if.end40
  %93 = ptrtoint ptr %has_ir_i2c to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load45 = load i16, ptr %has_ir_i2c, align 8
  %94 = and i16 %bf.load45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool49.not = icmp eq i16 %94, 0
  br i1 %tobool49.not, label %do.end53, label %land.lhs.true.do.end59_crit_edge

land.lhs.true.do.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

do.end53:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf, align 4
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %96, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev55, ptr noundef nonnull @.str.13) #13
  br label %cleanup

do.end59:                                         ; preds = %land.lhs.true.do.end59_crit_edge, %if.end40.do.end59_crit_edge
  %97 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %intf, align 4
  %dev61 = getelementptr inbounds %struct.usb_interface, ptr %98, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.16) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i218 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %99, i32 noundef 3520, i32 noundef 176) #14
  %tobool63.not = icmp eq ptr %call7.i.i218, null
  br i1 %tobool63.not, label %do.end59.ref_put_crit_edge, label %if.end65

do.end59.ref_put_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %ref_put

if.end65:                                         ; preds = %do.end59
  %call66 = tail call ptr @rc_allocate_device(i32 noundef 0) #10
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end65.error_crit_edge, label %if.end69

if.end65.error_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end69:                                         ; preds = %if.end65
  %100 = ptrtoint ptr %call7.i.i218 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %dev, ptr %call7.i.i218, align 8
  %ir71 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 4
  %101 = ptrtoint ptr %ir71 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i218, ptr %ir71, align 4
  %rc72 = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 1
  %102 = ptrtoint ptr %rc72 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call66, ptr %rc72, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 24
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i218, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 48
  %104 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @em28xx_ir_start, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 49
  %105 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @em28xx_ir_stop, ptr %close, align 4
  %106 = ptrtoint ptr %has_ir_i2c to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load75 = load i16, ptr %has_ir_i2c, align 8
  %107 = and i16 %bf.load75, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool79.not = icmp eq i16 %107, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end69
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %108 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %model, align 8
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %109, label %if.then80.error_crit_edge [
    i32 6, label %if.then80.sw.bb_crit_edge
    i32 2, label %if.then80.sw.bb_crit_edge241
    i32 3, label %sw.bb81
    i32 4, label %sw.bb84
    i32 28, label %sw.bb87
  ]

if.then80.sw.bb_crit_edge241:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then80.sw.bb_crit_edge:                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then80.error_crit_edge:                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb:                                            ; preds = %if.then80.sw.bb_crit_edge, %if.then80.sw.bb_crit_edge241
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 7
  %111 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.19, ptr %map_name, align 4
  %get_key_i2c = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 9
  %112 = ptrtoint ptr %get_key_i2c to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @em28xx_get_key_terratec, ptr %get_key_i2c, align 4
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %map_name82 = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 7
  %113 = ptrtoint ptr %map_name82 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.20, ptr %map_name82, align 4
  %get_key_i2c83 = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 9
  %114 = ptrtoint ptr %get_key_i2c83 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @em28xx_get_key_pinnacle_usb_grey, ptr %get_key_i2c83, align 4
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %map_name85 = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 7
  %115 = ptrtoint ptr %map_name85 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.21, ptr %map_name85, align 4
  %get_key_i2c86 = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 9
  %116 = ptrtoint ptr %get_key_i2c86 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @em28xx_get_key_em_haup, ptr %get_key_i2c86, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 16
  %117 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 4, ptr %allowed_protocols, align 8
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %map_name88 = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 7
  %118 = ptrtoint ptr %map_name88 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.22, ptr %map_name88, align 4
  %get_key_i2c89 = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 9
  %119 = ptrtoint ptr %get_key_i2c89 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @em28xx_get_key_winfast_usbii_deluxe, ptr %get_key_i2c89, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb87, %sw.bb84, %sw.bb81, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i220 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3520, i32 noundef 984) #14
  %i2c_client = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 8
  %121 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i.i220, ptr %i2c_client, align 8
  %tobool92.not = icmp eq ptr %call7.i.i220, null
  br i1 %tobool92.not, label %sw.epilog.error_crit_edge, label %if.end94

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end94:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %call7.i.i218 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call7.i.i218, align 8
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %124 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %123, i32 0, i32 19, i32 %125
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i220, i32 0, i32 3
  %126 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %arrayidx, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i220, i32 0, i32 1
  %127 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %i2c_rc_dev_addr.0, ptr %addr, align 2
  %128 = ptrtoint ptr %call7.i.i220 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %call7.i.i220, align 8
  br label %if.end113

if.else:                                          ; preds = %if.end69
  %chip_id = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %129 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %chip_id, align 8
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %130, label %if.else.error_crit_edge [
    i32 34, label %if.else.sw.bb99_crit_edge
    i32 36, label %if.else.sw.bb99_crit_edge242
    i32 68, label %if.else.sw.bb101_crit_edge
    i32 65, label %if.else.sw.bb101_crit_edge243
    i32 113, label %if.else.sw.bb101_crit_edge244
    i32 114, label %if.else.sw.bb101_crit_edge245
  ]

if.else.sw.bb101_crit_edge245:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

if.else.sw.bb101_crit_edge244:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

if.else.sw.bb101_crit_edge243:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

if.else.sw.bb101_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

if.else.sw.bb99_crit_edge242:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

if.else.sw.bb99_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb99:                                          ; preds = %if.else.sw.bb99_crit_edge, %if.else.sw.bb99_crit_edge242
  %allowed_protocols100 = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 16
  %132 = ptrtoint ptr %allowed_protocols100 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 516, ptr %allowed_protocols100, align 8
  %get_key = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 10
  %133 = ptrtoint ptr %get_key to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @default_polling_getkey, ptr %get_key, align 8
  br label %sw.epilog105

sw.bb101:                                         ; preds = %if.else.sw.bb101_crit_edge, %if.else.sw.bb101_crit_edge243, %if.else.sw.bb101_crit_edge244, %if.else.sw.bb101_crit_edge245
  %get_key102 = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 10
  %134 = ptrtoint ptr %get_key102 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @em2874_polling_getkey, ptr %get_key102, align 8
  %allowed_protocols103 = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 16
  %135 = ptrtoint ptr %allowed_protocols103 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 36356, ptr %allowed_protocols103, align 8
  br label %sw.epilog105

sw.epilog105:                                     ; preds = %sw.bb101, %sw.bb99
  %change_protocol = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 47
  %136 = ptrtoint ptr %change_protocol to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @em28xx_ir_change_protocol, ptr %change_protocol, align 4
  %137 = ptrtoint ptr %ir_codes to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ir_codes, align 4
  %map_name108 = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 7
  %139 = ptrtoint ptr %map_name108 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %map_name108, align 4
  %140 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 1, ptr %rc_proto, align 8
  %call109 = call i32 @em28xx_ir_change_protocol(ptr noundef nonnull %call66, ptr noundef nonnull %rc_proto)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %sw.epilog105.if.end113_crit_edge, label %sw.epilog105.error_crit_edge

sw.epilog105.error_crit_edge:                     ; preds = %sw.epilog105
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.epilog105.if.end113_crit_edge:                 ; preds = %sw.epilog105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.end113:                                        ; preds = %sw.epilog105.if.end113_crit_edge, %if.end94
  %polling = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 3
  %141 = ptrtoint ptr %polling to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 100, ptr %polling, align 8
  %phys = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 2
  %bus.i = getelementptr i8, ptr %3, i32 -64
  %142 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %3, i32 -124
  %call.i222 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.56, ptr noundef %145, ptr noundef %devpath.i) #10
  %call117 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.23, i32 noundef 32) #10
  %model118 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %146 = ptrtoint ptr %model118 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %model118, align 8
  %arrayidx119 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx119, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 3
  %150 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 4
  %151 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 5
  %152 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr i8, ptr %3, i32 936
  %153 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %idVendor.i, align 8
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #10
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 5, i32 1
  %156 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %3, i32 938
  %157 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %idProduct.i, align 2
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #10
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 5, i32 2
  %160 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %3, i32 940
  %161 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %bcdDevice.i, align 4
  %163 = tail call i16 @llvm.bswap.i16(i16 %162) #10
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 5, i32 3
  %164 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %version.i, align 2
  %165 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %intf, align 4
  %dev123 = getelementptr inbounds %struct.usb_interface, ptr %166, i32 0, i32 7
  %parent = getelementptr inbounds %struct.device, ptr %call66, i32 0, i32 1
  %167 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %dev123, ptr %parent, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call66, i32 0, i32 6
  %168 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @.str.24, ptr %driver_name, align 8
  %call125 = tail call i32 @rc_register_device(ptr noundef nonnull %call66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %do.end131, label %if.end113.error_crit_edge

if.end113.error_crit_edge:                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end131:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %intf, align 4
  %dev133 = getelementptr inbounds %struct.usb_interface, ptr %170, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev133, ptr noundef nonnull @.str.26) #13
  br label %cleanup

error:                                            ; preds = %if.end113.error_crit_edge, %sw.epilog105.error_crit_edge, %if.else.error_crit_edge, %sw.epilog.error_crit_edge, %if.then80.error_crit_edge, %if.end65.error_crit_edge
  %err.0 = phi i32 [ %call125, %if.end113.error_crit_edge ], [ -12, %sw.epilog.error_crit_edge ], [ %call109, %sw.epilog105.error_crit_edge ], [ -12, %if.end65.error_crit_edge ], [ -19, %if.then80.error_crit_edge ], [ -19, %if.else.error_crit_edge ]
  %i2c_client134 = getelementptr inbounds %struct.em28xx_IR, ptr %call7.i.i218, i32 0, i32 8
  %171 = ptrtoint ptr %i2c_client134 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i2c_client134, align 8
  tail call void @kfree(ptr noundef %172) #10
  %ir135 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 4
  %173 = ptrtoint ptr %ir135 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %ir135, align 4
  tail call void @rc_free_device(ptr noundef %call66) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i218) #10
  br label %ref_put

ref_put:                                          ; preds = %error, %do.end59.ref_put_crit_edge
  %err.1 = phi i32 [ %err.0, %error ], [ -12, %do.end59.ref_put_crit_edge ]
  %call.i224 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %buttons_query_work) #10
  %num_button_polling_addresses.i225 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 72
  %174 = ptrtoint ptr %num_button_polling_addresses.i225 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %num_button_polling_addresses.i225, align 2
  %sbutton_input_dev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 75
  %175 = ptrtoint ptr %sbutton_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sbutton_input_dev.i, align 8
  %tobool.not.i = icmp eq ptr %176, null
  br i1 %tobool.not.i, label %ref_put.cleanup_crit_edge, label %do.end.i

ref_put.cleanup_crit_edge:                        ; preds = %ref_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %ref_put
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %intf, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %178, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.57) #13
  %179 = ptrtoint ptr %sbutton_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sbutton_input_dev.i, align 8
  tail call void @input_unregister_device(ptr noundef %180) #10
  %181 = ptrtoint ptr %sbutton_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %sbutton_input_dev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %ref_put.cleanup_crit_edge, %do.end131, %do.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end131 ], [ 0, %do.end53 ], [ 0, %entry.cleanup_crit_edge ], [ %err.1, %ref_put.cleanup_crit_edge ], [ %err.1, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rc_proto) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_ir_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.59) #13
  %buttons_query_work.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %buttons_query_work.i) #10
  %num_button_polling_addresses.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 72
  %6 = ptrtoint ptr %num_button_polling_addresses.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %num_button_polling_addresses.i, align 2
  %sbutton_input_dev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 75
  %7 = ptrtoint ptr %sbutton_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sbutton_input_dev.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end.em28xx_shutdown_buttons.exit_crit_edge, label %do.end.i

do.end.em28xx_shutdown_buttons.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_shutdown_buttons.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.57) #13
  %11 = ptrtoint ptr %sbutton_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sbutton_input_dev.i, align 8
  tail call void @input_unregister_device(ptr noundef %12) #10
  %13 = ptrtoint ptr %sbutton_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sbutton_input_dev.i, align 8
  br label %em28xx_shutdown_buttons.exit

em28xx_shutdown_buttons.exit:                     ; preds = %do.end.i, %do.end.em28xx_shutdown_buttons.exit_crit_edge
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %em28xx_shutdown_buttons.exit.ref_put_crit_edge, label %if.end5

em28xx_shutdown_buttons.exit.ref_put_crit_edge:   ; preds = %em28xx_shutdown_buttons.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ref_put

if.end5:                                          ; preds = %em28xx_shutdown_buttons.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rc = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rc, align 4
  tail call void @rc_unregister_device(ptr noundef %15) #10
  %i2c_client = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client, align 8
  tail call void @kfree(ptr noundef %17) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %18 = ptrtoint ptr %ir1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ir1, align 4
  br label %ref_put

ref_put:                                          ; preds = %if.end5, %em28xx_shutdown_buttons.exit.ref_put_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #10, !srcloc !161
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ref_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !159

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %dev, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %ref_put
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @em28xx_free_device(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_ir_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.61) #13
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %buttons_query_work = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %buttons_query_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_ir_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 4
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.63) #13
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4
  %polling = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polling, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef %call2.i) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %num_button_polling_addresses = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 72
  %9 = ptrtoint ptr %num_button_polling_addresses to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_button_polling_addresses, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %buttons_query_work = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 69
  %button_polling_interval = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 73
  %11 = ptrtoint ptr %button_polling_interval to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %button_polling_interval, align 8
  %conv = zext i16 %12 to i32
  %call2.i23 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i27 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %buttons_query_work, i32 noundef %call2.i23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_query_buttons(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5920
  %num_button_polling_addresses = getelementptr i8, ptr %work, i32 110
  %0 = ptrtoint ptr %num_button_polling_addresses to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_button_polling_addresses, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp181.not = icmp eq i8 %1, 0
  br i1 %cmp181.not, label %entry.if.else.i_crit_edge, label %for.body.lr.ph

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.body.lr.ph:                                   ; preds = %entry
  %button_polling_addresses = getelementptr i8, ptr %work, i32 100
  %buttons = getelementptr i8, ptr %work, i32 -5500
  %button_polling_last_values = getelementptr i8, ptr %work, i32 105
  %sbutton_input_dev = getelementptr i8, ptr %work, i32 144
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i8], ptr %button_polling_addresses, i32 0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %3 to i16
  %call = tail call i32 @em28xx_read_reg(ptr noundef %add.ptr, i16 noundef zeroext %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %while.cond.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %4 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buttons, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp15177 = icmp ult i32 %7, 2
  br i1 %cmp15177, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = trunc i32 %call to i8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx32 = getelementptr [5 x i8], ptr %button_polling_last_values, i32 0, i32 %indvars.iv
  %8 = trunc i32 %call to i8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %arrayidx7180 = phi ptr [ %5, %while.body.lr.ph ], [ %arrayidx7, %cleanup.while.body_crit_edge ]
  %idxprom6179 = phi i32 [ 0, %while.body.lr.ph ], [ %idxprom6, %cleanup.while.body_crit_edge ]
  %9 = phi ptr [ %5, %while.body.lr.ph ], [ %34, %cleanup.while.body_crit_edge ]
  %j.0178 = phi i8 [ 0, %while.body.lr.ph ], [ %j.1, %cleanup.while.body_crit_edge ]
  %reg_r = getelementptr %struct.em28xx_button, ptr %9, i32 %idxprom6179, i32 1
  %10 = ptrtoint ptr %reg_r to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_r, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp26.not = icmp eq i8 %11, %13
  br i1 %cmp26.not, label %if.end29, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %while.body
  %mask = getelementptr %struct.em28xx_button, ptr %9, i32 %idxprom6179, i32 3
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mask, align 2
  %conv30 = zext i8 %15 to i32
  %and = and i32 %call, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %and36172 = and i8 %17, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and36172)
  %tobool37 = icmp ne i8 %and36172, 0
  %inverted = getelementptr %struct.em28xx_button, ptr %9, i32 %idxprom6179, i32 4
  %18 = ptrtoint ptr %inverted to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %inverted, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool39.not = icmp eq i8 %19, 0
  br i1 %tobool39.not, label %if.end46, label %if.then40

if.then40:                                        ; preds = %if.end29
  %lnot44 = xor i1 %tobool37, true
  br i1 %tobool.not, label %if.then40.land.lhs.true_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40.land.lhs.true_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end46:                                         ; preds = %if.end29
  br i1 %tobool.not, label %if.end46.cleanup_crit_edge, label %if.end46.land.lhs.true_crit_edge

if.end46.land.lhs.true_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end46.land.lhs.true_crit_edge, %if.then40.land.lhs.true_crit_edge
  %was_pressed.0.in175 = phi i1 [ %lnot44, %if.then40.land.lhs.true_crit_edge ], [ %tobool37, %if.end46.land.lhs.true_crit_edge ]
  %reg_clearing = getelementptr %struct.em28xx_button, ptr %9, i32 %idxprom6179, i32 2
  %20 = ptrtoint ptr %reg_clearing to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_clearing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool50.not = icmp eq i8 %21, 0
  br i1 %tobool50.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %if.then51

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv53 = zext i8 %21 to i16
  %conv61 = xor i8 %15, %8
  %call62 = tail call i32 @em28xx_write_reg(ptr noundef %add.ptr, i16 noundef zeroext %conv53, i8 noundef zeroext %conv61) #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then51, %land.lhs.true.lor.lhs.false_crit_edge
  br i1 %was_pressed.0.in175, label %lor.lhs.false.cleanup_crit_edge, label %if.end69

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %arrayidx7180 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7180, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %23, label %land.end84 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %sbutton_input_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sbutton_input_dev, align 8
  tail call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 212, i32 noundef 1) #10
  %27 = ptrtoint ptr %sbutton_input_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sbutton_input_dev, align 8
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef 212, i32 noundef 0) #10
  br label %cleanup

sw.bb72:                                          ; preds = %if.end69
  %call73 = tail call ptr @em28xx_find_led(ptr noundef %add.ptr, i32 noundef 3) #10
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %sw.bb72.cleanup_crit_edge, label %if.then75

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then75:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #12
  %gpio_reg = getelementptr inbounds %struct.em28xx_led, ptr %call73, i32 0, i32 1
  %29 = ptrtoint ptr %gpio_reg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gpio_reg, align 4
  %conv76 = zext i8 %30 to i16
  %gpio_mask = getelementptr inbounds %struct.em28xx_led, ptr %call73, i32 0, i32 2
  %31 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gpio_mask, align 1
  %call77 = tail call i32 @em28xx_toggle_reg_bits(ptr noundef %add.ptr, i16 noundef zeroext %conv76, i8 noundef zeroext %32) #10
  br label %cleanup

land.end84:                                       ; preds = %if.end69
  %.b173 = load i1, ptr @em28xx_query_buttons.__already_done, align 1
  br i1 %.b173, label %land.end84.cleanup_crit_edge, label %if.then88, !prof !159

land.end84.cleanup_crit_edge:                     ; preds = %land.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then88:                                        ; preds = %land.end84
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @em28xx_query_buttons.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 572, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %land.end84.cleanup_crit_edge, %if.then75, %sw.bb72.cleanup_crit_edge, %sw.bb, %lor.lhs.false.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %j.1 = add i8 %j.0178, 1
  %33 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buttons, align 4
  %idxprom6 = zext i8 %j.1 to i32
  %arrayidx7 = getelementptr %struct.em28xx_button, ptr %34, i32 %idxprom6
  %35 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7, align 4
  %cmp15 = icmp ult i32 %36, 2
  br i1 %cmp15, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %conv120.pre-phi = phi i8 [ %.pre, %while.cond.preheader.while.end_crit_edge ], [ %8, %cleanup.while.end_crit_edge ]
  %arrayidx123 = getelementptr [5 x i8], ptr %button_polling_last_values, i32 0, i32 %indvars.iv
  %37 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv120.pre-phi, ptr %arrayidx123, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %38 = ptrtoint ptr %num_button_polling_addresses to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_button_polling_addresses, align 2
  %40 = zext i8 %39 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.else.i_crit_edge

for.inc.if.else.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else.i:                                        ; preds = %for.inc.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %button_polling_interval = getelementptr i8, ptr %work, i32 112
  %41 = ptrtoint ptr %button_polling_interval to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %button_polling_interval, align 8
  %conv125 = zext i16 %42 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv125) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_ir_start(ptr nocapture noundef readonly %rc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @em28xx_ir_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @em28xx_ir_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @em28xx_ir_start.__key.41) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_ir_stop(ptr nocapture noundef readonly %rc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_get_key_terratec(ptr noundef %i2c_dev, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode) #2 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #10
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !156
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_dev, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp1, i32 %call.i, i32 -5
  br label %cleanup

if.end3:                                          ; preds = %entry
  %1 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %b, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %2, label %if.end12 [
    i8 -1, label %if.end3.cleanup_crit_edge
    i8 -2, label %if.then11
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %protocol, align 4
  %conv13 = zext i8 %2 to i32
  %5 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv13, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.end3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %if.end12 ], [ %call., %if.then ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_get_key_pinnacle_usb_grey(ptr noundef %i2c_dev, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !156
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !156
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !156
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_dev, ptr noundef nonnull %buf, i32 noundef 3, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1.not = icmp eq i8 %6, 0
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %protocol, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %10 = and i8 %9, 63
  %and = zext i8 %10 to i32
  %11 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_get_key_em_haup(ptr noundef %i2c_dev, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !156
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !156
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_dev, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp1 = icmp eq i8 %4, -1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %protocol, align 4
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = and i8 %7, 31
  %and28 = zext i8 %8 to i32
  %shl29 = shl nuw nsw i32 %and28, 8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %idxprom.i84 = zext i8 %10 to i32
  %arrayidx.i85 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i84
  %11 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i85, align 1
  %13 = lshr i8 %12, 2
  %14 = zext i8 %13 to i32
  %or65 = or i32 %shl29, %14
  %15 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or65, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_get_key_winfast_usbii_deluxe(ptr nocapture noundef readonly %i2c_dev, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode) #2 align 64 {
entry:
  %subaddr = alloca i8, align 1
  %keydetect = alloca i8, align 1
  %key = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %subaddr) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %keydetect) #10
  %0 = ptrtoint ptr %keydetect to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %keydetect, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %key) #10
  %1 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %key, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #10
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_dev, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %subaddr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %13 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %keydetect, ptr %buf6, align 4
  %14 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %subaddr, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c_dev, i32 0, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %keydetect to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %keydetect, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp7 = icmp eq i8 %18, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %19 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %subaddr, align 1
  %20 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %key, ptr %buf6, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call14 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 2
  br i1 %cmp15.not, label %if.end18, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp20 = icmp eq i8 %24, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %protocol, align 4
  %conv24 = zext i8 %24 to i32
  %26 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv24, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end23 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end10.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %keydetect) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %subaddr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_polling_getkey(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %poll_result) #2 align 64 {
entry:
  %msg = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #10
  %2 = call ptr @memset(ptr %msg, i32 0, i32 3)
  %em28xx_read_reg_req_len = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 65
  %3 = ptrtoint ptr %em28xx_read_reg_req_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %em28xx_read_reg_req_len, align 8
  %call = call i32 %4(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 69, ptr noundef nonnull %msg, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg, align 1
  %7 = ptrtoint ptr %poll_result to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %poll_result, align 4
  %rc_proto = getelementptr inbounds %struct.em28xx_IR, ptr %ir, i32 0, i32 7
  %8 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rc_proto, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %9)
  %switch.selectcmp = icmp eq i64 %9, 512
  %switch.select = select i1 %switch.selectcmp, i32 9, i32 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %9)
  %switch.selectcmp42 = icmp eq i64 %9, 4
  %switch.select43 = select i1 %switch.selectcmp42, i32 2, i32 %switch.select
  %protocol = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 1
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.select43, ptr %protocol, align 4
  %arrayidx9 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %arrayidx11 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %or = or i32 %shl, %conv12
  %scancode = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 2
  %15 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em2874_polling_getkey(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %poll_result) #2 align 64 {
entry:
  %msg = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg) #10
  %2 = call ptr @memset(ptr %msg, i32 0, i32 5)
  %em28xx_read_reg_req_len = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 65
  %3 = ptrtoint ptr %em28xx_read_reg_req_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %em28xx_read_reg_req_len, align 8
  %call = call i32 %4(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef nonnull %msg, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg, align 1
  %7 = ptrtoint ptr %poll_result to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %poll_result, align 4
  %rc_proto = getelementptr inbounds %struct.em28xx_IR, ptr %ir, i32 0, i32 7
  %8 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rc_proto, align 8
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i64 %9, label %sw.default [
    i64 4, label %sw.bb
    i64 512, label %sw.bb13
    i64 32768, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %protocol = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 1
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %protocol, align 4
  %arrayidx9 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %arrayidx11 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %if.end
  %arrayidx14 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx17, align 1
  %protocol18 = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 1
  %xor41.i = xor i8 %22, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor41.i)
  %cmp.not.i = icmp eq i8 %xor41.i, -1
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i = zext i8 %22 to i32
  %conv3.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 %conv3.i, 24
  %conv4.i = zext i8 %16 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i = or i32 %shl.i, %shl5.i
  %shl7.i = shl nuw nsw i32 %conv1.i, 8
  %or8.i = or i32 %or.i, %shl7.i
  br label %ir_nec_bytes_to_scancode.exit

if.else.i:                                        ; preds = %sw.bb13
  %conv11.i = zext i8 %16 to i32
  %xor1342.i = xor i8 %18, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor1342.i)
  %cmp14.not.i = icmp eq i8 %xor1342.i, -1
  br i1 %cmp14.not.i, label %if.else24.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv12.i = zext i8 %18 to i32
  %shl18.i = shl nuw nsw i32 %conv11.i, 16
  %shl20.i = shl nuw nsw i32 %conv12.i, 8
  %or21.i = or i32 %shl20.i, %shl18.i
  br label %ir_nec_bytes_to_scancode.exit

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl26.i = shl nuw nsw i32 %conv11.i, 8
  br label %ir_nec_bytes_to_scancode.exit

ir_nec_bytes_to_scancode.exit:                    ; preds = %if.else24.i, %if.then16.i, %if.then.i
  %.sink.i = phi i32 [ 10, %if.then16.i ], [ 9, %if.else24.i ], [ 11, %if.then.i ]
  %or8.pn.i = phi i32 [ %or21.i, %if.then16.i ], [ %shl26.i, %if.else24.i ], [ %or8.i, %if.then.i ]
  %23 = ptrtoint ptr %protocol18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %protocol18, align 4
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %protocol22 = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 1
  %24 = ptrtoint ptr %protocol22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 15, ptr %protocol22, align 4
  %arrayidx23 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %26 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %arrayidx26 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %protocol30 = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 1
  %29 = ptrtoint ptr %protocol30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %protocol30, align 4
  %arrayidx31 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %shl33 = shl nuw i32 %conv32, 24
  %arrayidx34 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %33 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %shl36, %shl33
  %arrayidx38 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %35 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or41 = or i32 %or37, %shl40
  %arrayidx42 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx42, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default, %sw.bb21, %ir_nec_bytes_to_scancode.exit, %sw.bb
  %.sink = phi i8 [ %14, %sw.bb ], [ %20, %ir_nec_bytes_to_scancode.exit ], [ %28, %sw.bb21 ], [ %37, %sw.default ]
  %shl.sink = phi i32 [ %shl, %sw.bb ], [ %or8.pn.i, %ir_nec_bytes_to_scancode.exit ], [ %shl25, %sw.bb21 ], [ %or41, %sw.default ]
  %conv12 = zext i8 %.sink to i32
  %or = or i32 %shl.sink, %conv12
  %scancode = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result, i32 0, i32 2
  %38 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_ir_change_protocol(ptr nocapture noundef readonly %rc_dev, ptr nocapture noundef %rc_proto) #2 align 64 {
entry:
  %ir_config.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc_dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %chip_id = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %5, label %do.end [
    i32 34, label %entry.sw.bb_crit_edge
    i32 36, label %entry.sw.bb_crit_edge33
    i32 68, label %entry.sw.bb2_crit_edge
    i32 65, label %entry.sw.bb2_crit_edge34
    i32 113, label %entry.sw.bb2_crit_edge35
    i32 114, label %entry.sw.bb2_crit_edge36
  ]

entry.sw.bb2_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33
  %7 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rc_proto, align 8
  %and.i = and i64 %8, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %xclk.i = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %9 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xclk.i, align 2
  %11 = or i8 %10, 32
  store i8 %11, ptr %xclk.i, align 2
  br label %if.end22.sink.split.i

if.else.i:                                        ; preds = %sw.bb
  %and3.i = and i64 %8, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else15.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %xclk7.i = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %12 = ptrtoint ptr %xclk7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xclk7.i, align 2
  %14 = and i8 %13, -33
  store i8 %14, ptr %xclk7.i, align 2
  br label %if.end22.sink.split.i

if.else15.i:                                      ; preds = %if.else.i
  %and16.i = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %if.else15.i.if.end22.i_crit_edge

if.else15.i.if.end22.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.else19.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %rc_proto20.i = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %rc_proto20.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rc_proto20.i, align 8
  %17 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rc_proto, align 8
  br label %cleanup

if.end22.sink.split.i:                            ; preds = %if.then5.i, %if.then.i
  %.sink.ph.i = phi i64 [ 4, %if.then.i ], [ 512, %if.then5.i ]
  %full_code.i = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %full_code.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load12.i = load i8, ptr %full_code.i, align 8
  %bf.set14.i = or i8 %bf.load12.i, -128
  store i8 %bf.set14.i, ptr %full_code.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.else15.i.if.end22.i_crit_edge
  %.sink.i = phi i64 [ 1, %if.else15.i.if.end22.i_crit_edge ], [ %.sink.ph.i, %if.end22.sink.split.i ]
  %19 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %.sink.i, ptr %rc_proto, align 8
  %xclk24.i = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %20 = ptrtoint ptr %xclk24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %xclk24.i, align 2
  %call.i = tail call i32 @em28xx_write_reg_bits(ptr noundef %3, i16 noundef zeroext 15, i8 noundef zeroext %21, i8 noundef zeroext 32) #10
  %22 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rc_proto, align 8
  %rc_proto25.i = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %rc_proto25.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %rc_proto25.i, align 8
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge34, %entry.sw.bb2_crit_edge35, %entry.sw.bb2_crit_edge36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ir_config.i) #10
  %25 = ptrtoint ptr %ir_config.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %ir_config.i, align 1
  %26 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rc_proto, align 8
  %and.i14 = and i64 %27, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i14)
  %tobool.not.i15 = icmp eq i64 %and.i14, 0
  br i1 %tobool.not.i15, label %if.else.i20, label %if.then.i17

if.then.i17:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %xclk.i16 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %28 = ptrtoint ptr %xclk.i16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %xclk.i16, align 2
  %30 = or i8 %29, 32
  store i8 %30, ptr %xclk.i16, align 2
  br label %if.end36.sink.split.i

if.else.i20:                                      ; preds = %sw.bb2
  %and3.i18 = and i64 %27, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i18)
  %tobool4.not.i19 = icmp eq i64 %and3.i18, 0
  br i1 %tobool4.not.i19, label %if.else15.i25, label %if.then5.i22

if.then5.i22:                                     ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #12
  %xclk7.i21 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %31 = ptrtoint ptr %xclk7.i21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %xclk7.i21, align 2
  %33 = and i8 %32, -33
  store i8 %33, ptr %xclk7.i21, align 2
  %34 = ptrtoint ptr %ir_config.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %ir_config.i, align 1
  br label %if.end36.sink.split.i

if.else15.i25:                                    ; preds = %if.else.i20
  %and16.i23 = and i64 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i23)
  %tobool17.not.i24 = icmp eq i64 %and16.i23, 0
  br i1 %tobool17.not.i24, label %if.else28.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else15.i25
  call void @__sanitizer_cov_trace_pc() #12
  %xclk20.i = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %35 = ptrtoint ptr %xclk20.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %xclk20.i, align 2
  %37 = or i8 %36, 32
  store i8 %37, ptr %xclk20.i, align 2
  %38 = ptrtoint ptr %ir_config.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %ir_config.i, align 1
  br label %if.end36.sink.split.i

if.else28.i:                                      ; preds = %if.else15.i25
  %and29.i = and i64 %27, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29.i)
  %tobool30.not.i = icmp eq i64 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else32.i, label %if.else28.i.if.end36.i_crit_edge

if.else28.i.if.end36.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.else32.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  %rc_proto33.i = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %rc_proto33.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rc_proto33.i, align 8
  %41 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %rc_proto, align 8
  br label %em2874_ir_change_protocol.exit

if.end36.sink.split.i:                            ; preds = %if.then18.i, %if.then5.i22, %if.then.i17
  %.sink.ph.i26 = phi i64 [ 4, %if.then.i17 ], [ 32768, %if.then18.i ], [ 512, %if.then5.i22 ]
  %full_code.i27 = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %full_code.i27 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load12.i28 = load i8, ptr %full_code.i27, align 8
  %bf.set14.i29 = or i8 %bf.load12.i28, -128
  store i8 %bf.set14.i29, ptr %full_code.i27, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %if.else28.i.if.end36.i_crit_edge
  %.sink.i30 = phi i64 [ 1, %if.else28.i.if.end36.i_crit_edge ], [ %.sink.ph.i26, %if.end36.sink.split.i ]
  %43 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %.sink.i30, ptr %rc_proto, align 8
  %call.i31 = call i32 @em28xx_write_regs(ptr noundef %3, i16 noundef zeroext 80, ptr noundef nonnull %ir_config.i, i32 noundef 1) #10
  %xclk38.i = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 12, i32 11
  %44 = ptrtoint ptr %xclk38.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %xclk38.i, align 2
  %call39.i = call i32 @em28xx_write_reg_bits(ptr noundef %3, i16 noundef zeroext 15, i8 noundef zeroext %45, i8 noundef zeroext 32) #10
  %46 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rc_proto, align 8
  %rc_proto40.i = getelementptr inbounds %struct.em28xx_IR, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %rc_proto40.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %rc_proto40.i, align 8
  br label %em2874_ir_change_protocol.exit

em2874_ir_change_protocol.exit:                   ; preds = %if.end36.i, %if.else32.i
  %retval.0.i32 = phi i32 [ 0, %if.end36.i ], [ -22, %if.else32.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ir_config.i) #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 44
  %49 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.54, i32 noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %em2874_ir_change_protocol.exit, %if.end22.i, %if.else19.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i32, %em2874_ir_change_protocol.exit ], [ 0, %if.end22.i ], [ -22, %if.else19.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_reg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @em28xx_find_led(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_toggle_reg_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_probe_func_quick_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_ir_work(ptr noundef %work) #2 align 64 {
entry:
  %poll_result.i = alloca %struct.em28xx_ir_poll_result, align 4
  %protocol.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  %i2c_client = getelementptr i8, ptr %work, i32 116
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %protocol.i) #10
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %protocol.i, align 4, !annotation !156
  %get_key_i2c.i = getelementptr i8, ptr %work, i32 120
  %3 = ptrtoint ptr %get_key_i2c.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_key_i2c.i, align 4
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 8
  %call.i = call i32 %4(ptr noundef %6, ptr noundef nonnull %protocol.i, ptr noundef nonnull @em28xx_i2c_ir_handle_key.scancode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i8 = icmp slt i32 %call.i, 0
  br i1 %cmp.i8, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then
  %7 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.body.i.em28xx_i2c_ir_handle_key.exit_crit_edge, label %do.end.i

do.body.i.em28xx_i2c_ir_handle_key.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_i2c_ir_handle_key.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev3.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i) #13
  br label %em28xx_i2c_ir_handle_key.exit

if.end6.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.em28xx_i2c_ir_handle_key.exit_crit_edge, label %do.body9.i

if.end6.i.em28xx_i2c_ir_handle_key.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_i2c_ir_handle_key.exit

do.body9.i:                                       ; preds = %if.end6.i
  %12 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not.i = icmp eq i32 %12, 0
  br i1 %tobool10.not.i, label %do.body9.i.do.end20.i_crit_edge, label %do.end14.i

do.body9.i.do.end20.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %intf16.i = getelementptr inbounds %struct.em28xx, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %intf16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf16.i, align 4
  %dev17.i = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %protocol.i, align 4
  %19 = load i32, ptr @em28xx_i2c_ir_handle_key.scancode, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev17.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44, i32 noundef %18, i32 noundef %19) #13
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end20.i_crit_edge
  %rc21.i = getelementptr i8, ptr %work, i32 -40
  %20 = ptrtoint ptr %rc21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rc21.i, align 4
  %22 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %protocol.i, align 4
  %24 = load i32, ptr @em28xx_i2c_ir_handle_key.scancode, align 4
  %conv.i = zext i32 %24 to i64
  call void @rc_keydown(ptr noundef %21, i32 noundef %23, i64 noundef %conv.i, i8 noundef zeroext 0) #10
  br label %em28xx_i2c_ir_handle_key.exit

em28xx_i2c_ir_handle_key.exit:                    ; preds = %do.end20.i, %if.end6.i.em28xx_i2c_ir_handle_key.exit_crit_edge, %do.end.i, %do.body.i.em28xx_i2c_ir_handle_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %protocol.i) #10
  br label %if.else.i

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %poll_result.i) #10
  %25 = call ptr @memset(ptr %poll_result.i, i32 255, i32 12)
  %get_key.i = getelementptr i8, ptr %work, i32 124
  %26 = ptrtoint ptr %get_key.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_key.i, align 8
  %call.i9 = call i32 %27(ptr noundef %add.ptr, ptr noundef nonnull %poll_result.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.i10 = icmp slt i32 %call.i9, 0
  br i1 %cmp.i10, label %do.body.i11, label %if.end8.i, !prof !158

do.body.i11:                                      ; preds = %if.else
  %28 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i = icmp eq i32 %28, 0
  br i1 %tobool2.not.i, label %do.body.i11.em28xx_ir_handle_key.exit_crit_edge, label %do.end.i13

do.body.i11.em28xx_ir_handle_key.exit_crit_edge:  ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_ir_handle_key.exit

do.end.i13:                                       ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %intf.i12 = getelementptr inbounds %struct.em28xx, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %intf.i12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf.i12, align 4
  %dev5.i = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev5.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %call.i9) #13
  br label %em28xx_ir_handle_key.exit

if.end8.i:                                        ; preds = %if.else
  %33 = ptrtoint ptr %poll_result.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %poll_result.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %last_readcount.i = getelementptr i8, ptr %work, i32 104
  %34 = ptrtoint ptr %last_readcount.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_readcount.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %bf.cast.i)
  %cmp9.not.i = icmp eq i32 %35, %bf.cast.i
  br i1 %cmp9.not.i, label %if.end8.i.em28xx_ir_handle_key.exit_crit_edge, label %do.body17.i, !prof !159

if.end8.i.em28xx_ir_handle_key.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_ir_handle_key.exit

do.body17.i:                                      ; preds = %if.end8.i
  %36 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool18.not.i = icmp eq i32 %36, 0
  br i1 %tobool18.not.i, label %do.body17.i.do.end33.i_crit_edge, label %do.end22.i

do.body17.i.do.end33.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

do.end22.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %intf24.i = getelementptr inbounds %struct.em28xx, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %intf24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf24.i, align 4
  %dev25.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast27.i = zext i8 %bf.lshr.i to i32
  %scancode.i = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result.i, i32 0, i32 2
  %41 = ptrtoint ptr %scancode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scancode.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev25.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.50, i32 noundef %bf.cast27.i, i32 noundef %bf.cast.i, i32 noundef %42) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end22.i, %do.body17.i.do.end33.i_crit_edge
  %full_code.i = getelementptr i8, ptr %work, i32 100
  %43 = ptrtoint ptr %full_code.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load34.i = load i8, ptr %full_code.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34.i)
  %tobool37.not.i = icmp sgt i8 %bf.load34.i, -1
  %rc44.i = getelementptr i8, ptr %work, i32 -40
  %44 = ptrtoint ptr %rc44.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rc44.i, align 4
  br i1 %tobool37.not.i, label %if.else.i16, label %if.then38.i

if.then38.i:                                      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %protocol.i14 = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result.i, i32 0, i32 1
  %46 = ptrtoint ptr %protocol.i14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %protocol.i14, align 4
  %scancode39.i = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result.i, i32 0, i32 2
  %48 = ptrtoint ptr %scancode39.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %scancode39.i, align 4
  %conv.i15 = zext i32 %49 to i64
  %50 = ptrtoint ptr %poll_result.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load40.i = load i8, ptr %poll_result.i, align 4
  %bf.lshr41.i = lshr i8 %bf.load40.i, 7
  call void @rc_keydown(ptr noundef %45, i32 noundef %47, i64 noundef %conv.i15, i8 noundef zeroext %bf.lshr41.i) #10
  br label %if.end51.i

if.else.i16:                                      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %scancode45.i = getelementptr inbounds %struct.em28xx_ir_poll_result, ptr %poll_result.i, i32 0, i32 2
  %51 = ptrtoint ptr %scancode45.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scancode45.i, align 4
  %and.i = and i32 %52, 255
  %conv46.i = zext i32 %and.i to i64
  %53 = ptrtoint ptr %poll_result.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load47.i = load i8, ptr %poll_result.i, align 4
  %bf.lshr48.i = lshr i8 %bf.load47.i, 7
  call void @rc_keydown(ptr noundef %45, i32 noundef 0, i64 noundef %conv46.i, i8 noundef zeroext %bf.lshr48.i) #10
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else.i16, %if.then38.i
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %chip_id.i = getelementptr inbounds %struct.em28xx, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chip_id.i, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %57, label %if.else61.i [
    i32 65, label %if.end51.i.if.then59.i_crit_edge
    i32 68, label %if.end51.i.if.then59.i_crit_edge17
  ]

if.end51.i.if.then59.i_crit_edge17:               ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59.i

if.end51.i.if.then59.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59.i

if.then59.i:                                      ; preds = %if.end51.i.if.then59.i_crit_edge, %if.end51.i.if.then59.i_crit_edge17
  %59 = ptrtoint ptr %last_readcount.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %last_readcount.i, align 4
  br label %em28xx_ir_handle_key.exit

if.else61.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %poll_result.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load62.i = load i8, ptr %poll_result.i, align 4
  %bf.clear63.i = and i8 %bf.load62.i, 127
  %bf.cast64.i = zext i8 %bf.clear63.i to i32
  %61 = ptrtoint ptr %last_readcount.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bf.cast64.i, ptr %last_readcount.i, align 4
  br label %em28xx_ir_handle_key.exit

em28xx_ir_handle_key.exit:                        ; preds = %if.else61.i, %if.then59.i, %if.end8.i.em28xx_ir_handle_key.exit_crit_edge, %do.end.i13, %do.body.i11.em28xx_ir_handle_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %poll_result.i) #10
  br label %if.else.i

if.else.i:                                        ; preds = %em28xx_ir_handle_key.exit, %em28xx_i2c_ir_handle_key.exit
  %polling = getelementptr i8, ptr %work, i32 -4
  %62 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %polling, align 8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %63) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %64 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %work, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_regs(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__param_ir_debug, !1, !"__param_ir_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_ir_debugtype303, !1, !"__UNIQUE_ID_ir_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ir_debug304, !4, !"__UNIQUE_ID_ir_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 37, i32 1}
!5 = !{ptr @__UNIQUE_ID_file305, !6, !"__UNIQUE_ID_file305", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 937, i32 1}
!7 = !{ptr @__UNIQUE_ID_license306, !6, !"__UNIQUE_ID_license306", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author307, !9, !"__UNIQUE_ID_author307", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 938, i32 1}
!10 = !{ptr @__UNIQUE_ID_description308, !11, !"__UNIQUE_ID_description308", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 939, i32 1}
!12 = !{ptr @__UNIQUE_ID_version309, !13, !"__UNIQUE_ID_version309", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 940, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_em28xx_rc__310_942_em28xx_rc_register6, !19, !"__initcall__kmod_em28xx_rc__310_942_em28xx_rc_register6", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 942, i32 1}
!20 = !{ptr @__exitcall_em28xx_rc_unregister, !21, !"__exitcall_em28xx_rc_unregister", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 943, i32 1}
!22 = !{ptr @ir_debug, !23, !"ir_debug", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 35, i32 21}
!24 = !{ptr @__param_str_ir_debug, !1, !"__param_str_ir_debug", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 920, i32 10}
!27 = !{ptr @rc_ops, !28, !"rc_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 918, i32 26}
!29 = !{ptr @em28xx_ir_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 712, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @em28xx_ir_init.__key.5, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 721, i32 4}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @em28xx_ir_init._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @em28xx_ir_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 730, i32 3}
!44 = !{ptr @em28xx_ir_init._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @em28xx_ir_init._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 735, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @em28xx_ir_init._entry.15, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @em28xx_ir_init._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 757, i32 19}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 761, i32 19}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 765, i32 19}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 770, i32 19}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 821, i32 20}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 827, i32 20}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 834, i32 2}
!65 = !{ptr @em28xx_ir_init._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @em28xx_ir_init._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 572, i32 5}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 642, i32 4}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 653, i32 5}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @em28xx_init_buttons._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @em28xx_init_buttons._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 591, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @em28xx_register_snapshot_button._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @em28xx_register_snapshot_button._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 598, i32 37}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 601, i32 20}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 612, i32 3}
!90 = !{ptr @em28xx_register_snapshot_button._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @em28xx_register_snapshot_button._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"addr_list", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 489, i32 30}
!94 = !{ptr @em28xx_ir_start.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 381, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @em28xx_ir_start.__key.41, !95, !"__key", i1 false, i1 false}
!98 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @em28xx_i2c_ir_handle_key.scancode, !100, !"scancode", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 305, i32 13}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 311, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @em28xx_i2c_ir_handle_key._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @em28xx_i2c_ir_handle_key._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 316, i32 3}
!109 = !{ptr @em28xx_i2c_ir_handle_key._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @em28xx_i2c_ir_handle_key._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 331, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @em28xx_ir_handle_key._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @em28xx_ir_handle_key._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 336, i32 3}
!118 = !{ptr @em28xx_ir_handle_key._entry.51, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @em28xx_ir_handle_key._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 474, i32 3}
!122 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @em28xx_ir_change_protocol._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @em28xx_ir_change_protocol._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/usb.h", i32 912, i32 31}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 691, i32 3}
!129 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @em28xx_shutdown_buttons._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @em28xx_shutdown_buttons._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 857, i32 2}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @em28xx_ir_fini._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @em28xx_ir_fini._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 886, i32 2}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @em28xx_ir_suspend._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @em28xx_ir_suspend._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/em28xx/em28xx-input.c", i32 905, i32 2}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @em28xx_ir_resume._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @em28xx_ir_resume._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{i64 2148448532, i64 2148448564, i64 2148448593, i64 2148448627, i64 2148448658, i64 2148448681}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2148540618}
!161 = !{i64 2148450997, i64 2148451029, i64 2148451058, i64 2148451092, i64 2148451123, i64 2148451146}
!162 = !{i64 2150323029}
!163 = !{i8 0, i8 2}
