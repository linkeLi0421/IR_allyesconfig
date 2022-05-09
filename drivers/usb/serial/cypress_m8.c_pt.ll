; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/cypress_m8.c_pt.bc'
source_filename = "../drivers/usb/serial/cypress_m8.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cypress_private = type { %struct.spinlock, i32, i32, i32, i32, i32, %struct.kfifo, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_cypress_m8__270_1196_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @cypress_earthmate_device, ptr @cypress_hidcom_device, ptr @cypress_ca42v2_device, ptr null], [16 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author271 = internal constant [91 x i8] c"cypress_m8.author=Lonnie Mendez <dignome@gmail.com>, Neil Whelchel <koyama@firstlight.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [52 x i8] c"cypress_m8.description=Cypress USB to Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [46 x i8] c"cypress_m8.file=drivers/usb/serial/cypress_m8\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [23 x i8] c"cypress_m8.license=GPL\00", section ".modinfo", align 1
@__param_str_stats = internal constant [17 x i8] c"cypress_m8.stats\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@stats = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_stats = internal constant %struct.kernel_param { ptr @__param_str_stats, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @stats } }, section "__param", align 4
@__UNIQUE_ID_statstype275 = internal constant [31 x i8] c"cypress_m8.parmtype=stats:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_stats276 = internal constant [47 x i8] c"cypress_m8.parm=stats:Enable statistics or not\00", section ".modinfo", align 1
@__param_str_interval = internal constant [20 x i8] c"cypress_m8.interval\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_interval = internal constant %struct.kernel_param { ptr @__param_str_interval, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @interval } }, section "__param", align 4
@__UNIQUE_ID_intervaltype277 = internal constant [33 x i8] c"cypress_m8.parmtype=interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_interval278 = internal constant [54 x i8] c"cypress_m8.parm=interval:Overrides interrupt interval\00", section ".modinfo", align 1
@__param_str_unstable_bauds = internal constant [26 x i8] c"cypress_m8.unstable_bauds\00", align 1
@unstable_bauds = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_unstable_bauds = internal constant %struct.kernel_param { ptr @__param_str_unstable_bauds, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @unstable_bauds } }, section "__param", align 4
@__UNIQUE_ID_unstable_baudstype279 = internal constant [40 x i8] c"cypress_m8.parmtype=unstable_bauds:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_unstable_bauds280 = internal constant [57 x i8] c"cypress_m8.parm=unstable_bauds:Allow unstable baud rates\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cypress_m8\00", [21 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4451, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4451, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6109, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3487, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 26423, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2000, i16 16641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cypress_earthmate_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table_earthmate, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cypress_earthmate_port_probe, ptr @cypress_port_remove, ptr null, ptr null, ptr null, ptr @cypress_open, ptr @cypress_close, ptr @cypress_write, ptr @cypress_write_room, ptr null, ptr null, ptr null, ptr @cypress_set_termios, ptr null, ptr @cypress_chars_in_buffer, ptr null, ptr null, ptr @cypress_throttle, ptr @cypress_unthrottle, ptr @cypress_tiocmget, ptr @cypress_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @cypress_dtr_rts, ptr null, ptr @cypress_earthmate_init_termios, ptr @cypress_read_int_callback, ptr @cypress_write_int_callback, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@cypress_hidcom_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.70, ptr @id_table_cyphidcomrs232, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.71, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cypress_hidcom_port_probe, ptr @cypress_port_remove, ptr null, ptr null, ptr null, ptr @cypress_open, ptr @cypress_close, ptr @cypress_write, ptr @cypress_write_room, ptr null, ptr null, ptr null, ptr @cypress_set_termios, ptr null, ptr @cypress_chars_in_buffer, ptr null, ptr null, ptr @cypress_throttle, ptr @cypress_unthrottle, ptr @cypress_tiocmget, ptr @cypress_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @cypress_dtr_rts, ptr null, ptr null, ptr @cypress_read_int_callback, ptr @cypress_write_int_callback, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@cypress_ca42v2_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.73, ptr @id_table_nokiaca42v2, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.74, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cypress_ca42v2_port_probe, ptr @cypress_port_remove, ptr null, ptr null, ptr null, ptr @cypress_open, ptr @cypress_close, ptr @cypress_write, ptr @cypress_write_room, ptr null, ptr null, ptr null, ptr @cypress_set_termios, ptr null, ptr @cypress_chars_in_buffer, ptr null, ptr null, ptr @cypress_throttle, ptr @cypress_unthrottle, ptr @cypress_tiocmget, ptr @cypress_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @cypress_dtr_rts, ptr null, ptr null, ptr @cypress_read_int_callback, ptr @cypress_write_int_callback, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DeLorme Earthmate USB\00", [42 x i8] zeroinitializer }, align 32
@id_table_earthmate = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4451, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4451, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"earthmate\00", [22 x i8] zeroinitializer }, align 32
@cypress_earthmate_port_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cypress_earthmate_port_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/serial/cypress_m8.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - Failed setting up port\0A\00", [35 x i8] zeroinitializer }, align 32
@cypress_earthmate_port_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s - Marking this device as unsafe for GET_CONFIG commands\0A\00", [36 x i8] zeroinitializer }, align 32
@cypress_generic_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 446, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"required endpoint is missing\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cypress_generic_port_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cypress_generic_port_probe._entry_ptr = internal global ptr @cypress_generic_port_probe._entry, section ".printk_index", align 4
@cypress_generic_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@cypress_generic_port_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.12, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - read & write intervals forced to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@cypress_generic_port_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.13, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - intervals: read=%d write=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cypress_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 616, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - failed submitting read urb, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cypress_open\00", [19 x i8] zeroinitializer }, align 32
@cypress_open._entry_ptr = internal global ptr @cypress_open._entry, section ".printk_index", align 4
@cypress_send.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cypress_send\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - interrupt out size is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cypress_send.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - can't write, urb in use\0A\00", [34 x i8] zeroinitializer }, align 32
@cypress_send.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - line control command being issued\0A\00", [56 x i8] zeroinitializer }, align 32
@cypress_send.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.20, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - count is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cypress_send.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cypress_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.4, i32 774, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - failed submitting write urb, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cypress_send._entry_ptr = internal global ptr @cypress_send._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.23, ptr @.str.24, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@cypress_set_dead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 431, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"cypress_m8 suspending failing port %d - interval might be too short\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cypress_set_dead\00", [47 x i8] zeroinitializer }, align 32
@cypress_set_dead._entry_ptr = internal global ptr @cypress_set_dead._entry, section ".printk_index", align 4
@cypress_close.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cypress_close\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stopping urbs\0A\00", [44 x i8] zeroinitializer }, align 32
@cypress_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 652, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Statistics: %d Bytes In | %d Bytes Out | %d Commands Issued\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cypress_close._entry_ptr = internal global ptr @cypress_close._entry, section ".printk_index", align 4
@cypress_write.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cypress_write\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - %d bytes\0A\00", [17 x i8] zeroinitializer }, align 32
@cypress_write_room.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cypress_write_room\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - returns %u\0A\00", [47 x i8] zeroinitializer }, align 32
@cypress_set_termios.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cypress_set_termios\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - dropping the lines, baud rate 0bps\0A\00", [55 x i8] zeroinitializer }, align 32
@cypress_set_termios.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.37, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s - sending %d stop_bits, %d parity_enable, %d parity_type, %d data_bits (+5)\0A\00", [48 x i8] zeroinitializer }, align 32
@cypress_set_termios.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.38, i8 0, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Using custom termios settings for a baud rate of 4800bps.\0A\00", [37 x i8] zeroinitializer }, align 32
@cypress_serial_control.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cypress_serial_control\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - baud rate is changing\0A\00", [36 x i8] zeroinitializer }, align 32
@cypress_serial_control.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - New baud rate set to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cypress_serial_control.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.42, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - baud rate is being sent as %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cypress_serial_control.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.43, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - device is being sent this feature report:\0A\00", [48 x i8] zeroinitializer }, align 32
@cypress_serial_control.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.44, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - %02X - %02X - %02X - %02X - %02X\0A\00", [57 x i8] zeroinitializer }, align 32
@cypress_serial_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.4, i32 359, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s - failed sending serial line settings - %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cypress_serial_control._entry_ptr = internal global ptr @cypress_serial_control._entry, section ".printk_index", align 4
@cypress_serial_control.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.46, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - retrieving serial line settings\0A\00", [58 x i8] zeroinitializer }, align 32
@cypress_serial_control._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.39, ptr @.str.4, i32 396, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s - failed to retrieve serial line settings - %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cypress_serial_control._entry_ptr.49 = internal global ptr @cypress_serial_control._entry.47, section ".printk_index", align 4
@analyze_baud_rate.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"analyze_baud_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s - failed setting baud rate, device incapable speed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@analyze_baud_rate.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.52, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s - failed setting baud rate, unsupported speed of %d on Earthmate GPS\0A\00", [55 x i8] zeroinitializer }, align 32
@cypress_chars_in_buffer.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.4, ptr @.str.34, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cypress_chars_in_buffer\00", [40 x i8] zeroinitializer }, align 32
@cypress_unthrottle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.54, ptr @.str.4, i32 1003, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cypress_unthrottle\00", [45 x i8] zeroinitializer }, align 32
@cypress_unthrottle._entry_ptr = internal global ptr @cypress_unthrottle._entry, section ".printk_index", align 4
@cypress_tiocmget.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cypress_tiocmget\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - result = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@cypress_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1038, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s - unexpected nonzero read status received: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cypress_read_int_callback\00", [38 x i8] zeroinitializer }, align 32
@cypress_read_int_callback._entry_ptr = internal global ptr @cypress_read_int_callback._entry, section ".printk_index", align 4
@cypress_read_int_callback.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - now throttling\0A\00", [43 x i8] zeroinitializer }, align 32
@cypress_read_int_callback.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.60, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - bad tty pointer - exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@cypress_read_int_callback.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.61, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s - wrong packet size - received %d bytes but packet said %d bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@cypress_read_int_callback.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.62, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - calling hangup\0A\00", [43 x i8] zeroinitializer }, align 32
@cypress_read_int_callback.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.63, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - Parity Error detected\0A\00", [36 x i8] zeroinitializer }, align 32
@cypress_read_int_callback._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.58, ptr @.str.4, i32 1155, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - failed resubmitting read urb, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cypress_read_int_callback._entry_ptr.66 = internal global ptr @cypress_read_int_callback._entry.64, section ".printk_index", align 4
@cypress_write_int_callback.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cypress_write_int_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cypress_write_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 1186, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s - unexpected nonzero write status received: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cypress_write_int_callback._entry_ptr = internal global ptr @cypress_write_int_callback._entry, section ".printk_index", align 4
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HID->COM RS232 Adapter\00", [41 x i8] zeroinitializer }, align 32
@id_table_cyphidcomrs232 = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1204, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6109, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3487, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 26423, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cyphidcom\00", [22 x i8] zeroinitializer }, align 32
@cypress_hidcom_port_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.4, ptr @.str.5, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cypress_hidcom_port_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Nokia CA-42 V2 Adapter\00", [41 x i8] zeroinitializer }, align 32
@id_table_nokiaca42v2 = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2000, i16 16641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokiaca42v2\00", [20 x i8] zeroinitializer }, align 32
@cypress_ca42v2_port_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.4, ptr @.str.5, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cypress_ca42v2_port_probe\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 4294967277]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 4294967277]
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 218, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 44, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 45, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"unstable_bauds\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 46, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1196, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 73, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"cypress_earthmate_device\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 139, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"cypress_hidcom_device\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 166, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"cypress_ca42v2_device\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 192, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 144, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"id_table_earthmate\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 54, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 142, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 509, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 524, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 446, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 455, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 484, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 489, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 614, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 693, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 698, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 728, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 750, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [26 x i8] c"cypress_send.__print_once\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 772, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 393, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 430, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 646, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 651, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 661, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 803, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 896, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 902, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 920, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 316, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 320, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 324, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 337, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 338, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 358, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 380, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 395, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 264, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 276, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 969, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1002, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 828, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1037, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1045, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1054, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1077, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1110, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1123, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1154, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1177, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1185, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 171, i32 19 }
@___asan_gen_.346 = private unnamed_addr constant [24 x i8] c"id_table_cyphidcomrs232\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 60, i32 35 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 169, i32 13 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 540, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 197, i32 19 }
@___asan_gen_.358 = private unnamed_addr constant [21 x i8] c"id_table_nokiaca42v2\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 68, i32 35 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 195, i32 13 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [35 x i8] c"../drivers/usb/serial/cypress_m8.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 557, i32 3 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_interval278, ptr @__UNIQUE_ID_intervaltype277, ptr @__UNIQUE_ID_license274, ptr @__UNIQUE_ID_stats276, ptr @__UNIQUE_ID_statstype275, ptr @__UNIQUE_ID_unstable_bauds280, ptr @__UNIQUE_ID_unstable_baudstype279, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_cypress_m8__270_1196_usb_serial_module_init6, ptr @__param_interval, ptr @__param_stats, ptr @__param_unstable_bauds, ptr @cypress_close._entry, ptr @cypress_close._entry_ptr, ptr @cypress_generic_port_probe._entry, ptr @cypress_generic_port_probe._entry_ptr, ptr @cypress_open._entry, ptr @cypress_open._entry_ptr, ptr @cypress_read_int_callback._entry, ptr @cypress_read_int_callback._entry.64, ptr @cypress_read_int_callback._entry_ptr, ptr @cypress_read_int_callback._entry_ptr.66, ptr @cypress_send._entry, ptr @cypress_send._entry_ptr, ptr @cypress_serial_control._entry, ptr @cypress_serial_control._entry.47, ptr @cypress_serial_control._entry_ptr, ptr @cypress_serial_control._entry_ptr.49, ptr @cypress_set_dead._entry, ptr @cypress_set_dead._entry_ptr, ptr @cypress_unthrottle._entry, ptr @cypress_unthrottle._entry_ptr, ptr @cypress_write_int_callback._entry, ptr @cypress_write_int_callback._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @stats, ptr @interval, ptr @unstable_bauds, ptr @.str, ptr @id_table_combined, ptr @cypress_earthmate_device, ptr @cypress_hidcom_device, ptr @cypress_ca42v2_device, ptr @.str.1, ptr @id_table_earthmate, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cypress_generic_port_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @cypress_send.__print_once, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @id_table_cyphidcomrs232, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @id_table_nokiaca42v2, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unstable_bauds to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_earthmate_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_hidcom_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_ca42v2_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_earthmate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_generic_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_generic_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_send.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_set_dead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_serial_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_serial_control._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_unthrottle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_read_int_callback._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_write_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_cyphidcomrs232 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_nokiaca42v2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_earthmate_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %call = tail call fastcc i32 @cypress_generic_port_probe(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_earthmate_port_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_earthmate_port_probe, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !239

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_earthmate_port_probe.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chiptype = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chiptype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %chiptype, align 4
  %pkt_fmt = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %pkt_fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pkt_fmt, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, i32 8
  %8 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.not = icmp eq i16 %9, 1
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %do.body12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_earthmate_port_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_earthmate_port_probe, %if.then24)) #6
          to label %do.end28 [label %if.then24], !srcloc !239

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %dev25 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_earthmate_port_probe.__UNIQUE_ID_ddebug249, ptr noundef %dev25, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body12
  %get_cfg_unsafe = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %get_cfg_unsafe to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %get_cfg_unsafe, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 6
  tail call void @__kfifo_free(ptr noundef %write_fifo) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comm_is_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %7, i32 noundef 129) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call4 = tail call i32 @usb_clear_halt(ptr noundef %9, i32 noundef 2) #6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %bytes_in = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %bytes_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bytes_in, align 4
  %bytes_out = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %bytes_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bytes_out, align 4
  %cmd_count = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %cmd_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmd_count, align 4
  %rx_flags = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rx_flags, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call7) #6
  tail call fastcc void @cypress_send(ptr noundef %port)
  %tobool11.not = icmp eq ptr %tty, null
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cypress_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %14 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_in_urb, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %interrupt_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 7
  %18 = ptrtoint ptr %interrupt_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %interrupt_in_endpointAddress, align 8
  %conv16 = zext i8 %19 to i32
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i = shl i32 %21, 8
  %shl1.i = shl nuw nsw i32 %conv16, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or18 = or i32 %or.i, 1073741952
  %read_urb_interval = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %read_urb_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_urb_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 8
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 10
  %25 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or18, ptr %pipe2.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cypress_read_int_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %port, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 4
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i = icmp eq i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp6.i = icmp ugt i32 %29, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end13.usb_fill_int_urb.exit_crit_edge

