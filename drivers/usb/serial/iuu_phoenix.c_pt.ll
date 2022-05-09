; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/iuu_phoenix.c_pt.bc'
source_filename = "../drivers/usb/serial/iuu_phoenix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iuu_private = type { %struct.spinlock, i8, i32, i8, i32, ptr, i32, ptr, i8, i32, i32, i32 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_iuu_phoenix__279_1184_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iuu_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author280 = internal constant [50 x i8] c"iuu_phoenix.author=Alain Degreffe eczema@ecze.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description281 = internal constant [62 x i8] c"iuu_phoenix.description=Infinity USB Unlimited Phoenix driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [48 x i8] c"iuu_phoenix.file=drivers/usb/serial/iuu_phoenix\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [24 x i8] c"iuu_phoenix.license=GPL\00", section ".modinfo", align 1
@__param_str_xmas = internal constant [17 x i8] c"iuu_phoenix.xmas\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@xmas = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_xmas = internal constant %struct.kernel_param { ptr @__param_str_xmas, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @xmas } }, section "__param", align 4
@__UNIQUE_ID_xmastype284 = internal constant [31 x i8] c"iuu_phoenix.parmtype=xmas:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_xmas285 = internal constant [49 x i8] c"iuu_phoenix.parm=xmas:Xmas colors enabled or not\00", section ".modinfo", align 1
@__param_str_boost = internal constant [18 x i8] c"iuu_phoenix.boost\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@boost = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_boost = internal constant %struct.kernel_param { ptr @__param_str_boost, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @boost } }, section "__param", align 4
@__UNIQUE_ID_boosttype286 = internal constant [31 x i8] c"iuu_phoenix.parmtype=boost:int\00", section ".modinfo", align 1
@__UNIQUE_ID_boost287 = internal constant [65 x i8] c"iuu_phoenix.parm=boost:Card overclock boost (in percent 100-500)\00", section ".modinfo", align 1
@__param_str_clockmode = internal constant [22 x i8] c"iuu_phoenix.clockmode\00", align 1
@clockmode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_clockmode = internal constant %struct.kernel_param { ptr @__param_str_clockmode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @clockmode } }, section "__param", align 4
@__UNIQUE_ID_clockmodetype288 = internal constant [35 x i8] c"iuu_phoenix.parmtype=clockmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_clockmode289 = internal constant [79 x i8] c"iuu_phoenix.parm=clockmode:Card clock mode (1=3.579 MHz, 2=3.680 MHz, 3=6 Mhz)\00", section ".modinfo", align 1
@__param_str_cdmode = internal constant [19 x i8] c"iuu_phoenix.cdmode\00", align 1
@cdmode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cdmode = internal constant %struct.kernel_param { ptr @__param_str_cdmode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @cdmode } }, section "__param", align 4
@__UNIQUE_ID_cdmodetype290 = internal constant [32 x i8] c"iuu_phoenix.parmtype=cdmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cdmode291 = internal constant [110 x i8] c"iuu_phoenix.parm=cdmode:Card detect mode (0=none, 1=CD, 2=!CD, 3=DSR, 4=!DSR, 5=CTS, 6=!CTS, 7=RING, 8=!RING)\00", section ".modinfo", align 1
@__param_str_vcc_default = internal constant [24 x i8] c"iuu_phoenix.vcc_default\00", align 1
@vcc_default = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_vcc_default = internal constant %struct.kernel_param { ptr @__param_str_vcc_default, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @vcc_default } }, section "__param", align 4
@__UNIQUE_ID_vcc_defaulttype292 = internal constant [37 x i8] c"iuu_phoenix.parmtype=vcc_default:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vcc_default293 = internal constant [92 x i8] c"iuu_phoenix.parm=vcc_default:Set default VCC (either 3 for 3.3V or 5 for 5V). Default to 5.\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iuu_phoenix\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4175, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@iuu_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0, i32 512, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iuu_port_probe, ptr @iuu_port_remove, ptr null, ptr null, ptr null, ptr @iuu_open, ptr @iuu_close, ptr @iuu_uart_write, ptr null, ptr null, ptr null, ptr null, ptr @iuu_set_termios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iuu_tiocmget, ptr @iuu_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr @iuu_init_termios, ptr null, ptr null, ptr @iuu_uart_read_callback, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@iuu_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_attr_vcc_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vcc_mode_show, ptr @vcc_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcc_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@vcc_mode_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1125, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - vcc_mode: %s is not a unsigned long\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcc_mode_store\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/serial/iuu_phoenix.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vcc_mode_store._entry_ptr = internal global ptr @vcc_mode_store._entry, section ".printk_index", align 4
@vcc_mode_store.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: setting vcc_mode = %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@vcc_mode_store._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1132, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - vcc_mode %ld is invalid\0A\00", [34 x i8] zeroinitializer }, align 32
@vcc_mode_store._entry_ptr.12 = internal global ptr @vcc_mode_store._entry.10, section ".printk_index", align 4
@iuu_vcc_set.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.6, ptr @.str.14, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iuu_vcc_set\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - vcc error status = %2x\0A\00", [35 x i8] zeroinitializer }, align 32
@iuu_vcc_set.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.6, ptr @.str.15, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - vcc OK !\0A\00", [17 x i8] zeroinitializer }, align 32
@bulk_immediate.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bulk_immediate\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - error = %2x\0A\00", [46 x i8] zeroinitializer }, align 32
@bulk_immediate.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.6, ptr @.str.18, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - write OK !\0A\00", [47 x i8] zeroinitializer }, align 32
@iuu_open.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iuu_open\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - baud %d\0A\00", [18 x i8] zeroinitializer }, align 32
@iuu_open.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.21, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%x:0x%x:0x%x:0x%x  %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iuu_cardin = internal global { i32, [28 x i8] } zeroinitializer, align 32
@iuu_cardout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@iuu_open.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.22, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - initialization done\0A\00", [38 x i8] zeroinitializer }, align 32
@iuu_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.6, i32 1067, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - failed submitting read urb, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iuu_open._entry_ptr = internal global ptr @iuu_open._entry, section ".printk_index", align 4
@iuu_open.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.24, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - rxcmd OK\0A\00", [17 x i8] zeroinitializer }, align 32
@iuu_led.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iuu_led\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - led error status = %2x\0A\00", [35 x i8] zeroinitializer }, align 32
@iuu_led.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.6, ptr @.str.27, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - led OK !\0A\00", [17 x i8] zeroinitializer }, align 32
@iuu_uart_on.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iuu_uart_on\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - uart_on error\0A\00", [44 x i8] zeroinitializer }, align 32
@iuu_uart_on.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.6, ptr @.str.30, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - uart_flush error\0A\00", [41 x i8] zeroinitializer }, align 32
@iuu_clk.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.6, ptr @.str.32, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iuu_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - write error\0A\00", [46 x i8] zeroinitializer }, align 32
@iuu_clk.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.6, ptr @.str.32, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iuu_uart_baud.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iuu_uart_baud\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - enter baud_base=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@iuu_uart_baud.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.35, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - uart_off error\0A\00", [43 x i8] zeroinitializer }, align 32
@iuu_uart_flush.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.6, ptr @.str.37, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iuu_uart_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - uart_flush_write error\0A\00", [35 x i8] zeroinitializer }, align 32
@iuu_uart_flush.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.6, ptr @.str.38, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - uart_flush_read error\0A\00", [36 x i8] zeroinitializer }, align 32
@iuu_uart_flush.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.6, ptr @.str.39, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - uart_flush datalen is : %i\0A\00", [63 x i8] zeroinitializer }, align 32
@iuu_uart_flush.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.6, ptr @.str.38, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iuu_uart_flush.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.6, ptr @.str.40, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - uart_flush_read OK!\0A\00", [38 x i8] zeroinitializer }, align 32
@read_immediate.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.6, ptr @.str.17, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_immediate\00", [17 x i8] zeroinitializer }, align 32
@read_immediate.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - read OK !\0A\00", [16 x i8] zeroinitializer }, align 32
@read_rxcmd_callback.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read_rxcmd_callback\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - submit result = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iuu_uart_off.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.35, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iuu_uart_off\00", [19 x i8] zeroinitializer }, align 32
@iuu_set_termios.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.6, ptr @.str.47, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iuu_set_termios\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - enter c_ospeed or baud=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@iuu_tiocmset.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iuu_tiocmset\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s msg : SET = 0x%04x, CLEAR = 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@iuu_tiocmset.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.6, ptr @.str.50, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s TIOCMSET RESET called !!!\0A\00", [34 x i8] zeroinitializer }, align 32
@iuu_uart_read_callback.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iuu_uart_read_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - status = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@iuu_uart_read_callback.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.6, ptr @.str.53, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - urb->actual_length = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@iuu_uart_read_callback.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.6, ptr @.str.54, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - call read buf - len to read is %i\0A\00", [56 x i8] zeroinitializer }, align 32
@iuu_uart_read_callback.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.6, ptr @.str.55, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - rxcmd recall\0A\00", [45 x i8] zeroinitializer }, align 32
@read_buf_callback.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.6, ptr @.str.57, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_buf_callback\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - %i chars to write\0A\00", [40 x i8] zeroinitializer }, align 32
@iuu_rxcmd.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.6, ptr @.str.52, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iuu_rxcmd\00", [22 x i8] zeroinitializer }, align 32
@iuu_status_callback.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.6, ptr @.str.52, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iuu_status_callback\00", [44 x i8] zeroinitializer }, align 32
@iuu_update_status_callback.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.6, ptr @.str.52, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iuu_update_status_callback\00", [37 x i8] zeroinitializer }, align 32
@iuu_update_status_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.6, ptr @.str.61, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s - enter\0A\00", [20 x i8] zeroinitializer }, align 32
@iuu_bulk_write.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.63, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iuu_bulk_write\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - writing %i chars : %*ph\0A\00", [34 x i8] zeroinitializer }, align 32
@switch.table.iuu_open = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 64, i32 0, i32 256, i32 0, i32 32, i32 0, i32 128, i32 0], [60 x i8] zeroinitializer }, align 32
@switch.table.iuu_open.64 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 64, i32 0, i32 256, i32 0, i32 32, i32 0, i32 128], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3579000, i64 3680000, i64 6000000]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1180, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"xmas\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 43, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 38, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"clockmode\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 39, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"cdmode\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 40, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"vcc_default\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 44, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1184, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 31, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"iuu_device\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1157, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 88, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"dev_attr_vcc_mode\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1140, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1113, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1124, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1129, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1132, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1096, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1098, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 282, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 284, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 968, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 985, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"iuu_cardin\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 41, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"iuu_cardout\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 42, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1057, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1067, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1070, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 328, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 330, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 756, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 762, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 416, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 797, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 876, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 548, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 554, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 559, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 567, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 302, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 304, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 736, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 780, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 897, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 121, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 127, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 651, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 660, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 667, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 694, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 589, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 162, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 243, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 216, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 222, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [36 x i8] c"../drivers/usb/serial/iuu_phoenix.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 615, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [22 x i8] c"switch.table.iuu_open\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [25 x i8] c"switch.table.iuu_open.64\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_boost287, ptr @__UNIQUE_ID_boosttype286, ptr @__UNIQUE_ID_cdmode291, ptr @__UNIQUE_ID_cdmodetype290, ptr @__UNIQUE_ID_clockmode289, ptr @__UNIQUE_ID_clockmodetype288, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__UNIQUE_ID_vcc_default293, ptr @__UNIQUE_ID_vcc_defaulttype292, ptr @__UNIQUE_ID_xmas285, ptr @__UNIQUE_ID_xmastype284, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_iuu_phoenix__279_1184_usb_serial_module_init6, ptr @__param_boost, ptr @__param_cdmode, ptr @__param_clockmode, ptr @__param_vcc_default, ptr @__param_xmas, ptr @iuu_open._entry, ptr @iuu_open._entry_ptr, ptr @usb_serial_module_exit, ptr @vcc_mode_store._entry, ptr @vcc_mode_store._entry.10, ptr @vcc_mode_store._entry_ptr, ptr @vcc_mode_store._entry_ptr.12, ptr @serial_drivers, ptr @xmas, ptr @boost, ptr @clockmode, ptr @cdmode, ptr @vcc_default, ptr @.str, ptr @id_table, ptr @iuu_device, ptr @iuu_port_probe.__key, ptr @.str.1, ptr @dev_attr_vcc_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @iuu_cardin, ptr @iuu_cardout, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @switch.table.iuu_open, ptr @switch.table.iuu_open.64], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xmas to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_default to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iuu_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iuu_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vcc_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_mode_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_mode_store._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iuu_cardin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iuu_cardout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iuu_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iuu_open to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iuu_open.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iuu_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #13
  %buf = getelementptr inbounds %struct.iuu_private, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i35, ptr %buf, align 4
  %tobool3.not = icmp eq ptr %call7.i.i35, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 256) #13
  %writebuf = getelementptr inbounds %struct.iuu_private, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %writebuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i36, ptr %writebuf, align 4
  %tobool8.not = icmp eq ptr %call7.i.i36, null
  br i1 %tobool8.not, label %if.end5.cleanup.sink.split.sink.split_crit_edge, label %if.end11