if.end13.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call i32 @llvm.smax.i32(i32 %23, i32 1) #6
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 16) #6
  %sub.i = add nsw i32 %31, -1
  %shl.i57 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end13.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i57, %if.then.i ], [ %23, %if.end13.usb_fill_int_urb.exit_crit_edge ]
  %32 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 25
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %interval.sink.i, ptr %32, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 23
  %34 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %start_frame.i, align 4
  %35 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %interrupt_in_urb, align 4
  %call22 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %usb_fill_int_urb.exit.cleanup_crit_edge, label %do.end27

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %usb_fill_int_urb.exit
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call22) #9
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #6
  %comm_is_ok.i = getelementptr inbounds %struct.cypress_private, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %comm_is_ok.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %comm_is_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.then.i58, label %if.end.i

if.then.i58:                                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call3.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %comm_is_ok.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %comm_is_ok.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call3.i) #6
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %42 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port_number.i, align 4
  %conv12.i = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.25, i32 noundef %conv12.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i58, %usb_fill_int_urb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %usb_fill_int_urb.exit.cleanup_crit_edge ], [ %call22, %if.then.i58 ], [ %call22, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_close.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_close, %if.then)) #6
          to label %do.end14 [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_close.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %5 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #6
  %interrupt_out_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 10
  %7 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #6
  %9 = load i8, ptr @stats, align 1, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %do.end14.if.end21_crit_edge, label %do.end19

do.end14.if.end21_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end19:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %bytes_in = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes_in, align 4
  %bytes_out = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes_out, align 4
  %cmd_count = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %cmd_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_count, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.29, i32 noundef %11, i32 noundef %13, i32 noundef %15) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %do.end14.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_write.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_write, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_write.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %count) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_ctrl = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.finish_crit_edge