if.end5.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end11:                                         ; preds = %if.end5
  %5 = load i32, ptr @vcc_default, align 4
  %vcc = getelementptr inbounds %struct.iuu_private, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vcc, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @iuu_port_probe.__key, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %call.i = tail call i32 @device_create_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_vcc_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %writebuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %writebuf, align 4
  tail call void @kfree(ptr noundef %9) #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then15, %if.end5.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %call.i, %if.then15 ], [ -12, %if.end5.cleanup.sink.split.sink.split_crit_edge ]
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %11) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_port_remove(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_vcc_mode) #10
  %writebuf = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %writebuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writebuf, align 4
  tail call void @kfree(ptr noundef %3) #10
  %buf = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iuu_open(ptr nocapture noundef readonly %tty, ptr noundef %port) #2 align 64 {
entry:
  %actual = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual) #10
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual, align 4, !annotation !223
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %5 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_ospeed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_open.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_open, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_open.__UNIQUE_ID_ddebug272, ptr noundef %dev2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %9 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe, align 4
  %call7 = tail call i32 @usb_clear_halt(ptr noundef %8, i32 noundef %12) #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %15 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_urb, align 4
  %pipe9 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %pipe9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe9, align 4
  %call10 = tail call i32 @usb_clear_halt(ptr noundef %14, i32 noundef %18) #10
  %poll = getelementptr inbounds %struct.iuu_private, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %poll, align 4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i = shl i32 %25, 8
  %or = or i32 %shl.i, -2147483648
  %call17 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_open.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_open, %if.then30)) #10
          to label %do.end35 [label %if.then30], !srcloc !224

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_open.__UNIQUE_ID_ddebug273, ptr noundef %dev2, ptr noundef nonnull @.str.21, i32 noundef 3, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef %call17) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.end
  %26 = tail call fastcc i32 @iuu_led(ptr noundef %port, i32 noundef 61440, i32 noundef 61440, i32 noundef 0)
  tail call fastcc void @iuu_uart_on(ptr noundef %port)
  %27 = load i32, ptr @boost, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %27)
  %cmp = icmp slt i32 %27, 100
  br i1 %cmp, label %if.then38, label %do.end35.if.end39_crit_edge

do.end35.if.end39_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  store i32 100, ptr @boost, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.end35.if.end39_crit_edge
  %28 = load i32, ptr @boost, align 4
  %boost = getelementptr inbounds %struct.iuu_private, ptr %4, i32 0, i32 10
  %29 = ptrtoint ptr %boost to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %boost, align 4
  %30 = load i32, ptr @clockmode, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.iuu_private, ptr %4, i32 0, i32 11
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3680000, ptr %clk, align 4
  %mul = mul i32 %28, 3680000
  %div = sdiv i32 %mul, 100
  tail call fastcc void @iuu_clk(ptr noundef %port, i32 noundef %div)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %mul45 = mul i32 %28, 6000000
  %div46 = sdiv i32 %mul45, 100
  tail call fastcc void @iuu_clk(ptr noundef %port, i32 noundef %div46)
  %clk48 = getelementptr inbounds %struct.iuu_private, ptr %4, i32 0, i32 11
  %33 = ptrtoint ptr %clk48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6000000, ptr %clk48, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %mul52 = mul i32 %28, 3579000
  %div53 = sdiv i32 %mul52, 100
  tail call fastcc void @iuu_clk(ptr noundef %port, i32 noundef %div53)
  %clk55 = getelementptr inbounds %struct.iuu_private, ptr %4, i32 0, i32 11
  %34 = ptrtoint ptr %clk55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3579000, ptr %clk55, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb44, %sw.bb
  %.sink172 = phi i32 [ %6, %sw.default ], [ 16457, %sw.bb44 ], [ %6, %sw.bb ]
  %35 = load i32, ptr @boost, align 4
  %mul56 = mul i32 %35, %.sink172
  %div57 = sdiv i32 %mul56, 100
  %call58 = call fastcc i32 @iuu_uart_baud(ptr noundef %port, i32 noundef %div57, ptr noundef nonnull %actual, i8 noundef zeroext 1)
  %36 = load i32, ptr @cdmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %37 = icmp ult i32 %36, 9
  br i1 %37, label %switch.lookup, label %sw.epilog.sw.epilog68_crit_edge

sw.epilog.sw.epilog68_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog68

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.iuu_open, i32 0, i32 %36
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep174 = getelementptr inbounds [9 x i32], ptr @switch.table.iuu_open.64, i32 0, i32 %36
  %39 = ptrtoint ptr %switch.gep174 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load175 = load i32, ptr %switch.gep174, align 4
  store i32 %switch.load, ptr @iuu_cardin, align 4
  store i32 %switch.load175, ptr @iuu_cardout, align 4
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog68_crit_edge
  %call69 = tail call fastcc i32 @iuu_uart_flush(ptr noundef %port)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_open.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_open, %if.then82)) #10
          to label %do.end85 [label %if.then82], !srcloc !224

if.then82:                                        ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_open.__UNIQUE_ID_ddebug274, ptr noundef %dev2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #10
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %sw.epilog68
  %40 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %transfer_buffer, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 86, ptr %43, align 1
  %45 = load ptr, ptr %write_urb, align 8
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %50 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %51 to i32
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %49, align 8
  %shl.i167 = shl i32 %53, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i167
  %or93 = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 8
  %54 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or93, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @read_rxcmd_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 27
  %58 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %port, ptr %context4.i, align 4
  %59 = load ptr, ptr %write_urb, align 8
  %call97 = tail call i32 @usb_submit_urb(ptr noundef %59, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body103, label %do.end102

do.end102:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, i32 noundef %call97) #14
  tail call fastcc void @iuu_uart_off(ptr noundef %port) #10
  %60 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %61) #10
  %62 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %63) #10
  %64 = tail call fastcc i32 @iuu_led(ptr noundef %port, i32 noundef 0, i32 noundef 0, i32 noundef 61440) #10
  br label %if.end119

do.body103:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_open.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_open, %if.then115)) #10
          to label %if.end119 [label %if.then115], !srcloc !224

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_open.__UNIQUE_ID_ddebug275, ptr noundef %dev2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #10
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %do.body103, %do.end102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual) #10
  ret i32 %call97
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iuu_uart_off(ptr noundef %port)
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %1) #10
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %4 = tail call fastcc i32 @iuu_led(ptr noundef %port, i32 noundef 0, i32 noundef 0, i32 noundef 61440)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iuu_uart_write(ptr nocapture noundef readnone %tty, ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %writelen = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %writelen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writelen, align 4
  %sub = sub i32 256, %3
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9 = icmp eq i32 %4, 0
  br i1 %cmp9, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %writebuf = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %writebuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %writebuf, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %3
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %4)
  %8 = ptrtoint ptr %writelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writelen, align 4
  %add = add i32 %9, %4
  store i32 %add, ptr %writelen, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  %actual = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual) #10
  %and = and i32 %3, 1073742592
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_ospeed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_set_termios.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_set_termios, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_set_termios.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and5 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else13, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %and8 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %. = select i1 %tobool9.not, i32 3, i32 4
  br label %if.end27

if.else13:                                        ; preds = %do.end
  %and14 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else13.if.end27_crit_edge, label %if.else18

if.else13.if.end27_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %and19 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %.76 = select i1 %tobool20.not, i32 1, i32 2
  br label %if.end27