do.end.finish_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %finish

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool7.not = icmp eq i32 %count, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 6
  %call20 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %buf, i32 noundef %count) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call14) #6
  br label %finish

finish:                                           ; preds = %if.end9, %do.end.finish_crit_edge
  %count.addr.0 = phi i32 [ %call20, %if.end9 ], [ 0, %do.end.finish_crit_edge ]
  tail call fastcc void @cypress_send(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %finish, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %finish ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 6
  %mask = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %add = add i32 %5, 1
  %6 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub.neg = sub i32 %9, %7
  %sub7 = add i32 %add, %sub.neg
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_write_room.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_write_room, %if.then)) #6
          to label %do.end17 [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_write_room.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %sub7) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  ret i32 %sub7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, 1073741823
  store i32 %and, ptr %c_cflag, align 4
  %and4 = lshr i32 %3, 6
  %and4.lobit = and i32 %and4, 1
  %and5 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and7 = lshr i32 %3, 9
  %and7.lobit = and i32 %and7, 1
  %not.tobool6.not = xor i1 %tobool6.not, true
  %parity_enable.0 = zext i1 %not.tobool6.not to i32
  %parity_type.0 = select i1 %tobool6.not, i32 0, i32 %and7.lobit
  %call10 = tail call zeroext i8 @tty_get_char_size(i32 noundef %and) #6
  %conv = zext i8 %call10 to i32
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %line_control = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_control, align 4
  %and17 = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %do.body21, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.body21:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_set_termios.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_set_termios, %if.then27)) #6
          to label %do.end30 [label %if.then27], !srcloc !239

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_set_termios.__UNIQUE_ID_ddebug260, ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body21
  %6 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %line_control, align 4
  %8 = and i8 %7, -49
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  %storemerge = phi i8 [ %8, %do.end30 ], [ 48, %entry.if.end37_crit_edge ]
  %9 = ptrtoint ptr %line_control to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %line_control, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call14) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_set_termios.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_set_termios, %if.then51)) #6
          to label %do.end54 [label %if.then51], !srcloc !239

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_set_termios.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %and4.lobit, i32 noundef %parity_enable.0, i32 noundef %parity_type.0, i32 noundef %conv) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.end37
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #6
  tail call fastcc void @cypress_serial_control(ptr noundef %tty, ptr noundef %port, i32 noundef %call.i, i32 noundef %conv, i32 noundef %and4.lobit, i32 noundef %parity_enable.0, i32 noundef %parity_type.0, i32 noundef 1)
  tail call fastcc void @cypress_serial_control(ptr noundef %tty, ptr noundef %port, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %chiptype = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %chiptype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chiptype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp72 = icmp eq i32 %11, 1
  br i1 %cmp72, label %land.lhs.true, label %do.end54.if.end99_crit_edge

do.end54.if.end99_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

land.lhs.true:                                    ; preds = %do.end54
  %baud_rate = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baud_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4800, i32 %13)
  %cmp74 = icmp eq i32 %13, 4800
  br i1 %cmp74, label %do.body77, label %land.lhs.true.if.end99_crit_edge

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

do.body77:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_set_termios.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_set_termios, %if.then89)) #6
          to label %do.end92 [label %if.then89], !srcloc !239

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_set_termios.__UNIQUE_ID_ddebug262, ptr noundef %dev1, ptr noundef nonnull @.str.38) #6
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body77
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %and94 = and i32 %15, -1516
  store i32 %and94, ptr %termios, align 4
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_oflag, align 4
  %and96 = and i32 %17, -2
  store i32 %and96, ptr %c_oflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %18 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_lflag, align 4
  %and98 = and i32 %19, -32844
  store i32 %and98, ptr %c_lflag, align 4
  br label %if.end99

if.end99:                                         ; preds = %do.end92, %land.lhs.true.if.end99_crit_edge, %do.end54.if.end99_crit_edge
  %20 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %line_control, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %5)
  %cmp103.not = icmp eq i8 %21, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call67) #6
  br i1 %cmp103.not, label %if.end99.if.end109_crit_edge, label %if.then107

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then107:                                       ; preds = %if.end99
  %cmd_ctrl = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %cmd_ctrl, align 4
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_write.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_set_termios, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !239

if.then.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_write.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then107
  %cmd_ctrl.i = getelementptr inbounds %struct.cypress_private, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %cmd_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not.i = icmp eq i32 %26, 0
  br i1 %tobool4.not.i, label %do.end.i.if.end109_crit_edge, label %finish.i

do.end.i.if.end109_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

finish.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_send(ptr noundef %port) #6
  br label %if.end109

if.end109:                                        ; preds = %finish.i, %do.end.i.if.end109_crit_edge, %if.end99.if.end109_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub = sub i32 %5, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_chars_in_buffer.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_chars_in_buffer, %if.then)) #6
          to label %do.end14 [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_chars_in_buffer.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.53, i32 noundef %sub) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #6
  %rx_flags = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %rx_flags, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #6
  %rx_flags = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_flags, align 1
  store i8 0, ptr %rx_flags, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #6
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comm_is_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %entry
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt_in_urb, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.54, i32 noundef %call5) #9
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #6
  %comm_is_ok.i = getelementptr inbounds %struct.cypress_private, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %comm_is_ok.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %comm_is_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call3.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %comm_is_ok.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %comm_is_ok.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call3.i) #6
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port_number.i, align 4
  %conv12.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv12.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %line_control = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_control, align 4
  %current_status = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %current_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_status, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  %conv7 = zext i8 %5 to i32
  %and = lshr i32 %conv7, 4
  %8 = and i32 %and, 2
  %and9 = lshr i32 %conv7, 2
  %9 = and i32 %and9, 4
  %or = or i32 %8, %9
  %conv12 = zext i8 %7 to i32
  %and13 = shl nuw nsw i32 %conv12, 1
  %10 = and i32 %and13, 32
  %and18 = shl nuw nsw i32 %conv12, 3
  %11 = and i32 %and18, 256
  %and23 = and i32 %conv12, 128
  %and28 = and i32 %conv12, 64
  %or16 = or i32 %or, %and23
  %or21 = or i32 %or16, %and28
  %or26 = or i32 %or21, %10
  %or31 = or i32 %or26, %11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_tiocmget.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_tiocmget, %if.then)) #6
          to label %do.end39 [label %if.then], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_tiocmget.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %or31) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then, %entry
  ret i32 %or31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %line_control = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_control, align 4
  %6 = or i8 %5, 16
  store i8 %6, ptr %line_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %line_control11 = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %line_control11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %line_control11, align 4
  %9 = or i8 %8, 32
  store i8 %9, ptr %line_control11, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %and16 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %line_control19 = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %line_control19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_control19, align 4
  %12 = and i8 %11, -17
  store i8 %12, ptr %line_control19, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %and24 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %line_control27 = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %line_control27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %line_control27, align 4
  %15 = and i8 %14, -33
  store i8 %15, ptr %line_control27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %cmd_ctrl = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cmd_ctrl, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_write.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_tiocmset, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !239

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_write.__UNIQUE_ID_ddebug253, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end31
  %cmd_ctrl.i = getelementptr inbounds %struct.cypress_private, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %cmd_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %do.end.i.cypress_write.exit_crit_edge, label %finish.i

do.end.i.cypress_write.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_write.exit

finish.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_send(ptr noundef %1) #6
  br label %cypress_write.exit

cypress_write.exit:                               ; preds = %finish.i, %do.end.i.cypress_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %cmp = icmp eq i32 %on, 0
  %spec.select = select i1 %cmp, i8 0, i8 48
  %2 = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 4
  %cmd_ctrl = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %cmd_ctrl, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #6
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_write.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_dtr_rts, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !239

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_write.__UNIQUE_ID_ddebug253, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %cmd_ctrl.i = getelementptr inbounds %struct.cypress_private, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %do.end.i.cypress_write.exit_crit_edge, label %finish.i

do.end.i.cypress_write.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_write.exit

finish.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_send(ptr noundef %port) #6
  br label %cypress_write.exit

cypress_write.exit:                               ; preds = %finish.i, %do.end.i.cypress_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_earthmate_init_termios(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 4800, i32 noundef 4800) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_read_int_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status3, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 0, label %do.body6
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge394
    i32 -108, label %entry.cleanup_crit_edge395
  ]

entry.cleanup_crit_edge395:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge394:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %9) #9
  tail call fastcc void @cypress_set_dead(ptr noundef %1)
  br label %cleanup

do.body6:                                         ; preds = %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %rx_flags = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_flags, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end27, label %do.body14

do.body14:                                        ; preds = %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_int_callback, %if.then20)) #6
          to label %do.end22 [label %if.then20], !srcloc !239

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_int_callback.__UNIQUE_ID_ddebug264, ptr noundef %dev2, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then20, %do.body14
  %14 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_flags, align 1
  %16 = or i8 %15, 2
  store i8 %16, ptr %rx_flags, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call8) #6
  br label %cleanup

if.end27:                                         ; preds = %do.body6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call8) #6
  %port29 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call30 = tail call ptr @tty_port_tty_get(ptr noundef %port29) #6
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.body33, label %do.body51

do.body33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_int_callback, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !239

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_int_callback.__UNIQUE_ID_ddebug265, ptr noundef %dev2, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58) #6
  br label %cleanup

do.body51:                                        ; preds = %if.end27
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %pkt_fmt = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 15
  %19 = ptrtoint ptr %pkt_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pkt_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cond = icmp eq i32 %20, 1
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 1
  %23 = and i8 %22, -8
  %current_status76 = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %current_status76 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %current_status76, align 1
  br i1 %cond, label %sw.bb71, label %sw.bb65

sw.bb65:                                          ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx69 = getelementptr i8, ptr %7, i32 1
  %25 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %26 to i32
  %add = add nuw nsw i32 %conv70, 2
  br label %sw.epilog81

sw.bb71:                                          ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  %29 = and i8 %28, 7
  %narrow = add nuw nsw i8 %29, 1
  %add80 = zext i8 %narrow to i32
  br label %sw.epilog81

sw.epilog81:                                      ; preds = %sw.bb71, %sw.bb65
  %i.0 = phi i32 [ 1, %sw.bb71 ], [ 2, %sw.bb65 ]
  %bytes.0 = phi i32 [ %add80, %sw.bb71 ], [ %add, %sw.bb65 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call59) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %bytes.0)
  %cmp83 = icmp slt i32 %18, %bytes.0
  br i1 %cmp83, label %do.body86, label %if.end102

do.body86:                                        ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_int_callback, %if.then98)) #6
          to label %continue_read [label %if.then98], !srcloc !239

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_int_callback.__UNIQUE_ID_ddebug266, ptr noundef %dev2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.58, i32 noundef %18, i32 noundef %bytes.0) #6
  br label %continue_read

if.end102:                                        ; preds = %sw.epilog81
  %30 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_int_callback, %if.then.i)) #6
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !239

if.then.i:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %dev103 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev103, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.58, i32 noundef %31, i32 noundef %31, ptr noundef %7) #6
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end102
  %call114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %current_status119 = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %current_status119 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %current_status119, align 1
  %prev_status = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 18
  %34 = ptrtoint ptr %prev_status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %prev_status, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp122.not = icmp eq i8 %33, %35
  br i1 %cmp122.not, label %usb_serial_debug_data.exit.if.end164_crit_edge, label %if.then124

usb_serial_debug_data.exit.if.end164_crit_edge:   ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then124:                                       ; preds = %usb_serial_debug_data.exit
  %xor374 = xor i8 %35, %33
  %conv130 = zext i8 %xor374 to i32
  %and131 = and i32 %conv130, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.then124.if.end161_crit_edge, label %if.then133

if.then124.if.end161_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then133:                                       ; preds = %if.then124
  %and135 = and i32 %conv130, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.then133.if.end138_crit_edge, label %if.then137

if.then133.if.end138_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then137:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27
  %36 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %icount, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.then133.if.end138_crit_edge
  %and140 = and i32 %conv130, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.if.end145_crit_edge, label %if.then142

if.end138.if.end145_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 1
  %38 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dsr, align 4
  %inc144 = add i32 %39, 1
  store i32 %inc144, ptr %dsr, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.end138.if.end145_crit_edge
  %and147 = and i32 %conv130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end145.if.end152_crit_edge, label %if.then149

if.end145.if.end152_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then149:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 2
  %40 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rng, align 8
  %inc151 = add i32 %41, 1
  store i32 %inc151, ptr %rng, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.end145.if.end152_crit_edge
  %and154 = and i32 %conv130, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end159_crit_edge, label %if.then156

if.end152.if.end159_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 3
  %42 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dcd, align 4
  %inc158 = add i32 %43, 1
  store i32 %inc158, ptr %dcd, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end152.if.end159_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %if.then124.if.end161_crit_edge
  %44 = ptrtoint ptr %current_status119 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %current_status119, align 1
  %46 = ptrtoint ptr %prev_status to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %prev_status, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.end161, %usb_serial_debug_data.exit.if.end164_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call114) #6
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %call30, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %c_cflag, align 4
  %and167 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %land.lhs.true169, label %if.end164.do.body193_crit_edge

if.end164.do.body193_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

land.lhs.true169:                                 ; preds = %if.end164
  %49 = ptrtoint ptr %current_status119 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %current_status119, align 1
  %51 = and i8 %50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool173.not = icmp eq i8 %51, 0
  br i1 %tobool173.not, label %do.body175, label %land.lhs.true169.do.body193_crit_edge

land.lhs.true169.do.body193_crit_edge:            ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

do.body175:                                       ; preds = %land.lhs.true169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_int_callback, %if.then187)) #6
          to label %do.end190 [label %if.then187], !srcloc !239

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_int_callback.__UNIQUE_ID_ddebug267, ptr noundef %dev2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) #6
  br label %do.end190

do.end190:                                        ; preds = %if.then187, %do.body175
  tail call void @tty_hangup(ptr noundef nonnull %call30) #6
  br label %continue_read

do.body193:                                       ; preds = %land.lhs.true169.do.body193_crit_edge, %if.end164.do.body193_crit_edge
  %call201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %52 = ptrtoint ptr %current_status119 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %current_status119, align 1
  %54 = and i8 %53, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool209.not = icmp eq i8 %54, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call201) #6
  br i1 %tobool209.not, label %do.body193.if.end229_crit_edge, label %if.then210

do.body193.if.end229_crit_edge:                   ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end229

if.then210:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_int_callback, %if.then224)) #6
          to label %if.end229 [label %if.then224], !srcloc !239

if.then224:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_int_callback.__UNIQUE_ID_ddebug268, ptr noundef %dev2, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.58) #6
  br label %if.end229

if.end229:                                        ; preds = %if.then224, %if.then210, %do.body193.if.end229_crit_edge
  %tty_flag.0 = phi i8 [ 3, %if.then224 ], [ 3, %if.then210 ], [ 0, %do.body193.if.end229_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.0, i32 %i.0)
  %cmp230 = icmp ugt i32 %bytes.0, %i.0
  br i1 %cmp230, label %if.then232, label %if.end229.do.body238_crit_edge

if.end229.do.body238_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body238

if.then232:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %7, i32 %i.0
  %sub = sub nsw i32 %bytes.0, %i.0
  %call234 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port29, ptr noundef %add.ptr, i8 noundef zeroext %tty_flag.0, i32 noundef %sub) #6
  tail call void @tty_flip_buffer_push(ptr noundef %port29) #6
  br label %do.body238

do.body238:                                       ; preds = %if.then232, %if.end229.do.body238_crit_edge
  %call246 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %bytes_in = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytes_in, align 4
  %add251 = add i32 %56, %bytes.0
  store i32 %add251, ptr %bytes_in, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call246) #6
  br label %continue_read

continue_read:                                    ; preds = %do.body238, %do.end190, %if.then98, %do.body86
  tail call void @tty_kref_put(ptr noundef nonnull %call30) #6
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %comm_is_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool253.not = icmp eq i32 %58, 0
  br i1 %tobool253.not, label %continue_read.cleanup_crit_edge, label %if.then254

continue_read.cleanup_crit_edge:                  ; preds = %continue_read
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then254:                                       ; preds = %continue_read
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %interrupt_in_urb, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %interrupt_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %interrupt_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %interrupt_in_endpointAddress, align 8
  %conv258 = zext i8 %66 to i32
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 8
  %shl.i = shl i32 %68, 8
  %shl1.i = shl nuw nsw i32 %conv258, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or261 = or i32 %or.i, 1073741952
  %read_urb_interval = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 9
  %69 = ptrtoint ptr %read_urb_interval to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %read_urb_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 8
  %71 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %64, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 10
  %72 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or261, ptr %pipe2.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 28
  %73 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @cypress_read_int_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 27
  %74 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %1, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 4
  %75 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp.i = icmp eq i32 %76, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %cmp6.i = icmp ugt i32 %76, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i388, label %if.then254.usb_fill_int_urb.exit_crit_edge

if.then254.usb_fill_int_urb.exit_crit_edge:       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_fill_int_urb.exit

if.then.i388:                                     ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #8
  %77 = tail call i32 @llvm.smax.i32(i32 %70, i32 1) #6
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 16) #6
  %sub.i = add nsw i32 %78, -1
  %shl.i387 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i388, %if.then254.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i387, %if.then.i388 ], [ %70, %if.then254.usb_fill_int_urb.exit_crit_edge ]
  %79 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 25
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %interval.sink.i, ptr %79, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 23
  %81 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %start_frame.i, align 4
  %82 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %interrupt_in_urb, align 4
  %call266 = tail call i32 @usb_submit_urb(ptr noundef %83, i32 noundef 2592) #6
  %84 = zext i32 %call266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call266, label %do.end274 [
    i32 0, label %usb_fill_int_urb.exit.cleanup_crit_edge
    i32 -1, label %usb_fill_int_urb.exit.cleanup_crit_edge396
  ]

usb_fill_int_urb.exit.cleanup_crit_edge396:       ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end274:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.58, i32 noundef %call266) #9
  tail call fastcc void @cypress_set_dead(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end274, %usb_fill_int_urb.exit.cleanup_crit_edge, %usb_fill_int_urb.exit.cleanup_crit_edge396, %continue_read.cleanup_crit_edge, %if.then45, %do.body33, %do.end22, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge394, %entry.cleanup_crit_edge395
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_write_int_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status3, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %7, label %do.end10 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge24
    i32 -108, label %entry.do.body_crit_edge25
  ]