if.end27:                                         ; preds = %if.else18, %if.else13.if.end27_crit_edge, %if.then7
  %parity.0 = phi i32 [ %., %if.then7 ], [ 0, %if.else13.if.end27_crit_edge ], [ %.76, %if.else18 ]
  %csize.0 = phi i32 [ 32, %if.then7 ], [ 48, %if.else13.if.end27_crit_edge ], [ 32, %if.else18 ]
  %and28 = lshr i32 %3, 1
  %6 = and i32 %and28, 32
  %7 = or i32 %parity.0, %6
  %boost = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %boost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boost, align 4
  %mul = mul i32 %9, %5
  %div = udiv i32 %mul, 100
  %10 = trunc i32 %7 to i8
  %conv = xor i8 %10, 32
  %call31 = call fastcc i32 @iuu_uart_baud(ptr noundef %port, i32 noundef %div, ptr noundef nonnull %actual, i8 noundef zeroext %conv)
  %tobool32.not = icmp eq ptr %old_termios, null
  br i1 %tobool32.not, label %if.end27.if.end35_crit_edge, label %if.then33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_termios_copy_hw(ptr noundef %termios, ptr noundef nonnull %old_termios) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp.not = icmp eq i32 %call31, 0
  br i1 %cmp.not, label %if.end38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %5, i32 noundef %5) #10
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  %and41 = and i32 %12, -1073742641
  %or42 = or i32 %csize.0, %and
  %or45 = or i32 %or42, %and41
  store i32 %or45, ptr %c_cflag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end35.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iuu_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %tiostatus = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tiostatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tiostatus, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iuu_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_tiocmset.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_tiocmset, %if.then)) #10
          to label %do.body5 [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_tiocmset.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %set, i32 noundef %clear) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body5.if.end39_crit_edge, label %land.lhs.true

do.body5.if.end39_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %do.body5
  %tiostatus = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tiostatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tiostatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp14 = icmp eq i32 %5, 4
  br i1 %cmp14, label %land.lhs.true.if.then37_crit_edge, label %do.body17

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

do.body17:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_tiocmset.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_tiocmset, %if.then29)) #10
          to label %do.end33 [label %if.then29], !srcloc !224

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_tiocmset.__UNIQUE_ID_ddebug239, ptr noundef %dev30, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  %reset = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %reset, align 4
  br label %if.then37

if.then37:                                        ; preds = %do.end33, %land.lhs.true.if.then37_crit_edge
  %7 = ptrtoint ptr %tiostatus to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %tiostatus, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body5.if.end39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call8) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iuu_init_termios(ptr nocapture noundef writeonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2557, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 6
  %1 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9600, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9600, ptr %c_ospeed, align 4
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %3 = ptrtoint ptr %c_lflag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %c_lflag, align 4
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %c_oflag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %c_oflag, align 4
  %5 = ptrtoint ptr %termios to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %termios, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_uart_read_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %poll = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %poll, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_read_callback, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !224

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_read_callback.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %5) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %11, label %do.body14 [
    i32 1, label %if.end32
    i32 0, label %if.end7.if.end54_crit_edge
  ]

if.end7.if.end54_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_read_callback, %if.then26)) #10
          to label %cleanup [label %if.then26], !srcloc !224

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_read_callback.__UNIQUE_ID_ddebug260, ptr noundef %dev27, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %14) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %7, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp33.not = icmp eq i8 %16, 0
  br i1 %cmp33.not, label %if.end32.if.end54_crit_edge, label %do.body36

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body36:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_read_callback, %if.then48)) #10
          to label %do.end52 [label %if.then48], !srcloc !224

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_read_callback.__UNIQUE_ID_ddebug261, ptr noundef %dev49, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51, i32 noundef %conv) #10
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_urb.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %bulk_in_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %bulk_in_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bulk_in_endpointAddress.i, align 8
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %26, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @read_buf_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %context4.i.i, align 4
  %32 = load ptr, ptr %read_urb.i, align 4
  %call6.i = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 2592) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end32.if.end54_crit_edge, %if.end7.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc)
  %cmp56 = icmp sgt i32 %inc, 99
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %write_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %write_urb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %36, align 1
  %38 = load ptr, ptr %write_urb.i, align 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 26
  %43 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i142 = zext i8 %44 to i32
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 8
  %shl.i.i143 = shl i32 %46, 8
  %shl1.i.i144 = shl nuw nsw i32 %conv.i142, 15
  %or.i.i145 = or i32 %shl.i.i143, %shl1.i.i144
  %or.i = or i32 %or.i.i145, -1073741824
  %dev1.i.i146 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 8
  %47 = ptrtoint ptr %dev1.i.i146 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %42, ptr %dev1.i.i146, align 4
  %pipe2.i.i147 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 10
  %48 = ptrtoint ptr %pipe2.i.i147 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i, ptr %pipe2.i.i147, align 4
  %transfer_buffer_length.i.i148 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i.i148 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %transfer_buffer_length.i.i148, align 4
  %complete.i.i149 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 28
  %50 = ptrtoint ptr %complete.i.i149 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @iuu_status_callback, ptr %complete.i.i149, align 4
  %context4.i.i150 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 27
  %51 = ptrtoint ptr %context4.i.i150 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %context4.i.i150, align 4
  %52 = load ptr, ptr %write_urb.i, align 8
  %call7.i = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 2592) #10
  %53 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %poll, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %reset = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 3
  %54 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp63 = icmp eq i8 %55, 1
  br i1 %cmp63, label %if.then65, label %do.body69

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @iuu_reset(ptr noundef %1)
  br label %cleanup

do.body69:                                        ; preds = %if.end61
  %call74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %writelen = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %writelen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %writelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp79 = icmp sgt i32 %57, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call74) #10
  br i1 %cmp79, label %if.then81, label %if.end84

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @iuu_bulk_write(ptr noundef %1)
  br label %cleanup

if.end84:                                         ; preds = %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_read_callback, %if.then98)) #10
          to label %do.end102 [label %if.then98], !srcloc !224

if.then98:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %dev99 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_read_callback.__UNIQUE_ID_ddebug262, ptr noundef %dev99, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51) #10
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %if.end84
  tail call fastcc void @iuu_led_activity_off(ptr noundef %urb)
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %if.then81, %if.then65, %if.then58, %do.end52, %if.then26, %do.body14, %if.then6, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcc_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vcc = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vcc, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcc_mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -856
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #10
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v, align 4, !annotation !223
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %buf) #14
  br label %fail_store_vcc_mode

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcc_mode_store.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vcc_mode_store, %if.then8)) #10
          to label %do.end11 [label %if.then8], !srcloc !224

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vcc_mode_store.__UNIQUE_ID_ddebug278, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %4) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %6, label %do.end16 [
    i32 3, label %do.end11.if.else_crit_edge
    i32 5, label %do.end11.if.else_crit_edge25
  ]

do.end11.if.else_crit_edge25:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end11.if.else_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end16:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef %6) #14
  br label %fail_store_vcc_mode

if.else:                                          ; preds = %do.end11.if.else_crit_edge, %do.end11.if.else_crit_edge25
  call fastcc void @iuu_vcc_set(ptr noundef %add.ptr, i32 noundef %6)
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v, align 4
  %vcc = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %vcc, align 4
  br label %fail_store_vcc_mode

fail_store_vcc_mode:                              ; preds = %if.else, %do.end16, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #10
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_vcc_set(ptr noundef %port, i32 noundef %vcc) unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 5) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 89, ptr %call7.i, align 8
  %conv = trunc i32 %vcc to i8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx1, align 1
  %shr = lshr i32 %vcc, 8
  %conv3 = trunc i32 %shr to i8
  %arrayidx4 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %arrayidx4, align 2
  %shr5 = lshr i32 %vcc, 16
  %conv7 = trunc i32 %shr5 to i8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %arrayidx8, align 1
  %shr9 = lshr i32 %vcc, 24
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx12 = getelementptr i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv11, ptr %arrayidx12, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %8 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %actual.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %11 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %14, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 5, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_vcc_set, %bulk_immediate.exit.thread4)) #10
          to label %do.body.critedge [label %bulk_immediate.exit.thread4], !srcloc !224

bulk_immediate.exit.thread4:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body11.i:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_vcc_set, %bulk_immediate.exit.thread)) #10
          to label %do.body22.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body22

do.body.critedge:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %bulk_immediate.exit.thread4
  call void @kfree(ptr noundef nonnull %call7.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_vcc_set.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_vcc_set, %if.then20)) #10
          to label %cleanup [label %if.then20], !srcloc !224

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_vcc_set.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %call4.i) #10
  br label %cleanup

do.body22.critedge:                               ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body22

do.body22:                                        ; preds = %do.body22.critedge, %bulk_immediate.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_vcc_set.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_vcc_set, %if.then34)) #10
          to label %cleanup [label %if.then34], !srcloc !224

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %dev35 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_vcc_set.__UNIQUE_ID_ddebug277, ptr noundef %dev35, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body22, %if.then20, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iuu_led(ptr noundef %port, i32 noundef %R, i32 noundef %G, i32 noundef %B) unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %call7.i, align 8
  %conv = trunc i32 %R to i8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx1, align 1
  %shr = lshr i32 %R, 8
  %conv3 = trunc i32 %shr to i8
  %arrayidx4 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %arrayidx4, align 2
  %conv6 = trunc i32 %G to i8
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %arrayidx7, align 1
  %shr8 = lshr i32 %G, 8
  %conv10 = trunc i32 %shr8 to i8
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv10, ptr %arrayidx11, align 4
  %conv13 = trunc i32 %B to i8
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 5
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %B, 8
  %conv17 = trunc i32 %shr15 to i8
  %arrayidx18 = getelementptr i8, ptr %call7.i, i32 6
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %arrayidx18, align 2
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 7
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx19, align 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %11 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %actual.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %14 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %17, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %13, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 8, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_led, %bulk_immediate.exit.thread4)) #10
          to label %do.body.critedge [label %bulk_immediate.exit.thread4], !srcloc !224

bulk_immediate.exit.thread4:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body11.i:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_led, %bulk_immediate.exit.thread)) #10
          to label %do.body29.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body29

do.body.critedge:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %bulk_immediate.exit.thread4
  call void @kfree(ptr noundef nonnull %call7.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_led.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_led, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !224

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_led.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %call4.i) #10
  br label %cleanup

do.body29.critedge:                               ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body29

do.body29:                                        ; preds = %do.body29.critedge, %bulk_immediate.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_led.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_led, %if.then41)) #10
          to label %cleanup [label %if.then41], !srcloc !224

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_led.__UNIQUE_ID_ddebug249, ptr noundef %dev42, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %if.then27, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.then27 ], [ 0, %do.body ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_uart_on(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 73, ptr %call7.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -104, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 33, ptr %arrayidx3, align 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %7 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %actual.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %10 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %13, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %9, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 4, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_on, %bulk_immediate.exit.thread4)) #10
          to label %do.body.critedge [label %bulk_immediate.exit.thread4], !srcloc !224

bulk_immediate.exit.thread4:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body11.i:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_on, %bulk_immediate.exit.thread)) #10
          to label %if.end12.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end12

do.body.critedge:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %bulk_immediate.exit.thread4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_on.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_on, %if.then10)) #10
          to label %uart_enable_failed [label %if.then10], !srcloc !224

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_on.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #10
  br label %uart_enable_failed

if.end12.critedge:                                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %bulk_immediate.exit.thread
  %call13 = call fastcc i32 @iuu_uart_flush(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end12.uart_enable_failed_crit_edge, label %do.body16

if.end12.uart_enable_failed_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %uart_enable_failed

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_on.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_on, %if.then28)) #10
          to label %uart_enable_failed [label %if.then28], !srcloc !224

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_on.__UNIQUE_ID_ddebug267, ptr noundef %dev29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #10
  br label %uart_enable_failed

uart_enable_failed:                               ; preds = %if.then28, %do.body16, %if.end12.uart_enable_failed_crit_edge, %if.then10, %do.body
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %uart_enable_failed, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_clk(ptr noundef %port, i32 noundef %dwFrq) unnamed_addr #2 align 64 {
entry:
  %actual.i9 = alloca i32, align 4
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %dwFrq to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %dwFrq, label %entry.for.cond40.preheader_crit_edge [
    i32 0, label %if.then
    i32 3579000, label %entry.if.end113_crit_edge
    i32 3680000, label %if.then28
    i32 6000000, label %if.then32
  ]

entry.if.end113_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

entry.for.cond40.preheader_crit_edge:             ; preds = %entry
  br label %for.cond40.preheader

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 76, ptr %4, align 1
  %6 = load ptr, ptr %buf, align 4
  %arrayidx4 = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -46, ptr %arrayidx4, align 1
  %8 = load ptr, ptr %buf, align 4
  %arrayidx7 = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %arrayidx7, align 1
  %10 = load ptr, ptr %buf, align 4
  %arrayidx10 = getelementptr i8, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx10, align 1
  %12 = load ptr, ptr %buf, align 4
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %15 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %actual.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %18 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %21, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or.i, ptr noundef %12, i32 noundef 4, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_clk, %bulk_immediate.exit.thread25)) #10
          to label %do.body.critedge [label %bulk_immediate.exit.thread25], !srcloc !224

bulk_immediate.exit.thread25:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body11.i:                                      ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_clk, %bulk_immediate.exit.thread)) #10
          to label %if.end113.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end113

do.body.critedge:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %bulk_immediate.exit.thread25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_clk.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_clk, %if.then20)) #10
          to label %cleanup [label %if.then20], !srcloc !224

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_clk.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

for.cond40.preheader:                             ; preds = %for.inc107.for.cond40.preheader_crit_edge, %entry.for.cond40.preheader_crit_edge
  %lQ.045 = phi i32 [ %inc108, %for.inc107.for.cond40.preheader_crit_edge ], [ 2, %entry.for.cond40.preheader_crit_edge ]
  %result.044 = phi i32 [ %result.3, %for.inc107.for.cond40.preheader_crit_edge ], [ 0, %entry.for.cond40.preheader_crit_edge ]
  %DIV.043 = phi i8 [ %DIV.3, %for.inc107.for.cond40.preheader_crit_edge ], [ 0, %entry.for.cond40.preheader_crit_edge ]
  %P.042 = phi i32 [ %P.3, %for.inc107.for.cond40.preheader_crit_edge ], [ 0, %entry.for.cond40.preheader_crit_edge ]
  %Q.041 = phi i8 [ %Q.3, %for.inc107.for.cond40.preheader_crit_edge ], [ 0, %entry.for.cond40.preheader_crit_edge ]
  %conv98 = trunc i32 %lQ.045 to i8
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.inc105.for.cond49.preheader_crit_edge, %for.cond40.preheader
  %lP.040 = phi i32 [ 2055, %for.cond40.preheader ], [ %dec, %for.inc105.for.cond49.preheader_crit_edge ]
  %result.139 = phi i32 [ %result.044, %for.cond40.preheader ], [ %result.3, %for.inc105.for.cond49.preheader_crit_edge ]
  %DIV.138 = phi i8 [ %DIV.043, %for.cond40.preheader ], [ %DIV.3, %for.inc105.for.cond49.preheader_crit_edge ]
  %P.137 = phi i32 [ %P.042, %for.cond40.preheader ], [ %P.3, %for.inc105.for.cond49.preheader_crit_edge ]
  %Q.136 = phi i8 [ %Q.041, %for.cond40.preheader ], [ %Q.3, %for.inc105.for.cond49.preheader_crit_edge ]
  %div58 = udiv i32 %lP.040, %lQ.045
  br label %for.body57

for.body57:                                       ; preds = %for.inc.for.body57_crit_edge, %for.cond49.preheader
  %lDiv.034 = phi i32 [ 4, %for.cond49.preheader ], [ %inc104, %for.inc.for.body57_crit_edge ]
  %result.232 = phi i32 [ %result.139, %for.cond49.preheader ], [ %result.3, %for.inc.for.body57_crit_edge ]
  %DIV.231 = phi i8 [ %DIV.138, %for.cond49.preheader ], [ %DIV.3, %for.inc.for.body57_crit_edge ]
  %P.230 = phi i32 [ %P.137, %for.cond49.preheader ], [ %P.3, %for.inc.for.body57_crit_edge ]
  %Q.229 = phi i8 [ %Q.136, %for.cond49.preheader ], [ %Q.3, %for.inc.for.body57_crit_edge ]
  %div = udiv i32 12000000, %lDiv.034
  %mul = mul i32 %div58, %div
  %sub = sub i32 %mul, %dwFrq
  %22 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub64 = sub i32 %dwFrq, %result.232
  %23 = tail call i32 @llvm.abs.i32(i32 %sub64, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp73 = icmp slt i32 %22, %23
  br i1 %cmp73, label %if.end80, label %for.body57.for.inc_crit_edge

for.body57.for.inc_crit_edge:                     ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end80:                                         ; preds = %for.body57
  %div76 = udiv i32 12000000, %lQ.045
  %mul82 = mul i32 %div76, %lP.040
  %24 = add i32 %mul82, -400000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300000001, i32 %24)
  %25 = icmp ult i32 %24, -300000001
  br i1 %25, label %if.end80.for.inc_crit_edge, label %if.end96

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end96:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %conv97 = trunc i32 %lDiv.034 to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %dwFrq)
  %cmp99 = icmp eq i32 %mul, %dwFrq
  %spec.select = zext i1 %cmp99 to i8
  br label %for.inc

for.inc:                                          ; preds = %if.end96, %if.end80.for.inc_crit_edge, %for.body57.for.inc_crit_edge
  %Q.3 = phi i8 [ %Q.229, %if.end80.for.inc_crit_edge ], [ %Q.229, %for.body57.for.inc_crit_edge ], [ %conv98, %if.end96 ]
  %P.3 = phi i32 [ %P.230, %if.end80.for.inc_crit_edge ], [ %P.230, %for.body57.for.inc_crit_edge ], [ %lP.040, %if.end96 ]
  %DIV.3 = phi i8 [ %DIV.231, %if.end80.for.inc_crit_edge ], [ %DIV.231, %for.body57.for.inc_crit_edge ], [ %conv97, %if.end96 ]
  %result.3 = phi i32 [ %result.232, %if.end80.for.inc_crit_edge ], [ %result.232, %for.body57.for.inc_crit_edge ], [ %mul, %if.end96 ]
  %found.3 = phi i8 [ 0, %if.end80.for.inc_crit_edge ], [ 0, %for.body57.for.inc_crit_edge ], [ %spec.select, %if.end96 ]
  %inc104 = add nuw nsw i32 %lDiv.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %lDiv.034)
  %cmp50 = icmp ult i32 %lDiv.034, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %found.3)
  %tobool53.not = icmp eq i8 %found.3, 0
  %or.cond3 = select i1 %cmp50, i1 %tobool53.not, i1 false
  br i1 %or.cond3, label %for.inc.for.body57_crit_edge, label %for.inc105

for.inc.for.body57_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57

for.inc105:                                       ; preds = %for.inc
  %dec = add nsw i32 %lP.040, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dec)
  %cmp41 = icmp ugt i32 %dec, 7
  %or.cond2 = select i1 %cmp41, i1 %tobool53.not, i1 false
  br i1 %or.cond2, label %for.inc105.for.cond49.preheader_crit_edge, label %for.inc107

for.inc105.for.cond49.preheader_crit_edge:        ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond49.preheader

for.inc107:                                       ; preds = %for.inc105
  %inc108 = add nuw nsw i32 %lQ.045, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %lQ.045)
  %cmp35 = icmp ult i32 %lQ.045, 47
  %or.cond = select i1 %cmp35, i1 %tobool53.not, i1 false
  br i1 %or.cond, label %for.inc107.for.cond40.preheader_crit_edge, label %for.inc107.if.end113_crit_edge

for.inc107.if.end113_crit_edge:                   ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

for.inc107.for.cond40.preheader_crit_edge:        ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond40.preheader

if.end113.critedge:                               ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end113