entry.do.body_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge24, %entry.do.body_crit_edge25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_write_int_callback.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_write_int_callback, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_write_int_callback.__UNIQUE_ID_ddebug269, ptr noundef %dev2, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %write_urb_in_use = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %write_urb_in_use, align 4
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %7) #9
  tail call fastcc void @cypress_set_dead(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %entry.sw.epilog_crit_edge
  %write_urb_in_use11 = getelementptr inbounds %struct.cypress_private, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %write_urb_in_use11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %write_urb_in_use11, align 4
  tail call fastcc void @cypress_send(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cypress_generic_port_probe(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %interrupt_out_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 10
  %2 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_out_urb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %comm_is_ok, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @cypress_generic_port_probe.__key, i16 noundef signext 3) #6
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 6
  %call10 = tail call i32 @__kfifo_alloc(ptr noundef %write_fifo, i32 noundef 1024, i32 noundef 1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 7
  %10 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14183, i16 %11)
  %cmp.i = icmp eq i16 %11, 14183
  br i1 %cmp.i, label %is_frwd.exit, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

is_frwd.exit:                                     ; preds = %if.end14
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 8
  %12 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %13)
  %cmp4.i = icmp eq i16 %13, 256
  br i1 %cmp4.i, label %is_frwd.exit.if.end20_crit_edge, label %is_frwd.exit.if.then17_crit_edge

is_frwd.exit.if.then17_crit_edge:                 ; preds = %is_frwd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

is_frwd.exit.if.end20_crit_edge:                  ; preds = %is_frwd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %is_frwd.exit.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %call19 = tail call i32 @usb_reset_configuration(ptr noundef %9) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %is_frwd.exit.if.end20_crit_edge
  %cmd_ctrl = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cmd_ctrl, align 4
  %line_control = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %line_control to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %line_control, align 4
  %rx_flags = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 14
  %16 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rx_flags, align 1
  %interrupt_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 9
  %17 = ptrtoint ptr %interrupt_out_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interrupt_out_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %18)
  %cmp = icmp slt i32 %18, 10
  %spec.select = zext i1 %cmp to i32
  %19 = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 8
  %21 = load i32, ptr @interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24 = icmp sgt i32 %21, 0
  br i1 %cmp24, label %if.then25, label %if.else37

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %write_urb_interval = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %write_urb_interval to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %write_urb_interval, align 8
  %read_urb_interval = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %read_urb_interval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %read_urb_interval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_generic_port_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_generic_port_probe, %if.then32)) #6
          to label %if.end62 [label %if.then32], !srcloc !239

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %24 = load i32, ptr @interval, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_generic_port_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev33, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef %24) #6
  br label %if.end62

if.else37:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interrupt_out_urb, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %interval, align 4
  %write_urb_interval39 = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %write_urb_interval39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %write_urb_interval39, align 8
  %30 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %interrupt_in_urb, align 4
  %interval41 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 25
  %32 = ptrtoint ptr %interval41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interval41, align 4
  %read_urb_interval42 = getelementptr inbounds %struct.cypress_private, ptr %call7.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %read_urb_interval42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %read_urb_interval42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_generic_port_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_generic_port_probe, %if.then55)) #6
          to label %if.end62 [label %if.then55], !srcloc !239

if.then55:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %dev56 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %35 = ptrtoint ptr %read_urb_interval42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %read_urb_interval42, align 4
  %37 = ptrtoint ptr %write_urb_interval39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %write_urb_interval39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_generic_port_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev56, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %36, i32 noundef %38) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.else37, %if.then32, %if.then25
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %drain_delay = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 18
  %40 = ptrtoint ptr %drain_delay to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 256, ptr %drain_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %if.then13 ], [ 0, %if.end62 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_send(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comm_is_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_send.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send, %if.then6)) #6
          to label %do.body9 [label %if.then6], !srcloc !239

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 9
  %4 = ptrtoint ptr %interrupt_out_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interrupt_out_size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_send.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %5) #6
  br label %do.body9

do.body9:                                         ; preds = %if.then6, %do.body
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %write_urb_in_use = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool17.not = icmp eq i32 %7, 0
  br i1 %tobool17.not, label %if.end36, label %do.body19

do.body19:                                        ; preds = %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_send.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send, %if.then31)) #6
          to label %do.end34 [label %if.then31], !srcloc !239

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_send.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #6
  br label %cleanup

if.end36:                                         ; preds = %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #6
  %interrupt_out_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 10
  %8 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_out_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %interrupt_out_size38 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 9
  %12 = ptrtoint ptr %interrupt_out_size38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interrupt_out_size38, align 8
  %14 = call ptr @memset(ptr %11, i32 0, i32 %13)
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %pkt_fmt = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %pkt_fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cond222 = icmp eq i32 %16, 1
  %line_control54 = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %line_control54 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %line_control54, align 4
  %interrupt_out_buffer55 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 8
  %19 = ptrtoint ptr %interrupt_out_buffer55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interrupt_out_buffer55, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %20, align 1
  %. = select i1 %cond222, i32 1, i32 2
  %line_control57 = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %line_control57 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %line_control57, align 4
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool59.not = icmp eq i8 %24, 0
  br i1 %tobool59.not, label %if.end36.if.end65_crit_edge, label %if.then60

if.end36.if.end65_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then60:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %and63 = and i8 %23, -9
  %25 = ptrtoint ptr %line_control57 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and63, ptr %line_control57, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end36.if.end65_crit_edge
  %cmd_ctrl = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool66.not = icmp eq i32 %27, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end65
  %cmd_count = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %cmd_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd_count, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %cmd_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_send.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send, %if.then80)) #6
          to label %do.end83 [label %if.then80], !srcloc !239

if.then80:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_send.__UNIQUE_ID_ddebug256, ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #6
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %if.then67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call48) #6
  br label %do.body143

if.else:                                          ; preds = %if.end65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call48) #6
  %call96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %write_fifo = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 6
  %interrupt_out_buffer101 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 8
  %30 = ptrtoint ptr %interrupt_out_buffer101 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %interrupt_out_buffer101, align 4
  %arrayidx102 = getelementptr i8, ptr %31, i32 %.
  %32 = ptrtoint ptr %interrupt_out_size38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interrupt_out_size38, align 8
  %sub = sub i32 %33, %.
  %call105 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %arrayidx102, i32 noundef %sub) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp110 = icmp eq i32 %call105, 0
  br i1 %cmp110, label %if.else.cleanup_crit_edge, label %if.end113

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end113:                                        ; preds = %if.else
  %34 = ptrtoint ptr %pkt_fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pkt_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cond223 = icmp eq i32 %35, 1
  br i1 %cond223, label %sw.bb120, label %sw.bb116

sw.bb116:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %conv117 = trunc i32 %call105 to i8
  %36 = ptrtoint ptr %interrupt_out_buffer101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %interrupt_out_buffer101, align 4
  %arrayidx119 = getelementptr i8, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv117, ptr %arrayidx119, align 1
  br label %do.body126

sw.bb120:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %interrupt_out_buffer101 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interrupt_out_buffer101, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %43 = trunc i32 %call105 to i8
  %conv124 = or i8 %42, %43
  store i8 %conv124, ptr %40, align 1
  br label %do.body126

do.body126:                                       ; preds = %sw.bb120, %sw.bb116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_send.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send, %if.then138)) #6
          to label %do.body143 [label %if.then138], !srcloc !239

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_send.__UNIQUE_ID_ddebug257, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %call105) #6
  br label %do.body143

do.body143:                                       ; preds = %if.then138, %do.body126, %do.end83
  %count.0 = phi i32 [ 0, %do.end83 ], [ %call105, %if.then138 ], [ %call105, %do.body126 ]
  %call151 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %44 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %write_urb_in_use, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call151) #6
  %45 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool159.not = icmp eq i32 %46, 0
  br i1 %tobool159.not, label %if.else161, label %do.body143.if.end165_crit_edge

do.body143.if.end165_crit_edge:                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.else161:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %pkt_fmt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pkt_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp163 = icmp eq i32 %48, 0
  %cond = select i1 %cmp163, i32 2, i32 1
  %add = add i32 %cond, %count.0
  br label %if.end165

if.end165:                                        ; preds = %if.else161, %do.body143.if.end165_crit_edge
  %actual_size.0 = phi i32 [ %add, %if.else161 ], [ 1, %do.body143.if.end165_crit_edge ]
  %49 = ptrtoint ptr %interrupt_out_size38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interrupt_out_size38, align 8
  %51 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %interrupt_out_urb, align 4
  %transfer_buffer168 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer168 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %transfer_buffer168, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send, %if.then.i)) #6
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !239