if.end113:                                        ; preds = %if.end113.critedge, %for.inc107.if.end113_crit_edge, %if.then32, %if.then28, %bulk_immediate.exit.thread, %entry.if.end113_crit_edge
  %XDRV.0 = phi i8 [ 0, %if.then28 ], [ 40, %if.then32 ], [ 0, %entry.if.end113_crit_edge ], [ 0, %bulk_immediate.exit.thread ], [ 0, %if.end113.critedge ], [ 0, %for.inc107.if.end113_crit_edge ]
  %Q.4 = phi i8 [ 5, %if.then28 ], [ 2, %if.then32 ], [ 40, %entry.if.end113_crit_edge ], [ 0, %bulk_immediate.exit.thread ], [ 0, %if.end113.critedge ], [ %Q.3, %for.inc107.if.end113_crit_edge ]
  %P.4 = phi i32 [ 161, %if.then28 ], [ 66, %if.then32 ], [ 1193, %entry.if.end113_crit_edge ], [ 0, %bulk_immediate.exit.thread ], [ 0, %if.end113.critedge ], [ %P.3, %for.inc107.if.end113_crit_edge ]
  %DIV.4 = phi i8 [ 105, %if.then28 ], [ 66, %if.then32 ], [ 100, %entry.if.end113_crit_edge ], [ 0, %bulk_immediate.exit.thread ], [ 0, %if.end113.critedge ], [ %DIV.3, %for.inc107.if.end113_crit_edge ]
  %Count.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.then32 ], [ 0, %entry.if.end113_crit_edge ], [ 4, %bulk_immediate.exit.thread ], [ 4, %if.end113.critedge ], [ 0, %for.inc107.if.end113_crit_edge ]
  %div1161 = lshr i32 %P.4, 1
  %sub117 = add nsw i32 %div1161, -4
  %shr = lshr i32 %sub117, 8
  %conv120 = trunc i32 %sub117 to i8
  %sub125 = add i8 %Q.4, -2
  %buf127 = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %buf127 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf127, align 4
  %inc128 = or i32 %Count.0, 1
  %arrayidx129 = getelementptr i8, ptr %27, i32 %Count.0
  %28 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 76, ptr %arrayidx129, align 1
  %29 = load ptr, ptr %buf127, align 4
  %inc134 = or i32 %Count.0, 2
  %arrayidx135 = getelementptr i8, ptr %29, i32 %inc128
  %30 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -46, ptr %arrayidx135, align 1
  %31 = load ptr, ptr %buf127, align 4
  %inc137 = or i32 %Count.0, 3
  %arrayidx138 = getelementptr i8, ptr %31, i32 %inc134
  %32 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %arrayidx138, align 1
  %33 = load ptr, ptr %buf127, align 4
  %inc140 = add nuw nsw i32 %Count.0, 4
  %arrayidx141 = getelementptr i8, ptr %33, i32 %inc137
  %34 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 32, ptr %arrayidx141, align 1
  %35 = load ptr, ptr %buf127, align 4
  %inc143 = add nuw nsw i32 %Count.0, 5
  %arrayidx144 = getelementptr i8, ptr %35, i32 %inc140
  %36 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 76, ptr %arrayidx144, align 1
  %37 = load ptr, ptr %buf127, align 4
  %inc149 = add nuw nsw i32 %Count.0, 6
  %arrayidx150 = getelementptr i8, ptr %37, i32 %inc143
  %38 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -46, ptr %arrayidx150, align 1
  %39 = load ptr, ptr %buf127, align 4
  %inc152 = add nuw nsw i32 %Count.0, 7
  %arrayidx153 = getelementptr i8, ptr %39, i32 %inc149
  %40 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 12, ptr %arrayidx153, align 1
  %41 = load ptr, ptr %buf127, align 4
  %inc155 = or i32 %Count.0, 8
  %arrayidx156 = getelementptr i8, ptr %41, i32 %inc152
  %42 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %DIV.4, ptr %arrayidx156, align 1
  %43 = load ptr, ptr %buf127, align 4
  %inc158 = or i32 %Count.0, 9
  %arrayidx159 = getelementptr i8, ptr %43, i32 %inc155
  %44 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 76, ptr %arrayidx159, align 1
  %45 = load ptr, ptr %buf127, align 4
  %inc164 = or i32 %Count.0, 10
  %arrayidx165 = getelementptr i8, ptr %45, i32 %inc158
  %46 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -46, ptr %arrayidx165, align 1
  %47 = load ptr, ptr %buf127, align 4
  %inc167 = or i32 %Count.0, 11
  %arrayidx168 = getelementptr i8, ptr %47, i32 %inc164
  %48 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 18, ptr %arrayidx168, align 1
  %49 = load ptr, ptr %buf127, align 4
  %inc170 = add nuw nsw i32 %Count.0, 12
  %arrayidx171 = getelementptr i8, ptr %49, i32 %inc167
  %50 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %XDRV.0, ptr %arrayidx171, align 1
  %51 = load ptr, ptr %buf127, align 4
  %inc173 = add nuw nsw i32 %Count.0, 13
  %arrayidx174 = getelementptr i8, ptr %51, i32 %inc170
  %52 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 76, ptr %arrayidx174, align 1
  %53 = load ptr, ptr %buf127, align 4
  %inc179 = add nuw nsw i32 %Count.0, 14
  %arrayidx180 = getelementptr i8, ptr %53, i32 %inc173
  %54 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -46, ptr %arrayidx180, align 1
  %55 = load ptr, ptr %buf127, align 4
  %inc182 = add nuw nsw i32 %Count.0, 15
  %arrayidx183 = getelementptr i8, ptr %55, i32 %inc179
  %56 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 19, ptr %arrayidx183, align 1
  %57 = load ptr, ptr %buf127, align 4
  %inc185 = or i32 %Count.0, 16
  %arrayidx186 = getelementptr i8, ptr %57, i32 %inc182
  %58 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 107, ptr %arrayidx186, align 1
  %59 = load ptr, ptr %buf127, align 4
  %inc188 = or i32 %Count.0, 17
  %arrayidx189 = getelementptr i8, ptr %59, i32 %inc185
  %60 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 76, ptr %arrayidx189, align 1
  %61 = load ptr, ptr %buf127, align 4
  %inc194 = or i32 %Count.0, 18
  %arrayidx195 = getelementptr i8, ptr %61, i32 %inc188
  %62 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -46, ptr %arrayidx195, align 1
  %63 = load ptr, ptr %buf127, align 4
  %inc197 = or i32 %Count.0, 19
  %arrayidx198 = getelementptr i8, ptr %63, i32 %inc194
  %64 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 64, ptr %arrayidx198, align 1
  %65 = trunc i32 %shr to i8
  %66 = and i8 %65, 3
  %conv205 = or i8 %66, -48
  %67 = load ptr, ptr %buf127, align 4
  %inc207 = add nuw nsw i32 %Count.0, 20
  %arrayidx208 = getelementptr i8, ptr %67, i32 %inc197
  %68 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv205, ptr %arrayidx208, align 1
  %69 = load ptr, ptr %buf127, align 4
  %inc210 = add nuw nsw i32 %Count.0, 21
  %arrayidx211 = getelementptr i8, ptr %69, i32 %inc207
  %70 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 76, ptr %arrayidx211, align 1
  %71 = load ptr, ptr %buf127, align 4
  %inc216 = add nuw nsw i32 %Count.0, 22
  %arrayidx217 = getelementptr i8, ptr %71, i32 %inc210
  %72 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -46, ptr %arrayidx217, align 1
  %73 = load ptr, ptr %buf127, align 4
  %inc219 = add nuw nsw i32 %Count.0, 23
  %arrayidx220 = getelementptr i8, ptr %73, i32 %inc216
  %74 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 65, ptr %arrayidx220, align 1
  %75 = load ptr, ptr %buf127, align 4
  %inc222 = or i32 %Count.0, 24
  %arrayidx223 = getelementptr i8, ptr %75, i32 %inc219
  %76 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv120, ptr %arrayidx223, align 1
  %77 = load ptr, ptr %buf127, align 4
  %inc225 = or i32 %Count.0, 25
  %arrayidx226 = getelementptr i8, ptr %77, i32 %inc222
  %78 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 76, ptr %arrayidx226, align 1
  %79 = load ptr, ptr %buf127, align 4
  %inc231 = or i32 %Count.0, 26
  %arrayidx232 = getelementptr i8, ptr %79, i32 %inc225
  %80 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -46, ptr %arrayidx232, align 1
  %81 = load ptr, ptr %buf127, align 4
  %inc234 = or i32 %Count.0, 27
  %arrayidx235 = getelementptr i8, ptr %81, i32 %inc231
  %82 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 66, ptr %arrayidx235, align 1
  %83 = lshr i32 %P.4, 3
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, -128
  %conv241 = or i8 %85, %sub125
  %86 = load ptr, ptr %buf127, align 4
  %inc243 = add nuw nsw i32 %Count.0, 28
  %arrayidx244 = getelementptr i8, ptr %86, i32 %inc234
  %87 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv241, ptr %arrayidx244, align 1
  %88 = load ptr, ptr %buf127, align 4
  %inc246 = add nuw nsw i32 %Count.0, 29
  %arrayidx247 = getelementptr i8, ptr %88, i32 %inc243
  %89 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 76, ptr %arrayidx247, align 1
  %90 = load ptr, ptr %buf127, align 4
  %inc252 = add nuw nsw i32 %Count.0, 30
  %arrayidx253 = getelementptr i8, ptr %90, i32 %inc246
  %91 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -46, ptr %arrayidx253, align 1
  %92 = load ptr, ptr %buf127, align 4
  %inc255 = add nuw nsw i32 %Count.0, 31
  %arrayidx256 = getelementptr i8, ptr %92, i32 %inc252
  %93 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 68, ptr %arrayidx256, align 1
  %94 = load ptr, ptr %buf127, align 4
  %inc258 = or i32 %Count.0, 32
  %arrayidx259 = getelementptr i8, ptr %94, i32 %inc255
  %95 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %arrayidx259, align 1
  %96 = load ptr, ptr %buf127, align 4
  %inc261 = or i32 %Count.0, 33
  %arrayidx262 = getelementptr i8, ptr %96, i32 %inc258
  %97 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 76, ptr %arrayidx262, align 1
  %98 = load ptr, ptr %buf127, align 4
  %inc267 = or i32 %Count.0, 34
  %arrayidx268 = getelementptr i8, ptr %98, i32 %inc261
  %99 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -46, ptr %arrayidx268, align 1
  %100 = load ptr, ptr %buf127, align 4
  %inc270 = or i32 %Count.0, 35
  %arrayidx271 = getelementptr i8, ptr %100, i32 %inc267
  %101 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 69, ptr %arrayidx271, align 1
  %102 = load ptr, ptr %buf127, align 4
  %inc273 = add nuw nsw i32 %Count.0, 36
  %arrayidx274 = getelementptr i8, ptr %102, i32 %inc270
  %103 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -2, ptr %arrayidx274, align 1
  %104 = load ptr, ptr %buf127, align 4
  %inc276 = add nuw nsw i32 %Count.0, 37
  %arrayidx277 = getelementptr i8, ptr %104, i32 %inc273
  %105 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 76, ptr %arrayidx277, align 1
  %106 = load ptr, ptr %buf127, align 4
  %inc282 = add nuw nsw i32 %Count.0, 38
  %arrayidx283 = getelementptr i8, ptr %106, i32 %inc276
  %107 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -46, ptr %arrayidx283, align 1
  %108 = load ptr, ptr %buf127, align 4
  %inc285 = add nuw nsw i32 %Count.0, 39
  %arrayidx286 = getelementptr i8, ptr %108, i32 %inc282
  %109 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 70, ptr %arrayidx286, align 1
  %110 = load ptr, ptr %buf127, align 4
  %inc288 = or i32 %Count.0, 40
  %arrayidx289 = getelementptr i8, ptr %110, i32 %inc285
  %111 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 127, ptr %arrayidx289, align 1
  %112 = load ptr, ptr %buf127, align 4
  %inc291 = or i32 %Count.0, 41
  %arrayidx292 = getelementptr i8, ptr %112, i32 %inc288
  %113 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 76, ptr %arrayidx292, align 1
  %114 = load ptr, ptr %buf127, align 4
  %inc297 = or i32 %Count.0, 42
  %arrayidx298 = getelementptr i8, ptr %114, i32 %inc291
  %115 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -46, ptr %arrayidx298, align 1
  %116 = load ptr, ptr %buf127, align 4
  %inc300 = or i32 %Count.0, 43
  %arrayidx301 = getelementptr i8, ptr %116, i32 %inc297
  %117 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 71, ptr %arrayidx301, align 1
  %118 = load ptr, ptr %buf127, align 4
  %arrayidx304 = getelementptr i8, ptr %118, i32 %inc300
  %119 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -124, ptr %arrayidx304, align 1
  %120 = load ptr, ptr %buf127, align 4
  %conv306 = add nuw nsw i32 %Count.0, 44
  %121 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i9) #10
  %123 = ptrtoint ptr %actual.i9 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %actual.i9, align 4
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %122, align 4
  %bulk_out_endpointAddress.i10 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %126 = ptrtoint ptr %bulk_out_endpointAddress.i10 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bulk_out_endpointAddress.i10, align 4
  %conv.i11 = zext i8 %127 to i32
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %125, align 8
  %shl.i.i12 = shl i32 %129, 8
  %shl1.i.i13 = shl nuw nsw i32 %conv.i11, 15
  %or.i.i14 = or i32 %shl.i.i12, %shl1.i.i13
  %or.i15 = or i32 %or.i.i14, -1073741824
  %call4.i16 = call i32 @usb_bulk_msg(ptr noundef %125, i32 noundef %or.i15, ptr noundef %120, i32 noundef %conv306, ptr noundef nonnull %actual.i9, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i16)
  %cmp.not.i17 = icmp eq i32 %call4.i16, 0
  br i1 %cmp.not.i17, label %do.body11.i21, label %do.body.i18