if.then.i:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef %50, i32 noundef %50, ptr noundef %54) #6
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end165
  %55 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %interrupt_out_urb, align 4
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %interrupt_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 11
  %61 = ptrtoint ptr %interrupt_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %interrupt_out_endpointAddress, align 8
  %conv173 = zext i8 %62 to i32
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 8
  %shl.i = shl i32 %64, 8
  %shl1.i = shl nuw nsw i32 %conv173, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or175 = or i32 %or.i, 1073741824
  %interrupt_out_buffer176 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 8
  %65 = ptrtoint ptr %interrupt_out_buffer176 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %interrupt_out_buffer176, align 4
  %write_urb_interval = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %write_urb_interval to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %write_urb_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 8
  %69 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %60, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 10
  %70 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or175, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 14
  %71 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %66, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 19
  %72 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %actual_size.0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 28
  %73 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @cypress_write_int_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 27
  %74 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %port, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 4
  %75 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp.i = icmp eq i32 %76, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %cmp6.i = icmp ugt i32 %76, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i304, label %usb_serial_debug_data.exit.usb_fill_int_urb.exit_crit_edge

usb_serial_debug_data.exit.usb_fill_int_urb.exit_crit_edge: ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_fill_int_urb.exit

if.then.i304:                                     ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %77 = tail call i32 @llvm.smax.i32(i32 %68, i32 1) #6
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 16) #6
  %sub.i = add nsw i32 %78, -1
  %shl.i303 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i304, %usb_serial_debug_data.exit.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i303, %if.then.i304 ], [ %68, %usb_serial_debug_data.exit.usb_fill_int_urb.exit_crit_edge ]
  %79 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 25
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %interval.sink.i, ptr %79, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 23
  %81 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %start_frame.i, align 4
  %82 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %interrupt_out_urb, align 4
  %call178 = tail call i32 @usb_submit_urb(ptr noundef %83, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %usb_fill_int_urb.exit.do.body196_crit_edge, label %do.body181

usb_fill_int_urb.exit.do.body196_crit_edge:       ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body196

do.body181:                                       ; preds = %usb_fill_int_urb.exit
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 12
  %84 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool183.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool183.not, label %do.body181.if.then185_crit_edge, label %lor.lhs.false

do.body181.if.then185_crit_edge:                  ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then185

lor.lhs.false:                                    ; preds = %do.body181
  %.b293 = load i1, ptr @cypress_send.__print_once, align 1
  br i1 %.b293, label %lor.lhs.false.if.end190_crit_edge, label %lor.lhs.false.if.then185_crit_edge

lor.lhs.false.if.then185_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then185

lor.lhs.false.if.end190_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then185:                                       ; preds = %lor.lhs.false.if.then185_crit_edge, %do.body181.if.then185_crit_edge
  store i1 true, ptr @cypress_send.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef %call178) #9
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %lor.lhs.false.if.end190_crit_edge
  %85 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %write_urb_in_use, align 4
  %86 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %87) #6
  %comm_is_ok.i = getelementptr inbounds %struct.cypress_private, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %comm_is_ok.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %comm_is_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i, label %if.then.i305, label %if.end.i

if.then.i305:                                     ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %87, i32 noundef %call3.i) #6
  br label %do.body196

if.end.i:                                         ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %comm_is_ok.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %comm_is_ok.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %87, i32 noundef %call3.i) #6
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %91 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %port_number.i, align 4
  %conv12.i = zext i8 %92 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %conv12.i) #9
  br label %do.body196

do.body196:                                       ; preds = %if.end.i, %if.then.i305, %usb_fill_int_urb.exit.do.body196_crit_edge
  %call204 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %93 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cmd_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool210.not = icmp eq i32 %94, 0
  br i1 %tobool210.not, label %do.body196.if.end213_crit_edge, label %if.then211

do.body196.if.end213_crit_edge:                   ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

if.then211:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %cmd_ctrl, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %do.body196.if.end213_crit_edge
  %bytes_out = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytes_out, align 4
  %add214 = add i32 %97, %count.0
  store i32 %add214, ptr %bytes_out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call204) #6
  tail call void @usb_serial_port_softint(ptr noundef %port) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.else.cleanup_crit_edge, %do.end34, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_set_dead(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comm_is_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %comm_is_ok, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #6
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %5 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_number, align 4
  %conv12 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_serial_control(ptr noundef %tty, ptr noundef %port, i32 noundef %baud_rate, i32 noundef %data_bits, i32 noundef %stop_bits, i32 noundef %parity_enable, i32 noundef %parity_type, i32 noundef %cypress_request_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %comm_is_ok = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %comm_is_ok to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comm_is_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 5) #10
  %tobool4.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = zext i32 %cypress_request_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %cypress_request_type, label %if.end6.do.body227_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb157
  ]

if.end6.do.body227_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body227

sw.bb:                                            ; preds = %if.end6
  %baud_rate7 = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %baud_rate7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud_rate7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %baud_rate)
  %tobool8.not = icmp eq i32 %baud_rate, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %baud_rate)
  %cmp.not = icmp eq i32 %7, %baud_rate
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %sw.bb.do.body38_crit_edge, label %do.body

sw.bb.do.body38_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_serial_control.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then15)) #6
          to label %do.end [label %if.then15], !srcloc !239

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_serial_control.__UNIQUE_ID_ddebug240, ptr noundef %dev2, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = load i8, ptr @unstable_bauds, align 1, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.analyze_baud_rate.exit_crit_edge

do.end.analyze_baud_rate.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %analyze_baud_rate.exit

if.end.i:                                         ; preds = %do.end
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 16, i32 7
  %15 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idVendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14183, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 14183
  br i1 %cmp.i.i, label %is_frwd.exit.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

is_frwd.exit.i:                                   ; preds = %if.end.i
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 16, i32 8
  %17 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idProduct.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp4.i.i = icmp eq i16 %18, 256
  br i1 %cmp4.i.i, label %is_frwd.exit.i.analyze_baud_rate.exit_crit_edge, label %is_frwd.exit.i.if.end3.i_crit_edge

is_frwd.exit.i.if.end3.i_crit_edge:               ; preds = %is_frwd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

is_frwd.exit.i.analyze_baud_rate.exit_crit_edge:  ; preds = %is_frwd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %analyze_baud_rate.exit

if.end3.i:                                        ; preds = %is_frwd.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp eq i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4800, i32 %baud_rate)
  %cmp7.i = icmp ugt i32 %baud_rate, 4800
  %or.cond.i = and i1 %cmp7.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.end17.i

do.body.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @analyze_baud_rate.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then13.i)) #6
          to label %analyze_baud_rate.exit [label %if.then13.i], !srcloc !239

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @analyze_baud_rate.__UNIQUE_ID_ddebug238, ptr noundef %dev2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %baud_rate) #6
  br label %do.body38

if.end17.i:                                       ; preds = %if.end3.i
  %chiptype.i = getelementptr inbounds %struct.cypress_private, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %chiptype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chiptype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cond.i = icmp eq i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 601, i32 %baud_rate)
  %cmp18.i = icmp ult i32 %baud_rate, 601
  %or.cond48.i = and i1 %cmp18.i, %cond.i
  br i1 %or.cond48.i, label %do.body20.i, label %if.end17.i.analyze_baud_rate.exit_crit_edge

if.end17.i.analyze_baud_rate.exit_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %analyze_baud_rate.exit

do.body20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @analyze_baud_rate.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then32.i)) #6
          to label %analyze_baud_rate.exit [label %if.then32.i], !srcloc !239

if.then32.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @analyze_baud_rate.__UNIQUE_ID_ddebug239, ptr noundef %dev2, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %baud_rate) #6
  br label %do.body38

analyze_baud_rate.exit:                           ; preds = %do.body20.i, %if.end17.i.analyze_baud_rate.exit_crit_edge, %do.body.i, %is_frwd.exit.i.analyze_baud_rate.exit_crit_edge, %do.end.analyze_baud_rate.exit_crit_edge
  %retval.0.i21 = phi i32 [ %baud_rate, %do.end.analyze_baud_rate.exit_crit_edge ], [ %baud_rate, %is_frwd.exit.i.analyze_baud_rate.exit_crit_edge ], [ %baud_rate, %if.end17.i.analyze_baud_rate.exit_crit_edge ], [ -1, %do.body.i ], [ -1, %do.body20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i21)
  %cmp18 = icmp sgt i32 %retval.0.i21, -1
  br i1 %cmp18, label %if.then19, label %analyze_baud_rate.exit.do.body38_crit_edge

analyze_baud_rate.exit.do.body38_crit_edge:       ; preds = %analyze_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

if.then19:                                        ; preds = %analyze_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_serial_control.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then32)) #6
          to label %do.body38 [label %if.then32], !srcloc !239

if.then32:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_serial_control.__UNIQUE_ID_ddebug241, ptr noundef %dev2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i21) #6
  br label %do.body38