do.body.i18:                                      ; preds = %if.end113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_clk, %bulk_immediate.exit24.thread27)) #10
          to label %do.body311.critedge [label %bulk_immediate.exit24.thread27], !srcloc !224

bulk_immediate.exit24.thread27:                   ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i19 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i19, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i9) #10
  br label %do.body311

do.body11.i21:                                    ; preds = %if.end113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_clk, %bulk_immediate.exit24.thread)) #10
          to label %cleanup.critedge [label %bulk_immediate.exit24.thread], !srcloc !224

bulk_immediate.exit24.thread:                     ; preds = %do.body11.i21
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i22 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i22, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i9) #10
  br label %cleanup

do.body311.critedge:                              ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i9) #10
  br label %do.body311

do.body311:                                       ; preds = %do.body311.critedge, %bulk_immediate.exit24.thread27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_clk.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_clk, %if.then323)) #10
          to label %cleanup [label %if.then323], !srcloc !224

if.then323:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  %dev324 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_clk.__UNIQUE_ID_ddebug251, ptr noundef %dev324, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %do.body11.i21
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i9) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then323, %do.body311, %bulk_immediate.exit24.thread, %if.then20, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iuu_uart_baud(ptr noundef %port, i32 noundef %baud_base, ptr nocapture noundef writeonly %actual, i8 noundef zeroext %parity) unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_baud.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_baud, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_baud.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %baud_base) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 5) #13
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %1 = add i32 %baud_base, -230401
  call void @__sanitizer_cov_trace_const_cmp4(i32 -229201, i32 %1)
  %2 = icmp ult i32 %1, -229201
  br i1 %2, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3906, i32 %baud_base)
  %cmp13 = icmp ugt i32 %baud_base, 3906
  %spec.select = select i1 %cmp13, i8 2, i8 3
  %spec.select143 = select i1 %cmp13, i32 2000000, i32 500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 11718, i32 %baud_base)
  %cmp16 = icmp ugt i32 %baud_base, 11718
  %T1Frekvens.2 = select i1 %cmp16, i8 1, i8 %spec.select
  %T1FrekvensHZ.2 = select i1 %cmp16, i32 6000000, i32 %spec.select143
  call void @__sanitizer_cov_trace_const_cmp4(i32 46875, i32 %baud_base)
  %cmp19 = icmp ugt i32 %baud_base, 46875
  %T1Frekvens.3 = select i1 %cmp19, i8 0, i8 %T1Frekvens.2
  %T1FrekvensHZ.3 = select i1 %cmp19, i32 24000000, i32 %T1FrekvensHZ.2
  %mul = shl nuw nsw i32 %baud_base, 1
  %div = udiv i32 %T1FrekvensHZ.3, %mul
  %3 = trunc i32 %div to i8
  %conv23 = sub i8 0, %3
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 94, ptr %call7.i, align 8
  %arrayidx26 = getelementptr i8, ptr %call7.i, i32 1
  %5 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx26, align 1
  %arrayidx29 = getelementptr i8, ptr %call7.i, i32 2
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %T1Frekvens.3, ptr %arrayidx29, align 2
  %arrayidx32 = getelementptr i8, ptr %call7.i, i32 3
  %7 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv23, ptr %arrayidx32, align 1
  %conv33 = zext i8 %conv23 to i32
  %sub34 = sub nuw nsw i32 256, %conv33
  %div35 = udiv i32 %T1FrekvensHZ.3, %sub34
  %div36142 = lshr i32 %div35, 1
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div36142, ptr %actual, align 4
  %9 = and i8 %parity, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %10 = icmp ult i8 %9, 5
  br i1 %10, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end12
  %arrayidx56 = getelementptr i8, ptr %call7.i, i32 4
  %11 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %arrayidx56, align 4
  %and58 = and i8 %parity, -16
  %12 = zext i8 %and58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %and58, label %sw.default72 [
    i8 32, label %sw.bb59
    i8 0, label %switch.lookup.sw.epilog73_crit_edge
  ]

switch.lookup.sw.epilog73_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog73

sw.bb59:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx62 = getelementptr i8, ptr %call7.i, i32 4
  %13 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx62, align 4
  %15 = or i8 %14, 32
  store i8 %15, ptr %arrayidx62, align 4
  br label %sw.epilog73

sw.default72:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

sw.epilog73:                                      ; preds = %sw.bb59, %switch.lookup.sw.epilog73_crit_edge
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %18 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %actual.i, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %21 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %shl.i.i = shl i32 %24, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %20, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 5, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_baud, %bulk_immediate.exit.thread148)) #10
          to label %do.body78.critedge [label %bulk_immediate.exit.thread148], !srcloc !224

bulk_immediate.exit.thread148:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body78

do.body11.i:                                      ; preds = %sw.epilog73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_baud, %bulk_immediate.exit.thread)) #10
          to label %if.end95.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end95

do.body78.critedge:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body78

do.body78:                                        ; preds = %do.body78.critedge, %bulk_immediate.exit.thread148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_baud.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_baud, %if.then90)) #10
          to label %if.end95 [label %if.then90], !srcloc !224

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %dev91 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_baud.__UNIQUE_ID_ddebug270, ptr noundef %dev91, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #10
  br label %if.end95

if.end95.critedge:                                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end95

if.end95:                                         ; preds = %if.end95.critedge, %if.then90, %do.body78, %bulk_immediate.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %sw.default72, %sw.default, %if.then8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then8 ], [ 3, %sw.default ], [ 3, %sw.default72 ], [ %call4.i, %if.end95 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iuu_uart_flush(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %actual.i143 = alloca i32, align 4
  %actual.i136 = alloca i32, align 4
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @iuu_led(ptr noundef %port, i32 noundef 61440, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 86, ptr %call7.i, align 8
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %len = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 8
  %bulk_in_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 15
  %buf = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %cmp6 = phi i1 [ true, %if.end5 ], [ false, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %6 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %actual.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %9 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %12, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %8, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 1, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %bulk_immediate.exit.thread159)) #10
          to label %do.body.critedge [label %bulk_immediate.exit.thread159], !srcloc !224

bulk_immediate.exit.thread159:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body11.i:                                      ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %bulk_immediate.exit.thread)) #10
          to label %if.end16.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end16

do.body.critedge:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %bulk_immediate.exit.thread159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_flush.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %if.then14)) #10
          to label %out_free [label %if.then14], !srcloc !224

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_flush.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #10
  br label %out_free

if.end16.critedge:                                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end16.critedge, %bulk_immediate.exit.thread
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i136) #10
  %15 = ptrtoint ptr %actual.i136 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %actual.i136, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 4
  %18 = ptrtoint ptr %bulk_in_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bulk_in_endpointAddress.i, align 8
  %conv.i137 = zext i8 %19 to i32
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i.i138 = shl i32 %21, 8
  %shl1.i.i139 = shl nuw nsw i32 %conv.i137, 15
  %or.i.i140 = or i32 %shl.i.i138, %shl1.i.i139
  %or3.i = or i32 %or.i.i140, -1073741696
  %call5.i = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or3.i, ptr noundef %len, i32 noundef 1, ptr noundef nonnull %actual.i136, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i141 = icmp eq i32 %call5.i, 0
  br i1 %cmp.not.i141, label %do.body12.i, label %do.body.i142

do.body.i142:                                     ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_immediate.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %read_immediate.exit.thread161)) #10
          to label %do.body20.critedge [label %read_immediate.exit.thread161], !srcloc !224

read_immediate.exit.thread161:                    ; preds = %do.body.i142
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_immediate.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.41, i32 noundef %call5.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i136) #10
  br label %do.body20

do.body12.i:                                      ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_immediate.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %read_immediate.exit.thread)) #10
          to label %if.end36.critedge [label %read_immediate.exit.thread], !srcloc !224

read_immediate.exit.thread:                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_immediate.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i136) #10
  br label %if.end36

do.body20.critedge:                               ; preds = %do.body.i142
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i136) #10
  br label %do.body20

do.body20:                                        ; preds = %do.body20.critedge, %read_immediate.exit.thread161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_flush.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %if.then32)) #10
          to label %out_free [label %if.then32], !srcloc !224

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_flush.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #10
  br label %out_free

if.end36.critedge:                                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i136) #10
  br label %if.end36

if.end36:                                         ; preds = %if.end36.critedge, %read_immediate.exit.thread
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp38.not = icmp eq i8 %23, 0
  br i1 %cmp38.not, label %if.end36.for.inc_crit_edge, label %do.body41

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body41:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_flush.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %if.then53)) #10
          to label %do.end58 [label %if.then53], !srcloc !224

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %len, align 4
  %conv55 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_flush.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %conv55) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body41
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len, align 4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i143) #10
  %32 = ptrtoint ptr %actual.i143 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %actual.i143, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %31, align 4
  %35 = ptrtoint ptr %bulk_in_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bulk_in_endpointAddress.i, align 8
  %conv.i145 = zext i8 %36 to i32
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 8
  %shl.i.i146 = shl i32 %38, 8
  %shl1.i.i147 = shl nuw nsw i32 %conv.i145, 15
  %or.i.i148 = or i32 %shl.i.i146, %shl1.i.i147
  %or3.i149 = or i32 %or.i.i148, -1073741696
  %conv4.i = zext i8 %29 to i32
  %call5.i150 = call i32 @usb_bulk_msg(ptr noundef %34, i32 noundef %or3.i149, ptr noundef %27, i32 noundef %conv4.i, ptr noundef nonnull %actual.i143, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i150)
  %cmp.not.i151 = icmp eq i32 %call5.i150, 0
  br i1 %cmp.not.i151, label %do.body12.i155, label %do.body.i152