do.body38:                                        ; preds = %if.then32, %if.then19, %analyze_baud_rate.exit.do.body38_crit_edge, %if.then32.i, %if.then13.i, %sw.bb.do.body38_crit_edge
  %new_baudrate.0 = phi i32 [ %retval.0.i21, %if.then32 ], [ %7, %analyze_baud_rate.exit.do.body38_crit_edge ], [ %7, %sw.bb.do.body38_crit_edge ], [ %retval.0.i21, %if.then19 ], [ %7, %if.then13.i ], [ %7, %if.then32.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_serial_control.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then50)) #6
          to label %do.end53 [label %if.then50], !srcloc !239

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_serial_control.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i32 noundef %new_baudrate.0) #6
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38
  %23 = tail call i32 @llvm.bswap.i32(i32 %new_baudrate.0) #6
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i.i, align 8
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 4
  %27 = trunc i32 %data_bits to i8
  %28 = add i8 %27, -5
  %stop_bits.tr = trunc i32 %stop_bits to i8
  %29 = shl i8 %stop_bits.tr, 3
  %parity_enable.tr = trunc i32 %parity_enable to i8
  %30 = shl i8 %parity_enable.tr, 4
  %parity_type.tr = trunc i32 %parity_type to i8
  %31 = shl i8 %parity_type.tr, 5
  %conv54 = or i8 %29, %28
  %conv58 = or i8 %conv54, %30
  %conv63 = or i8 %conv58, %31
  %conv68 = or i8 %conv63, %26
  store i8 %conv68, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_serial_control.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then86)) #6
          to label %do.body90 [label %if.then86], !srcloc !239

if.then86:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_serial_control.__UNIQUE_ID_ddebug243, ptr noundef %dev2, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39) #6
  br label %do.body90

do.body90:                                        ; preds = %if.then86, %do.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_serial_control.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then102)) #6
          to label %do.body116 [label %if.then102], !srcloc !239

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call7.i.i.i, align 8
  %conv104 = zext i8 %33 to i32
  %arrayidx105 = getelementptr i8, ptr %call7.i.i.i, i32 1
  %34 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %35 to i32
  %arrayidx107 = getelementptr i8, ptr %call7.i.i.i, i32 2
  %36 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx107, align 2
  %conv108 = zext i8 %37 to i32
  %arrayidx109 = getelementptr i8, ptr %call7.i.i.i, i32 3
  %38 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %39 to i32
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 4
  %conv112 = zext i8 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_serial_control.__UNIQUE_ID_ddebug244, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef %conv104, i32 noundef %conv106, i32 noundef %conv108, i32 noundef %conv110, i32 noundef %conv112) #6
  br label %do.body116

do.body116:                                       ; preds = %switch.early.test.do.body116_crit_edge, %if.then102, %do.body90
  %tries.0 = phi i32 [ %inc, %switch.early.test.do.body116_crit_edge ], [ 0, %do.body90 ], [ 0, %if.then102 ]
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i = shl i32 %47, 8
  %or121 = or i32 %shl.i, -2147483648
  %call122 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or121, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 5, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tries.0)
  %exitcond43 = icmp eq i32 %tries.0, 3
  br i1 %exitcond43, label %do.end132, label %switch.early.test

switch.early.test:                                ; preds = %do.body116
  %inc = add nuw nsw i32 %tries.0, 1
  %48 = zext i32 %call122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call122, label %switch.early.test.do.body116_crit_edge [
    i32 5, label %switch.early.test.do.body140_crit_edge
    i32 -19, label %switch.early.test.do.end138_crit_edge
  ]

switch.early.test.do.end138_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end138

switch.early.test.do.body140_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body140

switch.early.test.do.body116_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body116

do.end132:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call122)
  %cmp133.not = icmp eq i32 %call122, 5
  br i1 %cmp133.not, label %do.end132.do.body140_crit_edge, label %do.end132.do.end138_crit_edge

do.end132.do.end138_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end138

do.end132.do.body140_crit_edge:                   ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body140

do.end138:                                        ; preds = %do.end132.do.end138_crit_edge, %switch.early.test.do.end138_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.39, i32 noundef %call122) #9
  tail call fastcc void @cypress_set_dead(ptr noundef %port)
  br label %do.body227

do.body140:                                       ; preds = %do.end132.do.body140_crit_edge, %switch.early.test.do.body140_crit_edge
  %call145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %49 = ptrtoint ptr %baud_rate7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %new_baudrate.0, ptr %baud_rate7, align 4
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 4
  %current_config = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 13
  %52 = ptrtoint ptr %current_config to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %current_config, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call145) #6
  br i1 %tobool8.not, label %do.body140.do.body227_crit_edge, label %if.then154

do.body140.do.body227_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body227

if.then154:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %new_baudrate.0, i32 noundef %new_baudrate.0) #6
  br label %do.body227

sw.bb157:                                         ; preds = %if.end6
  %get_cfg_unsafe = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 16
  %53 = ptrtoint ptr %get_cfg_unsafe to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %get_cfg_unsafe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool158.not = icmp eq i32 %54, 0
  br i1 %tobool158.not, label %do.body161, label %sw.bb157.out_crit_edge

sw.bb157.out_crit_edge:                           ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body161:                                       ; preds = %sw.bb157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_serial_control.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_serial_control, %if.then173)) #6
          to label %do.body177 [label %if.then173], !srcloc !239

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_serial_control.__UNIQUE_ID_ddebug245, ptr noundef %dev2, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.39) #6
  br label %do.body177

do.body177:                                       ; preds = %switch.early.test5.do.body177_crit_edge, %if.then173, %do.body161
  %tries.1 = phi i32 [ %inc186, %switch.early.test5.do.body177_crit_edge ], [ 0, %do.body161 ], [ 0, %if.then173 ]
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i22 = shl i32 %60, 8
  %or184 = or i32 %shl.i22, -2147483520
  %call185 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or184, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 5, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tries.1)
  %exitcond = icmp eq i32 %tries.1, 3
  br i1 %exitcond, label %do.end198, label %switch.early.test5

switch.early.test5:                               ; preds = %do.body177
  %inc186 = add nuw nsw i32 %tries.1, 1
  %61 = zext i32 %call185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call185, label %switch.early.test5.do.body177_crit_edge [
    i32 5, label %switch.early.test5.do.body207_crit_edge
    i32 -19, label %switch.early.test5.do.end204_crit_edge
  ]

switch.early.test5.do.end204_crit_edge:           ; preds = %switch.early.test5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end204

switch.early.test5.do.body207_crit_edge:          ; preds = %switch.early.test5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body207

switch.early.test5.do.body177_crit_edge:          ; preds = %switch.early.test5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body177

do.end198:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call185)
  %cmp199.not = icmp eq i32 %call185, 5
  br i1 %cmp199.not, label %do.end198.do.body207_crit_edge, label %do.end198.do.end204_crit_edge

do.end198.do.end204_crit_edge:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end204

do.end198.do.body207_crit_edge:                   ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body207

do.end204:                                        ; preds = %do.end198.do.end204_crit_edge, %switch.early.test5.do.end204_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.39, i32 noundef %call185) #9
  tail call fastcc void @cypress_set_dead(ptr noundef %port)
  br label %out

do.body207:                                       ; preds = %do.end198.do.body207_crit_edge, %switch.early.test5.do.body207_crit_edge
  %call215 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %arrayidx220 = getelementptr i8, ptr %call7.i.i.i, i32 4
  %62 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx220, align 4
  %current_config221 = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 13
  %64 = ptrtoint ptr %current_config221 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %current_config221, align 2
  %65 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call7.i.i.i, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %baud_rate223 = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 17
  %68 = ptrtoint ptr %baud_rate223 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %baud_rate223, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call215) #6
  br label %do.body227

do.body227:                                       ; preds = %do.body207, %if.then154, %do.body140.do.body227_crit_edge, %do.end138, %if.end6.do.body227_crit_edge
  %call235 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %cmd_count = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %cmd_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd_count, align 4
  %inc240 = add i32 %70, 1
  store i32 %inc240, ptr %cmd_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call235) #6
  br label %out

out:                                              ; preds = %do.body227, %do.end204, %sw.bb157.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_hidcom_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cypress_generic_port_probe(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_hidcom_port_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_hidcom_port_probe, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !239

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_hidcom_port_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.72) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chiptype = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chiptype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %chiptype, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_ca42v2_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cypress_generic_port_probe(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ca42v2_port_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ca42v2_port_probe, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !239

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ca42v2_port_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.75) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chiptype = getelementptr inbounds %struct.cypress_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chiptype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %chiptype, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !216, !218, !220, !222, !224, !226, !227, !228, !229}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @__initcall__kmod_cypress_m8__270_1196_usb_serial_module_init6, !1, !"__initcall__kmod_cypress_m8__270_1196_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1196, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author271, !4, !"__UNIQUE_ID_author271", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1198, i32 1}
!5 = !{ptr @__UNIQUE_ID_description272, !6, !"__UNIQUE_ID_description272", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1199, i32 1}
!7 = !{ptr @__UNIQUE_ID_file273, !8, !"__UNIQUE_ID_file273", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1200, i32 1}
!9 = !{ptr @__UNIQUE_ID_license274, !8, !"__UNIQUE_ID_license274", i1 false, i1 false}
!10 = !{ptr @__param_stats, !11, !"__param_stats", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1202, i32 1}
!12 = !{ptr @__UNIQUE_ID_statstype275, !11, !"__UNIQUE_ID_statstype275", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_stats276, !14, !"__UNIQUE_ID_stats276", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1203, i32 1}
!15 = !{ptr @__param_interval, !16, !"__param_interval", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1204, i32 1}
!17 = !{ptr @__UNIQUE_ID_intervaltype277, !16, !"__UNIQUE_ID_intervaltype277", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_interval278, !19, !"__UNIQUE_ID_interval278", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1205, i32 1}
!20 = !{ptr @__param_unstable_bauds, !21, !"__param_unstable_bauds", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1206, i32 1}
!22 = !{ptr @__UNIQUE_ID_unstable_baudstype279, !21, !"__UNIQUE_ID_unstable_baudstype279", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_unstable_bauds280, !24, !"__UNIQUE_ID_unstable_bauds280", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1207, i32 1}
!25 = !{ptr @stats, !26, !"stats", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/cypress_m8.c", i32 44, i32 13}
!27 = !{ptr @interval, !28, !"interval", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/cypress_m8.c", i32 45, i32 12}
!29 = !{ptr @unstable_bauds, !30, !"unstable_bauds", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/cypress_m8.c", i32 46, i32 13}
!31 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @id_table_combined, !33, !"id_table_combined", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/cypress_m8.c", i32 73, i32 35}
!34 = !{ptr @serial_drivers, !35, !"serial_drivers", i1 false, i1 false}
!35 = !{!"../drivers/usb/serial/cypress_m8.c", i32 218, i32 41}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/cypress_m8.c", i32 144, i32 19}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/cypress_m8.c", i32 142, i32 13}
!40 = !{ptr @cypress_earthmate_device, !41, !"cypress_earthmate_device", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/cypress_m8.c", i32 139, i32 33}
!42 = !{ptr @id_table_earthmate, !43, !"id_table_earthmate", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/cypress_m8.c", i32 54, i32 35}
!44 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/cypress_m8.c", i32 509, i32 3}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cypress_earthmate_port_probe.__UNIQUE_ID_ddebug248, !45, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!49 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/cypress_m8.c", i32 524, i32 3}
!51 = !{ptr @cypress_earthmate_port_probe.__UNIQUE_ID_ddebug249, !50, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/cypress_m8.c", i32 446, i32 3}
!54 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cypress_generic_port_probe._entry, !53, !"_entry", i1 false, i1 false}
!58 = !{ptr @cypress_generic_port_probe._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cypress_generic_port_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/cypress_m8.c", i32 455, i32 2}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/cypress_m8.c", i32 484, i32 3}
!64 = !{ptr @cypress_generic_port_probe.__UNIQUE_ID_ddebug246, !63, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/cypress_m8.c", i32 489, i32 3}
!67 = !{ptr @cypress_generic_port_probe.__UNIQUE_ID_ddebug247, !66, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/cypress_m8.c", i32 614, i32 3}
!70 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cypress_open._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cypress_open._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/cypress_m8.c", i32 693, i32 2}
!75 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cypress_send.__UNIQUE_ID_ddebug254, !74, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/cypress_m8.c", i32 698, i32 3}
!79 = !{ptr @cypress_send.__UNIQUE_ID_ddebug255, !78, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/cypress_m8.c", i32 728, i32 3}
!82 = !{ptr @cypress_send.__UNIQUE_ID_ddebug256, !81, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/cypress_m8.c", i32 750, i32 2}
!85 = !{ptr @cypress_send.__UNIQUE_ID_ddebug257, !84, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!86 = distinct !{null, !87, !"__print_once", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/cypress_m8.c", i32 772, i32 3}
!88 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cypress_send._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @cypress_send._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!93 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !92, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!96 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/cypress_m8.c", i32 430, i32 2}
!98 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cypress_set_dead._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @cypress_set_dead._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/serial/cypress_m8.c", i32 646, i32 2}
!103 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cypress_close.__UNIQUE_ID_ddebug252, !102, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/cypress_m8.c", i32 651, i32 3}
!107 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cypress_close._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @cypress_close._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/serial/cypress_m8.c", i32 661, i32 2}
!112 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @cypress_write.__UNIQUE_ID_ddebug253, !111, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!114 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/serial/cypress_m8.c", i32 803, i32 2}
!116 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cypress_write_room.__UNIQUE_ID_ddebug258, !115, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/cypress_m8.c", i32 896, i32 3}
!120 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cypress_set_termios.__UNIQUE_ID_ddebug260, !119, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/cypress_m8.c", i32 902, i32 2}
!124 = !{ptr @cypress_set_termios.__UNIQUE_ID_ddebug261, !123, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/serial/cypress_m8.c", i32 920, i32 3}
!127 = !{ptr @cypress_set_termios.__UNIQUE_ID_ddebug262, !126, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/cypress_m8.c", i32 316, i32 4}
!130 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cypress_serial_control.__UNIQUE_ID_ddebug240, !129, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/cypress_m8.c", i32 320, i32 5}
!134 = !{ptr @cypress_serial_control.__UNIQUE_ID_ddebug241, !133, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/serial/cypress_m8.c", i32 324, i32 3}
!137 = !{ptr @cypress_serial_control.__UNIQUE_ID_ddebug242, !136, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!138 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/serial/cypress_m8.c", i32 337, i32 3}
!140 = !{ptr @cypress_serial_control.__UNIQUE_ID_ddebug243, !139, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/serial/cypress_m8.c", i32 338, i32 3}
!143 = !{ptr @cypress_serial_control.__UNIQUE_ID_ddebug244, !142, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/serial/cypress_m8.c", i32 358, i32 4}
!146 = !{ptr @cypress_serial_control._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cypress_serial_control._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/serial/cypress_m8.c", i32 380, i32 3}
!150 = !{ptr @cypress_serial_control.__UNIQUE_ID_ddebug245, !149, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/serial/cypress_m8.c", i32 395, i32 4}
!153 = !{ptr @cypress_serial_control._entry.47, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cypress_serial_control._entry_ptr.49, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/serial/cypress_m8.c", i32 264, i32 4}
!157 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @analyze_baud_rate.__UNIQUE_ID_ddebug238, !156, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!159 = !{ptr @.str.52, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/serial/cypress_m8.c", i32 276, i32 4}
!161 = !{ptr @analyze_baud_rate.__UNIQUE_ID_ddebug239, !160, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/cypress_m8.c", i32 969, i32 2}
!164 = !{ptr @cypress_chars_in_buffer.__UNIQUE_ID_ddebug263, !163, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!165 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1002, i32 4}
!167 = !{ptr @cypress_unthrottle._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cypress_unthrottle._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.55, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/serial/cypress_m8.c", i32 828, i32 2}
!171 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cypress_tiocmget.__UNIQUE_ID_ddebug259, !170, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1037, i32 3}
!175 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cypress_read_int_callback._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @cypress_read_int_callback._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.59, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1045, i32 3}
!180 = !{ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug264, !179, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!181 = !{ptr @.str.60, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1054, i32 3}
!183 = !{ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug265, !182, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!184 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1077, i32 3}
!186 = !{ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug266, !185, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!187 = !{ptr @.str.62, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1110, i32 3}
!189 = !{ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug267, !188, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!190 = !{ptr @.str.63, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1123, i32 3}
!192 = !{ptr @cypress_read_int_callback.__UNIQUE_ID_ddebug268, !191, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!193 = !{ptr @.str.65, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1154, i32 4}
!195 = !{ptr @cypress_read_int_callback._entry.64, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @cypress_read_int_callback._entry_ptr.66, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.67, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1177, i32 3}
!199 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @cypress_write_int_callback.__UNIQUE_ID_ddebug269, !198, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/serial/cypress_m8.c", i32 1185, i32 3}
!203 = !{ptr @cypress_write_int_callback._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @cypress_write_int_callback._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.70, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/serial/cypress_m8.c", i32 171, i32 19}
!207 = !{ptr @.str.71, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/serial/cypress_m8.c", i32 169, i32 13}
!209 = !{ptr @cypress_hidcom_device, !210, !"cypress_hidcom_device", i1 false, i1 false}
!210 = !{!"../drivers/usb/serial/cypress_m8.c", i32 166, i32 33}
!211 = !{ptr @id_table_cyphidcomrs232, !212, !"id_table_cyphidcomrs232", i1 false, i1 false}
!212 = !{!"../drivers/usb/serial/cypress_m8.c", i32 60, i32 35}
!213 = !{ptr @.str.72, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/serial/cypress_m8.c", i32 540, i32 3}
!215 = !{ptr @cypress_hidcom_port_probe.__UNIQUE_ID_ddebug250, !214, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!216 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/serial/cypress_m8.c", i32 197, i32 19}
!218 = !{ptr @.str.74, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/serial/cypress_m8.c", i32 195, i32 13}
!220 = !{ptr @cypress_ca42v2_device, !221, !"cypress_ca42v2_device", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/cypress_m8.c", i32 192, i32 33}
!222 = !{ptr @id_table_nokiaca42v2, !223, !"id_table_nokiaca42v2", i1 false, i1 false}
!223 = !{!"../drivers/usb/serial/cypress_m8.c", i32 68, i32 35}
!224 = !{ptr @.str.75, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/serial/cypress_m8.c", i32 557, i32 3}
!226 = !{ptr @cypress_ca42v2_port_probe.__UNIQUE_ID_ddebug251, !225, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!227 = !{ptr @__param_str_stats, !11, !"__param_str_stats", i1 false, i1 false}
!228 = !{ptr @__param_str_interval, !16, !"__param_str_interval", i1 false, i1 false}
!229 = !{ptr @__param_str_unstable_bauds, !21, !"__param_str_unstable_bauds", i1 false, i1 false}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{i64 2148726087, i64 2148726092, i64 2148726105, i64 2148726149, i64 2148726183, i64 2148726204}
!240 = !{i8 0, i8 2}