do.body.i152:                                     ; preds = %do.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_immediate.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %read_immediate.exit158.thread164)) #10
          to label %do.body64.critedge [label %read_immediate.exit158.thread164], !srcloc !224

read_immediate.exit158.thread164:                 ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_immediate.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.41, i32 noundef %call5.i150) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i143) #10
  br label %do.body64

do.body12.i155:                                   ; preds = %do.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_immediate.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %read_immediate.exit158.thread)) #10
          to label %for.inc.critedge [label %read_immediate.exit158.thread], !srcloc !224

read_immediate.exit158.thread:                    ; preds = %do.body12.i155
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_immediate.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i143) #10
  br label %for.inc

do.body64.critedge:                               ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i143) #10
  br label %do.body64

do.body64:                                        ; preds = %do.body64.critedge, %read_immediate.exit158.thread164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_flush.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %if.then76)) #10
          to label %out_free [label %if.then76], !srcloc !224

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_flush.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #10
  br label %out_free

for.inc.critedge:                                 ; preds = %do.body12.i155
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i143) #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.critedge, %read_immediate.exit158.thread, %if.end36.for.inc_crit_edge
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %do.body82

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body82:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_flush.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_flush, %if.then94)) #10
          to label %do.end97 [label %if.then94], !srcloc !224

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_flush.__UNIQUE_ID_ddebug256, ptr noundef %dev1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %do.body82
  %39 = call fastcc i32 @iuu_led(ptr noundef %port, i32 noundef 0, i32 noundef 61440, i32 noundef 0)
  br label %out_free

out_free:                                         ; preds = %do.end97, %if.then76, %do.body64, %if.then32, %do.body20, %if.then14, %do.body
  %status.2 = phi i32 [ %call4.i, %if.then14 ], [ %call5.i, %if.then32 ], [ %call5.i150, %if.then76 ], [ 0, %do.end97 ], [ %call4.i, %do.body ], [ %call5.i, %do.body20 ], [ %call5.i150, %do.body64 ]
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %out_free ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_rxcmd_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_urb, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bulk_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bulk_in_endpointAddress, align 8
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or4 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or4, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iuu_uart_read_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %18 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %context4.i, align 4
  %19 = load ptr, ptr %read_urb, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 2592) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_rxcmd_callback.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_rxcmd_callback, %if.then12)) #10
          to label %cleanup [label %if.then12], !srcloc !224

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_rxcmd_callback.__UNIQUE_ID_ddebug265, ptr noundef %dev13, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_uart_off(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 74, ptr %call7.i, align 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %4 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %7 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %10, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %6, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 1, ptr noundef nonnull %actual.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %do.body11.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_off, %bulk_immediate.exit.thread1)) #10
          to label %do.body.critedge [label %bulk_immediate.exit.thread1], !srcloc !224

bulk_immediate.exit.thread1:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug244, ptr noundef %dev10.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body11.i:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bulk_immediate.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_off, %bulk_immediate.exit.thread)) #10
          to label %if.end9.critedge [label %bulk_immediate.exit.thread], !srcloc !224

bulk_immediate.exit.thread:                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bulk_immediate.__UNIQUE_ID_ddebug245, ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end9

do.body.critedge:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %bulk_immediate.exit.thread1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_uart_off.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_uart_off, %if.then7)) #10
          to label %if.end9 [label %if.then7], !srcloc !224

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_uart_off.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.45) #10
  br label %if.end9

if.end9.critedge:                                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge, %if.then7, %do.body, %bulk_immediate.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_reset(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %2 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %incdec.ptr = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 82, ptr %5, align 1
  %incdec.ptr1 = getelementptr i8, ptr %5, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %incdec.ptr, align 1
  %incdec.ptr2 = getelementptr i8, ptr %5, i32 3
  %8 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %incdec.ptr1, align 1
  %9 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 83, ptr %incdec.ptr2, align 1
  %10 = load ptr, ptr %write_urb, align 8
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %15 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %shl.i = shl i32 %18, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %20 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @iuu_rxcmd, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %23 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %port, ptr %context4.i, align 4
  %24 = load ptr, ptr %write_urb, align 8
  %call10 = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 2592) #10
  %reset = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %reset, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_bulk_write(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %2 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %incdec.ptr = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 94, ptr %5, align 1
  %incdec.ptr6 = getelementptr i8, ptr %5, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %incdec.ptr, align 1
  %writelen = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %writelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writelen, align 4
  %conv7 = trunc i32 %9 to i8
  %incdec.ptr8 = getelementptr i8, ptr %5, i32 3
  %10 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %incdec.ptr6, align 1
  %writebuf = getelementptr inbounds %struct.iuu_private, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %writebuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %writebuf, align 4
  %13 = load i32, ptr %writelen, align 4
  %14 = call ptr @memcpy(ptr %incdec.ptr8, ptr %12, i32 %13)
  %15 = load i32, ptr %writelen, align 4
  store i32 0, ptr %writelen, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_bulk_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_bulk_write, %if.then)) #10
          to label %do.end19 [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_bulk_write.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %15, i32 noundef %15, ptr noundef %incdec.ptr8) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then, %entry
  %16 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_urb, align 8
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %22 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv24 = zext i8 %23 to i32
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 8
  %shl.i = shl i32 %25, 8
  %shl1.i = shl nuw nsw i32 %conv24, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %add = add i32 %15, 3
  %dev1.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @iuu_rxcmd, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %port, ptr %context4.i, align 4
  %31 = load ptr, ptr %write_urb, align 8
  %call29 = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 2592) #10
  tail call void @usb_serial_port_softint(ptr noundef %port) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iuu_led_activity_off(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @xmas, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %status1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %3 = ptrtoint ptr %status1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_rxcmd.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_led_activity_off, %if.then5.i)) #10
          to label %cleanup [label %if.then5.i], !srcloc !224

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_rxcmd.__UNIQUE_ID_ddebug240, ptr noundef %dev.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.58, i32 noundef %4) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %write_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 21
  %5 = ptrtoint ptr %write_urb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 86, ptr %8, align 1
  %10 = load ptr, ptr %write_urb.i, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 26
  %15 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %18, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %20 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @read_rxcmd_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %23 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %2, ptr %context4.i.i, align 4
  %24 = load ptr, ptr %write_urb.i, align 8
  %call15.i = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 2592) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 21
  %25 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer, align 4
  %incdec.ptr.i = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %28, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %28, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %incdec.ptr.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %28, i32 3
  %31 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %incdec.ptr1.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %28, i32 4
  %32 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %28, i32 5
  %33 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %28, i32 6
  %34 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %incdec.ptr6.i = getelementptr i8, ptr %28, i32 7
  %35 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %36 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %incdec.ptr6.i, align 1
  %37 = load ptr, ptr %write_urb, align 8
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 26
  %42 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %43 to i32
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 8
  %shl.i = shl i32 %45, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i17 = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i17, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %41, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 19
  %48 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 28
  %49 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @iuu_rxcmd, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 27
  %50 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %2, ptr %context4.i, align 4
  %51 = load ptr, ptr %write_urb, align 8
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %51, i32 noundef 2592) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.i, %if.then5.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_buf_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_buf_callback.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_buf_callback, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !224

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_buf_callback.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %actual_length9 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.end.if.end16_crit_edge, label %if.then11

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %port12 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port12, ptr noundef %3, i8 noundef zeroext 0, i32 noundef %9) #10
  tail call void @tty_flip_buffer_push(ptr noundef %port12) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.end.if.end16_crit_edge
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %write_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %write_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer.i, align 4
  %16 = load i8, ptr @xmas, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %15, align 1
  %add.ptr.i = getelementptr i8, ptr %15, i32 1
  tail call void @get_random_bytes(ptr noundef %add.ptr.i, i32 noundef 6) #10
  br label %iuu_led_activity_on.exit

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i = getelementptr i8, ptr %15, i32 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %15, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %15, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr2.i.i = getelementptr i8, ptr %15, i32 3
  %20 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %incdec.ptr1.i.i, align 1
  %21 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %incdec.ptr2.i.i, align 1
  br label %iuu_led_activity_on.exit

iuu_led_activity_on.exit:                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ -1, %if.else.i ], [ 1, %if.then.i ]
  %22 = getelementptr i8, ptr %15, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i, ptr %22, align 1
  %24 = ptrtoint ptr %write_urb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_urb.i, align 8
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 26
  %30 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 8
  %shl.i.i = shl i32 %33, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 8
  %34 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %35 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %36 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  %37 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @iuu_rxcmd, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 27
  %38 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %11, ptr %context4.i.i, align 4
  %39 = load ptr, ptr %write_urb.i, align 8
  %call8.i = tail call i32 @usb_submit_urb(ptr noundef %39, i32 noundef 2592) #10
  br label %cleanup

cleanup:                                          ; preds = %iuu_led_activity_on.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_rxcmd(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_rxcmd.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_rxcmd, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_rxcmd.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.58, i32 noundef %3) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 86, ptr %7, align 1
  %9 = load ptr, ptr %write_urb, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %shl.i = shl i32 %17, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 10
  %19 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @read_rxcmd_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %context4.i, align 4
  %23 = load ptr, ptr %write_urb, align 8
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_status_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_status_callback.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_status_callback, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_status_callback.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.59, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_urb, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bulk_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bulk_in_endpointAddress, align 8
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or8 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or8, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iuu_update_status_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %18 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %context4.i, align 4
  %19 = load ptr, ptr %read_urb, align 4
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 2592) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iuu_update_status_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_update_status_callback.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_update_status_callback, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !224

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_update_status_callback.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.60, i32 noundef %5) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_update_status_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_update_status_callback, %if.then20)) #10
          to label %do.end24 [label %if.then20], !srcloc !224

if.then20:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_update_status_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev21, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.end7
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then25, label %do.end24.if.end29_crit_edge

do.end24.if.end29_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %switch.selectcmp47 = icmp eq i8 %11, 1
  %iuu_cardout.val = load i32, ptr @iuu_cardout, align 4
  %iuu_cardin.val = load i32, ptr @iuu_cardin, align 4
  %12 = select i1 %switch.selectcmp47, i32 %iuu_cardout.val, i32 %iuu_cardin.val
  %tiostatus = getelementptr inbounds %struct.iuu_private, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %tiostatus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tiostatus, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %do.end24.if.end29_crit_edge
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context, align 4
  %16 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iuu_rxcmd.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iuu_update_status_callback, %if.then5.i)) #10
          to label %cleanup [label %if.then5.i], !srcloc !224

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iuu_rxcmd.__UNIQUE_ID_ddebug240, ptr noundef %dev.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.58, i32 noundef %17) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %write_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 21
  %18 = ptrtoint ptr %write_urb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 86, ptr %21, align 1
  %23 = load ptr, ptr %write_urb.i, align 8
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 26
  %28 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 8
  %shl.i.i = shl i32 %31, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  %32 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %27, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 10
  %33 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 28
  %35 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @read_rxcmd_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 27
  %36 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %15, ptr %context4.i.i, align 4
  %37 = load ptr, ptr %write_urb.i, align 8
  %call15.i = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !125, !127, !129, !131, !132, !133, !135, !136, !138, !139, !141, !143, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !202, !203, !205, !206, !208, !209, !211, !212}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__initcall__kmod_iuu_phoenix__279_1184_usb_serial_module_init6, !1, !"__initcall__kmod_iuu_phoenix__279_1184_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1184, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author280, !4, !"__UNIQUE_ID_author280", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1186, i32 1}
!5 = !{ptr @__UNIQUE_ID_description281, !6, !"__UNIQUE_ID_description281", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1188, i32 1}
!7 = !{ptr @__UNIQUE_ID_file282, !8, !"__UNIQUE_ID_file282", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1189, i32 1}
!9 = !{ptr @__UNIQUE_ID_license283, !8, !"__UNIQUE_ID_license283", i1 false, i1 false}
!10 = !{ptr @__param_xmas, !11, !"__param_xmas", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1191, i32 1}
!12 = !{ptr @__UNIQUE_ID_xmastype284, !11, !"__UNIQUE_ID_xmastype284", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_xmas285, !14, !"__UNIQUE_ID_xmas285", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1192, i32 1}
!15 = !{ptr @__param_boost, !16, !"__param_boost", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1194, i32 1}
!17 = !{ptr @__UNIQUE_ID_boosttype286, !16, !"__UNIQUE_ID_boosttype286", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_boost287, !19, !"__UNIQUE_ID_boost287", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1195, i32 1}
!20 = !{ptr @__param_clockmode, !21, !"__param_clockmode", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1197, i32 1}
!22 = !{ptr @__UNIQUE_ID_clockmodetype288, !21, !"__UNIQUE_ID_clockmodetype288", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_clockmode289, !24, !"__UNIQUE_ID_clockmode289", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1198, i32 1}
!25 = !{ptr @__param_cdmode, !26, !"__param_cdmode", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1201, i32 1}
!27 = !{ptr @__UNIQUE_ID_cdmodetype290, !26, !"__UNIQUE_ID_cdmodetype290", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_cdmode291, !29, !"__UNIQUE_ID_cdmode291", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1202, i32 1}
!30 = !{ptr @__param_vcc_default, !31, !"__param_vcc_default", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1205, i32 1}
!32 = !{ptr @__UNIQUE_ID_vcc_defaulttype292, !31, !"__UNIQUE_ID_vcc_defaulttype292", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_vcc_default293, !34, !"__UNIQUE_ID_vcc_default293", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1206, i32 1}
!35 = !{ptr @xmas, !36, !"xmas", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 43, i32 13}
!37 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @id_table, !39, !"id_table", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 31, i32 35}
!40 = !{ptr @serial_drivers, !41, !"serial_drivers", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1180, i32 41}
!42 = !{ptr @iuu_device, !43, !"iuu_device", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1157, i32 33}
!44 = !{ptr @iuu_port_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 88, i32 2}
!46 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1140, i32 8}
!49 = !{ptr @dev_attr_vcc_mode, !48, !"dev_attr_vcc_mode", i1 false, i1 false}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1113, i32 22}
!52 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1124, i32 3}
!54 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vcc_mode_store._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @vcc_mode_store._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1129, i32 2}
!62 = !{ptr @vcc_mode_store.__UNIQUE_ID_ddebug278, !61, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1132, i32 3}
!65 = !{ptr @vcc_mode_store._entry.10, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vcc_mode_store._entry_ptr.12, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1096, i32 3}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @iuu_vcc_set.__UNIQUE_ID_ddebug276, !68, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1098, i32 3}
!73 = !{ptr @iuu_vcc_set.__UNIQUE_ID_ddebug277, !72, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 282, i32 3}
!76 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bulk_immediate.__UNIQUE_ID_ddebug244, !75, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 284, i32 3}
!80 = !{ptr @bulk_immediate.__UNIQUE_ID_ddebug245, !79, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 968, i32 2}
!83 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @iuu_open.__UNIQUE_ID_ddebug272, !82, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 985, i32 2}
!87 = !{ptr @iuu_open.__UNIQUE_ID_ddebug273, !86, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1057, i32 2}
!90 = !{ptr @iuu_open.__UNIQUE_ID_ddebug274, !89, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1067, i32 3}
!93 = !{ptr @iuu_open._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @iuu_open._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 1070, i32 3}
!97 = !{ptr @iuu_open.__UNIQUE_ID_ddebug275, !96, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!98 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 328, i32 3}
!100 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iuu_led.__UNIQUE_ID_ddebug248, !99, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!102 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 330, i32 3}
!104 = !{ptr @iuu_led.__UNIQUE_ID_ddebug249, !103, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 756, i32 3}
!107 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @iuu_uart_on.__UNIQUE_ID_ddebug266, !106, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 762, i32 3}
!111 = !{ptr @iuu_uart_on.__UNIQUE_ID_ddebug267, !110, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 416, i32 4}
!114 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @iuu_clk.__UNIQUE_ID_ddebug250, !113, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!116 = !{ptr @iuu_clk.__UNIQUE_ID_ddebug251, !117, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!117 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 524, i32 3}
!118 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 797, i32 2}
!120 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @iuu_uart_baud.__UNIQUE_ID_ddebug269, !119, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!122 = !{ptr @.str.35, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 876, i32 3}
!124 = !{ptr @iuu_uart_baud.__UNIQUE_ID_ddebug270, !123, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!125 = !{ptr @iuu_cardin, !126, !"iuu_cardin", i1 false, i1 false}
!126 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 41, i32 12}
!127 = !{ptr @iuu_cardout, !128, !"iuu_cardout", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 42, i32 12}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 548, i32 4}
!131 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @iuu_uart_flush.__UNIQUE_ID_ddebug252, !130, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!133 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 554, i32 4}
!135 = !{ptr @iuu_uart_flush.__UNIQUE_ID_ddebug253, !134, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!136 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 559, i32 4}
!138 = !{ptr @iuu_uart_flush.__UNIQUE_ID_ddebug254, !137, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!139 = !{ptr @iuu_uart_flush.__UNIQUE_ID_ddebug255, !140, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 562, i32 5}
!141 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 567, i32 2}
!143 = !{ptr @iuu_uart_flush.__UNIQUE_ID_ddebug256, !142, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!144 = !{ptr @.str.41, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 302, i32 3}
!146 = !{ptr @read_immediate.__UNIQUE_ID_ddebug246, !145, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!147 = !{ptr @.str.42, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 304, i32 3}
!149 = !{ptr @read_immediate.__UNIQUE_ID_ddebug247, !148, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!150 = !{ptr @.str.43, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 736, i32 2}
!152 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @read_rxcmd_callback.__UNIQUE_ID_ddebug265, !151, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!154 = !{ptr @.str.45, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 780, i32 3}
!156 = !{ptr @iuu_uart_off.__UNIQUE_ID_ddebug268, !155, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 897, i32 2}
!159 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @iuu_set_termios.__UNIQUE_ID_ddebug271, !158, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!161 = !{ptr @.str.48, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 121, i32 2}
!163 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @iuu_tiocmset.__UNIQUE_ID_ddebug238, !162, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!165 = !{ptr @.str.50, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 127, i32 3}
!167 = !{ptr @iuu_tiocmset.__UNIQUE_ID_ddebug239, !166, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!168 = !{ptr @.str.51, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 651, i32 3}
!170 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug259, !169, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 660, i32 3}
!174 = !{ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug260, !173, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!175 = !{ptr @.str.54, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 667, i32 3}
!177 = !{ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug261, !176, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!178 = !{ptr @.str.55, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 694, i32 2}
!180 = !{ptr @iuu_uart_read_callback.__UNIQUE_ID_ddebug262, !179, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!181 = !{ptr @.str.56, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 589, i32 2}
!183 = !{ptr @.str.57, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @read_buf_callback.__UNIQUE_ID_ddebug257, !182, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!185 = !{ptr @.str.58, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 162, i32 3}
!187 = !{ptr @iuu_rxcmd.__UNIQUE_ID_ddebug240, !186, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!188 = !{ptr @.str.59, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 243, i32 2}
!190 = !{ptr @iuu_status_callback.__UNIQUE_ID_ddebug243, !189, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!191 = !{ptr @.str.60, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 216, i32 3}
!193 = !{ptr @iuu_update_status_callback.__UNIQUE_ID_ddebug241, !192, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!194 = !{ptr @.str.61, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 222, i32 2}
!196 = !{ptr @iuu_update_status_callback.__UNIQUE_ID_ddebug242, !195, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!197 = !{ptr @.str.62, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 615, i32 2}
!199 = !{ptr @.str.63, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @iuu_bulk_write.__UNIQUE_ID_ddebug258, !198, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!201 = !{ptr @__param_str_xmas, !11, !"__param_str_xmas", i1 false, i1 false}
!202 = !{ptr @__param_str_boost, !16, !"__param_str_boost", i1 false, i1 false}
!203 = !{ptr @boost, !204, !"boost", i1 false, i1 false}
!204 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 38, i32 12}
!205 = !{ptr @__param_str_clockmode, !21, !"__param_str_clockmode", i1 false, i1 false}
!206 = !{ptr @clockmode, !207, !"clockmode", i1 false, i1 false}
!207 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 39, i32 12}
!208 = !{ptr @__param_str_cdmode, !26, !"__param_str_cdmode", i1 false, i1 false}
!209 = !{ptr @cdmode, !210, !"cdmode", i1 false, i1 false}
!210 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 40, i32 12}
!211 = !{ptr @__param_str_vcc_default, !31, !"__param_str_vcc_default", i1 false, i1 false}
!212 = !{ptr @vcc_default, !213, !"vcc_default", i1 false, i1 false}
!213 = !{!"../drivers/usb/serial/iuu_phoenix.c", i32 44, i32 12}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"auto-init"}
!224 = !{i64 2148719689, i64 2148719694, i64 2148719707, i64 2148719751, i64 2148719785, i64 2148719806}
!225 = !{i8 0, i8 2}
