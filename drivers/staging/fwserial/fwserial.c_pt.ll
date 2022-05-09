; ModuleID = '/llk/IR_all_yes/drivers/staging/fwserial/fwserial.c_pt.bc'
source_filename = "../drivers/staging/fwserial/fwserial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_descriptor = type { %struct.list_head, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.fw_address_region = type { i64, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fwserial_unit_directory_data = type { i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fw_serial = type { ptr, %struct.kref, ptr, ptr, %struct.list_head, %struct.list_head, [32 x ptr] }
%struct.fwtty_port = type { %struct.tty_port, ptr, i32, ptr, %struct.fw_address_handler, ptr, ptr, %struct.wait_queue_head, %struct.delayed_work, i32, i32, %struct.work_struct, i32, %struct.spinlock, i32, %struct.delayed_work, %struct.dma_fifo, i32, i32, i32, i8, i32, ptr, %struct.async_icount, %struct.stats }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.dma_fifo = type { i32, i32, i32, %struct.anon.75, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.anon.75 = type { i8, [3 x i8] }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats = type { i32, i32, i32, i32, i32, i32, i32, [1 x i32], [1 x i32], [1 x i32], [1 x i32] }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.fwtty_peer = type { ptr, ptr, i64, i32, i32, i32, i32, i64, i64, i64, i32, %struct.list_head, %struct.callback_head, %struct.spinlock, ptr, %struct.work_struct, %struct.peer_work_params, %struct.timer_list, i32, %struct.delayed_work, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.peer_work_params = type { %union.anon.74 }
%union.anon.74 = type { %struct.virt_plug_params }
%struct.virt_plug_params = type { i32, i32, i32, i32, i32 }
%struct.fw_csr_iterator = type { ptr, ptr }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.fwtty_transaction = type { %struct.fw_transaction, ptr, ptr, %union.anon.77 }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%union.anon.77 = type { %struct.dma_pending }
%struct.dma_pending = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fwconsole_ops = type { ptr, ptr, ptr }
%struct.anon.78 = type { i16, i16 }
%struct.fwserial_mgmt_pkt = type { %struct.anon.78, %union.anon.79 }
%union.anon.79 = type { %struct.virt_plug_params }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__param_str_ttys = internal constant [21 x i8] c"firewire_serial.ttys\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_ttys = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_ttys = internal constant %struct.kernel_param { ptr @__param_str_ttys, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @num_ttys } }, section "__param", align 4
@__UNIQUE_ID_ttystype234 = internal constant [34 x i8] c"firewire_serial.parmtype=ttys:int\00", section ".modinfo", align 1
@__param_str_auto = internal constant [21 x i8] c"firewire_serial.auto\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@auto_connect = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_auto = internal constant %struct.kernel_param { ptr @__param_str_auto, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @auto_connect } }, section "__param", align 4
@__UNIQUE_ID_autotype235 = internal constant [35 x i8] c"firewire_serial.parmtype=auto:bool\00", section ".modinfo", align 1
@__param_str_loop = internal constant [21 x i8] c"firewire_serial.loop\00", align 1
@create_loop_dev = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_loop = internal constant %struct.kernel_param { ptr @__param_str_loop, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @create_loop_dev } }, section "__param", align 4
@__UNIQUE_ID_looptype236 = internal constant [35 x i8] c"firewire_serial.parmtype=loop:bool\00", section ".modinfo", align 1
@fwserial_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fwserial_probe, ptr @fwserial_update, ptr @fwserial_remove, ptr @fwserial_id_table }, [36 x i8] zeroinitializer }, align 32
@fwserial_unit_directory = internal global { %struct.fw_descriptor, [40 x i8] } { %struct.fw_descriptor { %struct.list_head zeroinitializer, i32 11, i32 0, i32 -788529152, ptr @fwserial_unit_directory_data }, [40 x i8] zeroinitializer }, align 32
@fwserial_mgmt_addr_handler = internal global { %struct.fw_address_handler, [32 x i8] } zeroinitializer, align 32
@fwtty_txn_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fwloop_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fwtty_driver = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@fwserial_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_firewire_serial__289_2881_fwserial_init6 = internal global ptr @fwserial_init, section ".initcall6.init", align 4
@__exitcall_fwserial_exit = internal global ptr @fwserial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [63 x i8] c"firewire_serial.author=Peter Hurley (peter@hurleysoftware.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [55 x i8] c"firewire_serial.description=FireWire Serial TTY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [62 x i8] c"firewire_serial.file=drivers/staging/fwserial/firewire-serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"firewire_serial.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_ttys294 = internal constant [80 x i8] c"firewire_serial.parm=ttys:Number of ttys to create for each local firewire node\00", section ".modinfo", align 1
@__UNIQUE_ID_auto295 = internal constant [78 x i8] c"firewire_serial.parm=auto:Auto-connect a tty to each firewire node discovered\00", section ".modinfo", align 1
@__UNIQUE_ID_loop296 = internal constant [73 x i8] c"firewire_serial.parm=loop:Create a loopback device, fwloop<n>, with ttys\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"firewire_serial\00", [16 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@fwserial_id_table = internal constant { [2 x %struct.ieee1394_device_id], [48 x i8] } { [2 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 12, i32 0, i32 0, i32 13634846, i32 59420, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fwserial_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fwserial_list_mutex, i64 52), ptr getelementptr (i8, ptr @fwserial_list_mutex, i64 52) }, ptr @fwserial_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fwserial_list_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fwserial_list_mutex\00", [44 x i8] zeroinitializer }, align 32
@fwserial_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fwserial_list, ptr @fwserial_list }, [24 x i8] zeroinitializer }, align 32
@num_ports = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fwtty_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @fwtty_port_carrier_raised, ptr @fwtty_port_dtr_rts, ptr @fwtty_port_shutdown, ptr @fwtty_port_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@fwserial_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@fwserial_create.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&port->drain)->work)\00", [55 x i8] zeroinitializer }, align 32
@fwserial_create.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&port->drain)->timer\00", [41 x i8] zeroinitializer }, align 32
@fwserial_create.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&port->emit_breaks)->work)\00", [49 x i8] zeroinitializer }, align 32
@fwserial_create.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&port->emit_breaks)->timer\00", [35 x i8] zeroinitializer }, align 32
@fwserial_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&port->hangup)\00", [63 x i8] zeroinitializer }, align 32
@fwserial_create.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&port->wait_tx\00", [17 x i8] zeroinitializer }, align 32
@fw_high_memory_region = external dso_local constant %struct.fw_address_region, align 8
@fwserial_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 2199, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no space in port table\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fwserial_create\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/fwserial/fwserial.c\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fwserial_create._entry_ptr = internal global ptr @fwserial_create._entry, section ".printk_index", align 4
@fwserial_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.18, i32 2211, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"register tty device error (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@fwserial_create._entry_ptr.23 = internal global ptr @fwserial_create._entry.21, section ".printk_index", align 4
@fwserial_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.18, i32 2229, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"create loop device failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@fwserial_create._entry_ptr.26 = internal global ptr @fwserial_create._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"peers\00", [26 x i8] zeroinitializer }, align 32
@fwtty_peers_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fwtty_peers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@fwtty_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fwtty_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fwserial_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.18, i32 2250, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TTY over FireWire on device %s (guid %016llx)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@fwserial_create._entry_ptr.32 = internal global ptr @fwserial_create._entry.29, section ".printk_index", align 4
@fwserial_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.18, i32 2256, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to add peer unit device (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@fwserial_create._entry_ptr.35 = internal global ptr @fwserial_create._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fwtty_port_carrier_raised.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.18, ptr @.str.37, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fwtty_port_carrier_raised\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@fwtty_port_dtr_rts.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.18, ptr @.str.39, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fwtty_port_dtr_rts\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: on/off: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__fwtty_write_port_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fwtty_log_tx_error = private unnamed_addr constant [19 x i8] c"fwtty_log_tx_error\00", align 1
@fwtty_log_tx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.fwtty_log_tx_error, ptr @.str.18, i32 195, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"card busy\0A\00", [21 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry_ptr = internal global ptr @fwtty_log_tx_error._entry, section ".printk_index", align 4
@fwtty_log_tx_error._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @__func__.fwtty_log_tx_error, ptr @.str.18, i32 198, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad unit addr or write length\0A\00", [33 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry_ptr.48 = internal global ptr @fwtty_log_tx_error._entry.46, section ".printk_index", align 4
@fwtty_log_tx_error._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.fwtty_log_tx_error, ptr @.str.18, i32 201, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed rx\0A\00", [21 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry_ptr.52 = internal global ptr @fwtty_log_tx_error._entry.50, section ".printk_index", align 4
@fwtty_log_tx_error._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.fwtty_log_tx_error, ptr @.str.18, i32 204, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing ack\0A\00", [19 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry_ptr.56 = internal global ptr @fwtty_log_tx_error._entry.54, section ".printk_index", align 4
@fwtty_log_tx_error._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @__func__.fwtty_log_tx_error, ptr @.str.18, i32 207, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remote busy\0A\00", [19 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry_ptr.60 = internal global ptr @fwtty_log_tx_error._entry.58, section ".printk_index", align 4
@fwtty_log_tx_error._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.fwtty_log_tx_error, ptr @.str.18, i32 210, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"failed tx: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@fwtty_log_tx_error._entry_ptr.64 = internal global ptr @fwtty_log_tx_error._entry.62, section ".printk_index", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fwtty_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fwtty_tx.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.18, ptr @.str.67, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fwtty_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: out: %u rem: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@fwtty_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.18, i32 747, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fifo err: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@fwtty_tx._entry_ptr = internal global ptr @fwtty_tx._entry, section ".printk_index", align 4
@fwtty_tx_complete.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.18, ptr @.str.70, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fwtty_tx_complete\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: rcode: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fwtty_emit_breaks.buf = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fwtty_emit_breaks.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.18, ptr @.str.72, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fwtty_emit_breaks\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: sending %d brks\0A\00", [43 x i8] zeroinitializer }, align 32
@fwtty_port_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fwtty_port_handler = private unnamed_addr constant [19 x i8] c"fwtty_port_handler\00", align 1
@fwtty_port_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @__func__.fwtty_port_handler, ptr @.str.18, i32 616, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ignoring unauthenticated data\0A\00", [33 x i8] zeroinitializer }, align 32
@fwtty_port_handler._entry_ptr = internal global ptr @fwtty_port_handler._entry, section ".printk_index", align 4
@__fwserial_peer_by_node_id._entry = internal constant %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.18, i32 1922, ptr @.str.19, ptr @.str.20 }, align 1
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown card (guid %016llx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__fwserial_peer_by_node_id\00", [37 x i8] zeroinitializer }, align 32
@__fwserial_peer_by_node_id._entry_ptr = internal global ptr @__fwserial_peer_by_node_id._entry, section ".printk_index", align 4
@__fwserial_peer_by_node_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__fwserial_lookup_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fwtty_update_port_status.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.18, ptr @.str.78, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fwtty_update_port_status\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: status: %x delta: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@__fwtty_restart_tx.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.18, ptr @.str.80, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__fwtty_restart_tx\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: fifo len: %d avail: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fwtty_rx.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.18, ptr @.str.37, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fwtty_rx\00", [23 x i8] zeroinitializer }, align 32
@fwtty_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fwtty_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.81, ptr @.str.18, i32 574, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flip buffer overrun\0A\00", [43 x i8] zeroinitializer }, align 32
@fwtty_rx._entry_ptr = internal global ptr @fwtty_rx._entry, section ".printk_index", align 4
@port_table_corrupt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@port_table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.83, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @port_table_lock, i64 52), ptr getelementptr (i8, ptr @port_table_lock, i64 52) }, ptr @port_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@port_table = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port_table_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_table_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"card: %s  guid: %016llx\0A\00", [39 x i8] zeroinitializer }, align 32
@fwtty_peers_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s:\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" node:%04x gen:%d\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" sp:%d max:%d guid:%016llx\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" mgmt:%012llx\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" addr:%012llx\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2d:\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" addr:%012llx tx:%d rx:%d\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" cts:%d dsr:%d rng:%d dcd:%d\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" fe:%d oe:%d pe:%d brk:%d\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" dr:%d st:%d err:%d lost:%d\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" pkts:%d thr:%d\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A    \00", [26 x i8] zeroinitializer }, align 32
@fwserial_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"port_table[%d]: %p != ports[%d]: %p\00", [60 x i8] zeroinitializer }, align 32
@fwserial_add_peer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&peer->lock\00", [20 x i8] zeroinitializer }, align 32
@fwserial_add_peer.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&peer->timer)\00", [17 x i8] zeroinitializer }, align 32
@fwserial_add_peer.__key.103 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&peer->work)\00", [33 x i8] zeroinitializer }, align 32
@fwserial_add_peer.__key.105 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&peer->connect)->work)\00", [53 x i8] zeroinitializer }, align 32
@fwserial_add_peer.__key.107 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&peer->connect)->timer\00", [39 x i8] zeroinitializer }, align 32
@fwserial_add_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.18, i32 2048, ptr @.str.111, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"peer added (guid:%016llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fwserial_add_peer\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fwserial_add_peer._entry_ptr = internal global ptr @fwserial_add_peer._entry, section ".printk_index", align 4
@fwserial_connect_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.18, i32 1784, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"avail ports in use\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fwserial_connect_peer\00", [42 x i8] zeroinitializer }, align 32
@fwserial_connect_peer._entry_ptr = internal global ptr @fwserial_connect_peer._entry, section ".printk_index", align 4
@fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.18, ptr @.str.115, i8 1, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fwserial_send_mgmt_sync\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: mgmt write error: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fwserial_virt_plug_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.18, i32 1641, ptr @.str.111, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"peer (guid:%016llx) connected on %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fwserial_virt_plug_complete\00", [36 x i8] zeroinitializer }, align 32
@fwserial_virt_plug_complete._entry_ptr = internal global ptr @fwserial_virt_plug_complete._entry, section ".printk_index", align 4
@fwserial_remove_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.18, i32 2112, ptr @.str.111, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"peer removed (guid:%016llx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fwserial_remove_peer\00", [43 x i8] zeroinitializer }, align 32
@fwserial_remove_peer._entry_ptr = internal global ptr @fwserial_remove_peer._entry, section ".printk_index", align 4
@fwserial_unit_directory_data = internal global { %struct.fwserial_unit_directory_data, [52 x i8] } { %struct.fwserial_unit_directory_data { i32 262144, i32 315624734, i32 318826524, i32 0, i32 -2130706431, i32 327680, [5 x i32] [i32 0, i32 0, i32 1281977973, i32 2015384660, i32 1493172224] }, [52 x i8] zeroinitializer }, align 32
@tty_dev_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fwtty\00", [26 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@fwtty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @fwtty_install, ptr null, ptr @fwtty_open, ptr @fwtty_close, ptr null, ptr @fwtty_cleanup, ptr @fwtty_write, ptr null, ptr null, ptr @fwtty_write_room, ptr @fwtty_chars_in_buffer, ptr @fwtty_ioctl, ptr null, ptr @fwtty_set_termios, ptr @fwtty_throttle, ptr @fwtty_unthrottle, ptr null, ptr null, ptr @fwtty_hangup, ptr @fwtty_break_ctl, ptr null, ptr null, ptr null, ptr @fwtty_send_xchar, ptr @fwtty_tiocmget, ptr @fwtty_tiocmset, ptr null, ptr @fwtty_get_icount, ptr @get_serial_info, ptr @set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr @fwtty_proc_show }, [48 x i8] zeroinitializer }, align 32
@fwserial_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.18, i32 2773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013firewire_serial: register tty driver failed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fwserial_init\00", [18 x i8] zeroinitializer }, align 32
@fwserial_init._entry_ptr = internal global ptr @fwserial_init._entry, section ".printk_index", align 4
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firewire_serial_loop\00", [43 x i8] zeroinitializer }, align 32
@loop_dev_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fwloop\00", [25 x i8] zeroinitializer }, align 32
@fwloop_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @fwloop_install, ptr null, ptr @fwtty_open, ptr @fwtty_close, ptr null, ptr @fwtty_cleanup, ptr @fwtty_write, ptr null, ptr null, ptr @fwtty_write_room, ptr @fwtty_chars_in_buffer, ptr @fwtty_ioctl, ptr null, ptr @fwtty_set_termios, ptr @fwtty_throttle, ptr @fwtty_unthrottle, ptr null, ptr null, ptr @fwtty_hangup, ptr @fwtty_break_ctl, ptr null, ptr null, ptr null, ptr @fwtty_send_xchar, ptr @fwtty_tiocmget, ptr @fwtty_tiocmset, ptr null, ptr @fwtty_get_icount, ptr @get_serial_info, ptr @set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@fwserial_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.121, ptr @.str.18, i32 2798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013firewire_serial: register loop driver failed (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@fwserial_init._entry_ptr.125 = internal global ptr @fwserial_init._entry.123, section ".printk_index", align 4
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fwtty_txn_cache\00", [16 x i8] zeroinitializer }, align 32
@fwserial_mgmt_addr_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 281474710241280, i64 281474976710656 }, [16 x i8] zeroinitializer }, align 32
@fwserial_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.121, ptr @.str.18, i32 2824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013firewire_serial: add management handler failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@fwserial_init._entry_ptr.129 = internal global ptr @fwserial_init._entry.127, section ".printk_index", align 4
@fwserial_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.121, ptr @.str.18, i32 2832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013firewire_serial: add unit descriptor failed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@fwserial_init._entry_ptr.132 = internal global ptr @fwserial_init._entry.130, section ".printk_index", align 4
@fwserial_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.121, ptr @.str.18, i32 2838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013firewire_serial: register fwserial driver failed (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@fwserial_init._entry_ptr.135 = internal global ptr @fwserial_init._entry.133, section ".printk_index", align 4
@fwtty_write.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.18, ptr @.str.37, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fwtty_write\00", [20 x i8] zeroinitializer }, align 32
@fwtty_write_room.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.18, ptr @.str.138, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fwtty_write_room\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@fwtty_chars_in_buffer.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.18, ptr @.str.138, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fwtty_chars_in_buffer\00", [42 x i8] zeroinitializer }, align 32
@fwtty_unthrottle.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.18, ptr @.str.141, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fwtty_unthrottle\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: CRTSCTS: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@fwtty_break_ctl.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.18, ptr @.str.37, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fwtty_break_ctl\00", [16 x i8] zeroinitializer }, align 32
@fwtty_send_xchar.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.18, ptr @.str.144, i8 1, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fwtty_send_xchar\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %02x\0A\00", [22 x i8] zeroinitializer }, align 32
@fwtty_write_xchar.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.18, ptr @.str.144, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fwtty_write_xchar\00", [46 x i8] zeroinitializer }, align 32
@fwtty_write_xchar.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fwtty_tiocmget.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.18, ptr @.str.147, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fwtty_tiocmget\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %x\0A\00", [24 x i8] zeroinitializer }, align 32
@fwtty_tiocmset.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.18, ptr @.str.149, i8 1, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fwtty_tiocmset\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: set: %x clear: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fwserinfo: 1.0 driver: 1.0\0A\00", [36 x i8] zeroinitializer }, align 32
@fwserial_mgmt_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.18, ptr @.str.152, i8 2, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fwserial_mgmt_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: peer(%d:%x) not found\0A\00", [37 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.18, i32 2626, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"peer already removed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fwserial_parse_mgmt_write\00", [38 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry_ptr = internal global ptr @fwserial_parse_mgmt_write._entry, section ".printk_index", align 4
@fwserial_parse_mgmt_write.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.18, ptr @.str.155, i8 2, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: mgmt: hdr.code: %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.154, ptr @.str.18, i32 2638, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"plug req: busy\0A\00", [16 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry_ptr.158 = internal global ptr @fwserial_parse_mgmt_write._entry.156, section ".printk_index", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@fwserial_parse_mgmt_write._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.154, ptr @.str.18, i32 2653, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NACK plug rsp\0A\00", [17 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry_ptr.161 = internal global ptr @fwserial_parse_mgmt_write._entry.159, section ".printk_index", align 4
@fwserial_parse_mgmt_write._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.154, ptr @.str.18, i32 2669, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unplug req: busy\0A\00", [46 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry_ptr.164 = internal global ptr @fwserial_parse_mgmt_write._entry.162, section ".printk_index", align 4
@fwserial_parse_mgmt_write._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.154, ptr @.str.18, i32 2682, ptr @.str.31, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NACK unplug?\0A\00", [18 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry_ptr.167 = internal global ptr @fwserial_parse_mgmt_write._entry.165, section ".printk_index", align 4
@fwserial_parse_mgmt_write._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.154, ptr @.str.18, i32 2690, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown mgmt code %d\0A\00", [42 x i8] zeroinitializer }, align 32
@fwserial_parse_mgmt_write._entry_ptr.170 = internal global ptr @fwserial_parse_mgmt_write._entry.168, section ".printk_index", align 4
@fwserial_handle_plug_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.18, i32 2498, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no more ports avail\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fwserial_handle_plug_req\00", [39 x i8] zeroinitializer }, align 32
@fwserial_handle_plug_req._entry_ptr = internal global ptr @fwserial_handle_plug_req._entry, section ".printk_index", align 4
@fwserial_handle_plug_req._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.18, i32 2540, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PLUG_RSP error (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@fwserial_handle_plug_req._entry_ptr.175 = internal global ptr @fwserial_handle_plug_req._entry.173, section ".printk_index", align 4
@fwserial_handle_unplug_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.18, i32 2592, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UNPLUG_RSP error (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fwserial_handle_unplug_req\00", [37 x i8] zeroinitializer }, align 32
@fwserial_handle_unplug_req._entry_ptr = internal global ptr @fwserial_handle_unplug_req._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.178 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 7, i64 16, i64 18, i64 20]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967285]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 18, i64 19]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.184 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 3, i64 4, i64 32771, i64 32772]
@__sancov_gen_cov_switch_values.185 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 18, i64 19]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 18, i64 19]
@___asan_gen_.190 = private unnamed_addr constant [9 x i8] c"num_ttys\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 31, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"auto_connect\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 33, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"create_loop_dev\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 34, i32 13 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"fwserial_driver\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2402, i32 25 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"fwserial_unit_directory\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2449, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"fwserial_mgmt_addr_handler\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2464, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"fwtty_txn_cache\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 74, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"fwloop_driver\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 77, i32 27 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"fwtty_driver\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 76, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"fwserial_debugfs\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 79, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2405, i32 13 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"fwserial_id_table\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2392, i32 40 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"fwserial_list_mutex\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 53, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"fwserial_list\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 52, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [10 x i8] c"num_ports\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 71, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"fwtty_port_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1499, i32 41 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2168, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2169, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2170, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2171, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2172, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2199, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2210, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2228, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2240, i32 24 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"fwtty_peers_fops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1497, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2242, i32 24 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"fwtty_stats_fops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1481, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2249, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2256, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 919, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 891, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 418, i32 9 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 695, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 195, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 198, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 201, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 204, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 207, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 210, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 723, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 736, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 746, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 673, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 501, i32 20 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 510, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 616, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1921, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1926, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 314, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 277, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 534, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 574, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant [19 x i8] c"port_table_corrupt\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 64, i32 13 }
@___asan_gen_.499 = private unnamed_addr constant [16 x i8] c"port_table_lock\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [11 x i8] c"port_table\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 62, i32 27 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 63, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1489, i32 16 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1438, i32 16 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1439, i32 16 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1440, i32 16 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1442, i32 16 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1443, i32 16 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1472, i32 18 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1476, i32 16 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1405, i32 16 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1407, i32 16 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1409, i32 16 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1421, i32 16 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1423, i32 16 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1426, i32 15 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 867, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2036, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2039, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2040, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2041, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2047, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1784, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1662, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1640, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2111, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [29 x i8] c"fwserial_unit_directory_data\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2434, i32 44 }
@___asan_gen_.634 = private unnamed_addr constant [13 x i8] c"tty_dev_name\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 340, i32 19 }
@___asan_gen_.637 = private unnamed_addr constant [10 x i8] c"fwtty_ops\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1506, i32 36 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2773, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2786, i32 32 }
@___asan_gen_.652 = private unnamed_addr constant [14 x i8] c"loop_dev_name\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [39 x i8] c"../drivers/staging/fwserial/fwserial.h\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 341, i32 19 }
@___asan_gen_.655 = private unnamed_addr constant [11 x i8] c"fwloop_ops\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1529, i32 36 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2798, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2803, i32 38 }
@___asan_gen_.667 = private unnamed_addr constant [26 x i8] c"fwserial_mgmt_addr_region\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2459, i32 39 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2824, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2832, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2838, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1097, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1124, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1138, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1174, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1314, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1147, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 806, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1351, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1361, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 1452, i32 14 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2722, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2626, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2633, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2638, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2653, i32 4 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2669, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2682, i32 5 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2689, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2498, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2540, i32 4 }
@___asan_gen_.796 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.802 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.803 = private constant [39 x i8] c"../drivers/staging/fwserial/fwserial.c\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 2591, i32 4 }
@llvm.compiler.used = appending global [255 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_auto295, ptr @__UNIQUE_ID_autotype235, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_loop296, ptr @__UNIQUE_ID_looptype236, ptr @__UNIQUE_ID_ttys294, ptr @__UNIQUE_ID_ttystype234, ptr @__exitcall_fwserial_exit, ptr @__fwserial_peer_by_node_id._entry, ptr @__fwserial_peer_by_node_id._entry_ptr, ptr @__initcall__kmod_firewire_serial__289_2881_fwserial_init6, ptr @__param_auto, ptr @__param_loop, ptr @__param_ttys, ptr @fwserial_add_peer._entry, ptr @fwserial_add_peer._entry_ptr, ptr @fwserial_connect_peer._entry, ptr @fwserial_connect_peer._entry_ptr, ptr @fwserial_create._entry, ptr @fwserial_create._entry.21, ptr @fwserial_create._entry.24, ptr @fwserial_create._entry.29, ptr @fwserial_create._entry.33, ptr @fwserial_create._entry_ptr, ptr @fwserial_create._entry_ptr.23, ptr @fwserial_create._entry_ptr.26, ptr @fwserial_create._entry_ptr.32, ptr @fwserial_create._entry_ptr.35, ptr @fwserial_exit, ptr @fwserial_handle_plug_req._entry, ptr @fwserial_handle_plug_req._entry.173, ptr @fwserial_handle_plug_req._entry_ptr, ptr @fwserial_handle_plug_req._entry_ptr.175, ptr @fwserial_handle_unplug_req._entry, ptr @fwserial_handle_unplug_req._entry_ptr, ptr @fwserial_init._entry, ptr @fwserial_init._entry.123, ptr @fwserial_init._entry.127, ptr @fwserial_init._entry.130, ptr @fwserial_init._entry.133, ptr @fwserial_init._entry_ptr, ptr @fwserial_init._entry_ptr.125, ptr @fwserial_init._entry_ptr.129, ptr @fwserial_init._entry_ptr.132, ptr @fwserial_init._entry_ptr.135, ptr @fwserial_parse_mgmt_write._entry, ptr @fwserial_parse_mgmt_write._entry.156, ptr @fwserial_parse_mgmt_write._entry.159, ptr @fwserial_parse_mgmt_write._entry.162, ptr @fwserial_parse_mgmt_write._entry.165, ptr @fwserial_parse_mgmt_write._entry.168, ptr @fwserial_parse_mgmt_write._entry_ptr, ptr @fwserial_parse_mgmt_write._entry_ptr.158, ptr @fwserial_parse_mgmt_write._entry_ptr.161, ptr @fwserial_parse_mgmt_write._entry_ptr.164, ptr @fwserial_parse_mgmt_write._entry_ptr.167, ptr @fwserial_parse_mgmt_write._entry_ptr.170, ptr @fwserial_remove_peer._entry, ptr @fwserial_remove_peer._entry_ptr, ptr @fwserial_virt_plug_complete._entry, ptr @fwserial_virt_plug_complete._entry_ptr, ptr @fwtty_log_tx_error._entry, ptr @fwtty_log_tx_error._entry.46, ptr @fwtty_log_tx_error._entry.50, ptr @fwtty_log_tx_error._entry.54, ptr @fwtty_log_tx_error._entry.58, ptr @fwtty_log_tx_error._entry.62, ptr @fwtty_log_tx_error._entry_ptr, ptr @fwtty_log_tx_error._entry_ptr.48, ptr @fwtty_log_tx_error._entry_ptr.52, ptr @fwtty_log_tx_error._entry_ptr.56, ptr @fwtty_log_tx_error._entry_ptr.60, ptr @fwtty_log_tx_error._entry_ptr.64, ptr @fwtty_port_handler._entry, ptr @fwtty_port_handler._entry_ptr, ptr @fwtty_rx._entry, ptr @fwtty_rx._entry_ptr, ptr @fwtty_tx._entry, ptr @fwtty_tx._entry_ptr, ptr @num_ttys, ptr @auto_connect, ptr @create_loop_dev, ptr @fwserial_driver, ptr @fwserial_unit_directory, ptr @fwserial_mgmt_addr_handler, ptr @fwtty_txn_cache, ptr @fwloop_driver, ptr @fwtty_driver, ptr @fwserial_debugfs, ptr @.str, ptr @fwserial_id_table, ptr @fwserial_list_mutex, ptr @.str.1, ptr @.str.2, ptr @fwserial_list, ptr @num_ports, ptr @fwtty_port_ops, ptr @fwserial_create.__key, ptr @.str.3, ptr @fwserial_create.__key.4, ptr @.str.5, ptr @fwserial_create.__key.6, ptr @.str.7, ptr @fwserial_create.__key.8, ptr @.str.9, ptr @fwserial_create.__key.10, ptr @.str.11, ptr @fwserial_create.__key.12, ptr @.str.13, ptr @fwserial_create.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @fwtty_peers_fops, ptr @.str.28, ptr @fwtty_stats_fops, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @fwtty_log_tx_error._rs, ptr @.str.43, ptr @.str.44, ptr @fwtty_log_tx_error._rs.45, ptr @.str.47, ptr @fwtty_log_tx_error._rs.49, ptr @.str.51, ptr @fwtty_log_tx_error._rs.53, ptr @.str.55, ptr @fwtty_log_tx_error._rs.57, ptr @.str.59, ptr @fwtty_log_tx_error._rs.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @fwtty_tx._rs, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @fwtty_emit_breaks.buf, ptr @.str.71, ptr @.str.72, ptr @fwtty_port_handler._rs, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @fwtty_rx._rs, ptr @.str.82, ptr @port_table_corrupt, ptr @port_table_lock, ptr @port_table, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @fwserial_add_peer.__key, ptr @.str.100, ptr @fwserial_add_peer.__key.101, ptr @.str.102, ptr @fwserial_add_peer.__key.103, ptr @.str.104, ptr @fwserial_add_peer.__key.105, ptr @.str.106, ptr @fwserial_add_peer.__key.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @fwserial_unit_directory_data, ptr @tty_dev_name, ptr @fwtty_ops, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @loop_dev_name, ptr @fwloop_ops, ptr @.str.124, ptr @.str.126, ptr @fwserial_mgmt_addr_region, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177], section "llvm.metadata"
@0 = internal global [205 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ttys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_connect to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_loop_dev to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_unit_directory to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_mgmt_addr_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_txn_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwloop_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_peers_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_log_tx_error._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_emit_breaks.buf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_port_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_port_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_table_corrupt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_add_peer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_add_peer.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_add_peer.__key.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_add_peer.__key.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_add_peer.__key.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_add_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_connect_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_virt_plug_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_remove_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_unit_directory_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_dev_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwtty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_dev_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwloop_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_mgmt_addr_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_parse_mgmt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_parse_mgmt_write._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_parse_mgmt_write._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_parse_mgmt_write._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_parse_mgmt_write._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_parse_mgmt_write._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_handle_plug_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_handle_plug_req._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwserial_handle_unplug_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @be32_to_u64(i32 noundef %hi, i32 noundef %lo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %hi to i64
  %shl = shl nuw i64 %conv, 32
  %conv1 = zext i32 %lo to i64
  %or = or i64 %shl, %conv1
  ret i64 %or
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @driver_unregister(ptr noundef nonnull @fwserial_driver) #12
  tail call void @fw_core_remove_descriptor(ptr noundef nonnull @fwserial_unit_directory) #12
  tail call void @fw_core_remove_address_handler(ptr noundef nonnull @fwserial_mgmt_addr_handler) #12
  %0 = load ptr, ptr @fwtty_txn_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  %1 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @fwloop_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %2) #12
  %3 = load ptr, ptr @fwloop_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = load ptr, ptr @fwtty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %4) #12
  %5 = load ptr, ptr @fwtty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %5) #12
  %6 = load ptr, ptr @fwserial_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_descriptor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fwserial_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @create_loop_dev, align 1, !range !429
  %1 = zext i8 %0 to i32
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #12
  store ptr %call, ptr @fwserial_debugfs, align 4
  %2 = load i32, ptr @num_ttys, align 4
  %add = add i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp = icmp sgt i32 %add, 32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub nuw nsw i32 32, %1
  store i32 %sub, ptr @num_ttys, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i32, ptr @num_ttys, align 4
  %add2 = add i32 %3, %1
  store i32 %add2, ptr @num_ports, align 4
  %call3 = tail call ptr @__tty_alloc_driver(i32 noundef 64, ptr noundef null, i32 noundef 12) #12
  store ptr %call3, ptr @fwtty_driver, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call3 to i32
  br label %remove_debugfs

if.end7:                                          ; preds = %if.end
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tty_dev_name, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 8
  %8 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 10
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 11
  %10 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 12
  %11 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag, align 4
  %or = or i32 %13, 2048
  store i32 %or, ptr %c_cflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call3, i32 0, i32 20
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @fwtty_ops, ptr %ops.i, align 4
  %call9 = tail call i32 @tty_register_driver(ptr noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %call9) #15
  br label %put_tty

if.end13:                                         ; preds = %if.end7
  %15 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.end13.if.end40_crit_edge, label %if.then15

if.end13.if.end40_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then15:                                        ; preds = %if.end13
  %16 = load i32, ptr @num_ports, align 4
  %div = sdiv i32 64, %16
  %call16 = tail call ptr @__tty_alloc_driver(i32 noundef %div, ptr noundef null, i32 noundef 12) #12
  store ptr %call16, ptr @fwloop_driver, align 4
  %cmp.i93 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call16 to i32
  br label %unregister_driver

if.end20:                                         ; preds = %if.then15
  %driver_name21 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 4
  %18 = ptrtoint ptr %driver_name21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.122, ptr %driver_name21, align 4
  %name22 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 5
  %19 = ptrtoint ptr %name22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @loop_dev_name, ptr %name22, align 4
  %major23 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 7
  %20 = ptrtoint ptr %major23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %major23, align 4
  %minor_start24 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 8
  %21 = ptrtoint ptr %minor_start24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %minor_start24, align 4
  %type25 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 10
  %22 = ptrtoint ptr %type25 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 3, ptr %type25, align 4
  %subtype26 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 11
  %23 = ptrtoint ptr %subtype26 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %subtype26, align 2
  %init_termios27 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 12
  %24 = call ptr @memcpy(ptr %init_termios27, ptr @tty_std_termios, i32 44)
  %c_cflag29 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %c_cflag29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c_cflag29, align 4
  %or30 = or i32 %26, 2048
  store i32 %or30, ptr %c_cflag29, align 4
  %ops.i94 = getelementptr inbounds %struct.tty_driver, ptr %call16, i32 0, i32 20
  %27 = ptrtoint ptr %ops.i94 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fwloop_ops, ptr %ops.i94, align 4
  %call31 = tail call i32 @tty_register_driver(ptr noundef %call16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end20.if.end40_crit_edge, label %do.end36

if.end20.if.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call31) #15
  br label %put_loop

if.end40:                                         ; preds = %if.end20.if.end40_crit_edge, %if.end13.if.end40_crit_edge
  %call41 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.126, i32 noundef 180, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  store ptr %call41, ptr @fwtty_txn_cache, align 4
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.unregister_loop_crit_edge, label %if.end44

if.end40.unregister_loop_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_loop

if.end44:                                         ; preds = %if.end40
  store i64 24, ptr getelementptr inbounds (%struct.fw_address_handler, ptr @fwserial_mgmt_addr_handler, i32 0, i32 1), align 8
  store ptr @fwserial_mgmt_handler, ptr getelementptr inbounds (%struct.fw_address_handler, ptr @fwserial_mgmt_addr_handler, i32 0, i32 2), align 8
  %call45 = tail call i32 @fw_core_add_address_handler(ptr noundef nonnull @fwserial_mgmt_addr_handler, ptr noundef nonnull @fwserial_mgmt_addr_region) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %call45) #15
  br label %destroy_cache

if.end53:                                         ; preds = %if.end44
  %28 = load i64, ptr @fwserial_mgmt_addr_handler, align 8
  %sub54 = add i64 %28, 268435456
  %shr = lshr i64 %sub54, 2
  %29 = trunc i64 %shr to i32
  %conv = or i32 %29, 1409286144
  store i32 %conv, ptr getelementptr inbounds (%struct.fwserial_unit_directory_data, ptr @fwserial_unit_directory_data, i32 0, i32 3), align 1
  %call56 = tail call i32 @fw_core_add_descriptor(ptr noundef nonnull @fwserial_unit_directory) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %call56) #15
  br label %remove_handler

if.end64:                                         ; preds = %if.end53
  %call65 = tail call i32 @driver_register(ptr noundef nonnull @fwserial_driver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %do.end70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %call65) #15
  tail call void @fw_core_remove_descriptor(ptr noundef nonnull @fwserial_unit_directory) #12
  br label %remove_handler

remove_handler:                                   ; preds = %do.end70, %do.end61
  %err.0 = phi i32 [ %call56, %do.end61 ], [ %call65, %do.end70 ]
  tail call void @fw_core_remove_address_handler(ptr noundef nonnull @fwserial_mgmt_addr_handler) #12
  br label %destroy_cache

destroy_cache:                                    ; preds = %remove_handler, %do.end50
  %err.1 = phi i32 [ %call45, %do.end50 ], [ %err.0, %remove_handler ]
  %30 = load ptr, ptr @fwtty_txn_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %30) #12
  br label %unregister_loop

unregister_loop:                                  ; preds = %destroy_cache, %if.end40.unregister_loop_crit_edge
  %err.2 = phi i32 [ %err.1, %destroy_cache ], [ -12, %if.end40.unregister_loop_crit_edge ]
  %31 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool74.not = icmp eq i8 %31, 0
  br i1 %tobool74.not, label %unregister_loop.unregister_driver_crit_edge, label %if.then75

unregister_loop.unregister_driver_crit_edge:      ; preds = %unregister_loop
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_driver

if.then75:                                        ; preds = %unregister_loop
  call void @__sanitizer_cov_trace_pc() #14
  %32 = load ptr, ptr @fwloop_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %32) #12
  br label %put_loop

put_loop:                                         ; preds = %if.then75, %do.end36
  %err.3.ph = phi i32 [ %err.2, %if.then75 ], [ %call31, %do.end36 ]
  %.pr = load i8, ptr @create_loop_dev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool77.not = icmp eq i8 %.pr, 0
  br i1 %tobool77.not, label %put_loop.unregister_driver_crit_edge, label %if.then78

put_loop.unregister_driver_crit_edge:             ; preds = %put_loop
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_driver

if.then78:                                        ; preds = %put_loop
  call void @__sanitizer_cov_trace_pc() #14
  %33 = load ptr, ptr @fwloop_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %33) #12
  br label %unregister_driver

unregister_driver:                                ; preds = %if.then78, %put_loop.unregister_driver_crit_edge, %unregister_loop.unregister_driver_crit_edge, %if.then18
  %err.4 = phi i32 [ %17, %if.then18 ], [ %err.3.ph, %if.then78 ], [ %err.3.ph, %put_loop.unregister_driver_crit_edge ], [ %err.2, %unregister_loop.unregister_driver_crit_edge ]
  %34 = load ptr, ptr @fwtty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %34) #12
  br label %put_tty

put_tty:                                          ; preds = %unregister_driver, %do.end
  %err.5 = phi i32 [ %call9, %do.end ], [ %err.4, %unregister_driver ]
  %35 = load ptr, ptr @fwtty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %35) #12
  br label %remove_debugfs

remove_debugfs:                                   ; preds = %put_tty, %if.then5
  %err.6 = phi i32 [ %4, %if.then5 ], [ %err.5, %put_tty ]
  %36 = load ptr, ptr @fwserial_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %remove_debugfs, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.6, %remove_debugfs ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwserial_probe(ptr noundef %unit, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fwserial_list_mutex, i32 noundef 0) #12
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @fwserial_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @fwserial_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %serial.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %5 = ptrtoint ptr %serial.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial.0.i, align 4
  %cmp2.i = icmp eq ptr %6, %3
  br i1 %cmp2.i, label %fwserial_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

fwserial_lookup.exit:                             ; preds = %for.body.i
  %serial.0.i.le = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool.not = icmp eq ptr %serial.0.i.le, null
  br i1 %tobool.not, label %fwserial_lookup.exit.if.then_crit_edge, label %if.else

fwserial_lookup.exit.if.then_crit_edge:           ; preds = %fwserial_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %fwserial_lookup.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 160) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %kref.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %kref.i, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %call7.i.i.i, align 8
  %peer_list.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %peer_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %peer_list.i, ptr %peer_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %peer_list.i, ptr %prev.i.i, align 4
  %14 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp367.i = icmp sgt i32 %14, 0
  br i1 %cmp367.i, label %if.end.i.for.body.i7_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i.for.body.i7_crit_edge:                   ; preds = %if.end.i
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.inc.i.for.body.i7_crit_edge, %if.end.i.for.body.i7_crit_edge
  %i.0368.i = phi i32 [ %inc.i, %for.inc.i.for.body.i7_crit_edge ], [ 0, %if.end.i.for.body.i7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i331.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1160) #16
  %tobool5.not.i = icmp eq ptr %call7.i.i331.i, null
  br i1 %tobool5.not.i, label %for.body.i7.free_ports.i_crit_edge, label %if.end7.i

for.body.i7.free_ports.i_crit_edge:               ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ports.i

if.end7.i:                                        ; preds = %for.body.i7
  tail call void @tty_port_init(ptr noundef nonnull %call7.i.i331.i) #12
  %index.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 2
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %index.i, align 4
  %ops.i = getelementptr inbounds %struct.tty_port, ptr %call7.i.i331.i, i32 0, i32 3
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fwtty_port_ops, ptr %ops.i, align 8
  %serial10.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 3
  %18 = ptrtoint ptr %serial10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %serial10.i, align 8
  %call12.i = tail call i32 @tty_buffer_set_limit(ptr noundef nonnull %call7.i.i331.i, i32 noundef 131072) #12
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @fwserial_create.__key, i16 noundef signext 3) #12
  %drain.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %drain.i, i32 noundef 0) #12
  %19 = ptrtoint ptr %drain.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %drain.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @fwserial_create.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry22.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 15, i32 0, i32 1
  %20 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry22.i, ptr %entry22.i, align 4
  %prev.i332.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 15, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i332.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry22.i, ptr %prev.i332.i, align 8
  %func.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 15, i32 0, i32 2
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fwtty_drain_tx, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @fwserial_create.__key.6) #12
  %emit_breaks.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %emit_breaks.i, i32 noundef 0) #12
  %23 = ptrtoint ptr %emit_breaks.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %emit_breaks.i, align 4
  %lockdep_map43.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map43.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @fwserial_create.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry46.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 8, i32 0, i32 1
  %24 = ptrtoint ptr %entry46.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry46.i, ptr %entry46.i, align 8
  %prev.i333.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i333.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry46.i, ptr %prev.i333.i, align 4
  %func49.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 8, i32 0, i32 2
  %26 = ptrtoint ptr %func49.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fwtty_emit_breaks, ptr %func49.i, align 8
  %timer54.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer54.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @fwserial_create.__key.10) #12
  %hangup.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %hangup.i, i32 noundef 0) #12
  %27 = ptrtoint ptr %hangup.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %hangup.i, align 8
  %lockdep_map65.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map65.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @fwserial_create.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry67.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %entry67.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry67.i, ptr %entry67.i, align 4
  %prev.i334.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 11, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i334.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry67.i, ptr %prev.i334.i, align 8
  %func69.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %func69.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fwtty_do_hangup, ptr %func69.i, align 4
  %wait_tx.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait_tx.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @fwserial_create.__key.14) #12
  %max_payload.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 17
  %31 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %max_payload.i, align 8
  %tx_fifo.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 16
  tail call void @dma_fifo_init(ptr noundef %tx_fifo.i) #12
  %peer.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 22
  %32 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr null, ptr %peer.i, align 4
  %arrayidx.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %i.0368.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i331.i, ptr %arrayidx.i, align 4
  %rx_handler.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 4
  %length.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 4100, ptr %length.i, align 8
  %address_callback.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %address_callback.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @fwtty_port_handler, ptr %address_callback.i, align 8
  %callback_data.i = getelementptr inbounds %struct.fwtty_port, ptr %call7.i.i331.i, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i331.i, ptr %callback_data.i, align 4
  %call91.i = tail call i32 @fw_core_add_address_handler(ptr noundef %rx_handler.i, ptr noundef nonnull @fw_high_memory_region) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %for.inc.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_port_destroy(ptr noundef nonnull %call7.i.i331.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i331.i) #12
  br label %free_ports.i

for.inc.i:                                        ; preds = %if.end7.i
  %inc.i = add nuw nsw i32 %i.0368.i, 1
  %37 = load i32, ptr @num_ports, align 4
  %cmp.i = icmp slt i32 %inc.i, %37
  br i1 %cmp.i, label %for.inc.i.for.body.i7_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i7_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i7

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %38 = load i8, ptr @port_table_corrupt, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.i.do.end101.i_crit_edge

for.end.i.do.end101.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

if.end.i.i:                                       ; preds = %for.end.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @port_table_lock, i32 noundef 0) #12
  %39 = load i32, ptr @num_ports, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %i.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %add.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %add.i.i = add i32 %i.0.i.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add.i.i)
  %cmp.i.i = icmp slt i32 %add.i.i, 65
  br i1 %cmp.i.i, label %for.body.i.i, label %fwtty_ports_add.exit.thread354.i

fwtty_ports_add.exit.thread354.i:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  br label %do.end101.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %i.0.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i.i, label %for.cond3.preheader.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp430.i.i = icmp sgt i32 %39, 0
  br i1 %cmp430.i.i, label %for.cond3.preheader.i.i.for.body5.i.i_crit_edge, label %for.cond3.preheader.i.i.fwtty_ports_add.exit.i_crit_edge

for.cond3.preheader.i.i.fwtty_ports_add.exit.i_crit_edge: ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwtty_ports_add.exit.i

for.cond3.preheader.i.i.for.body5.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.body5.i.i.for.body5.i.i_crit_edge, %for.cond3.preheader.i.i.for.body5.i.i_crit_edge
  %j.032.i.i = phi i32 [ %inc10.i.i, %for.body5.i.i.for.body5.i.i_crit_edge ], [ 0, %for.cond3.preheader.i.i.for.body5.i.i_crit_edge ]
  %i.131.i.i = phi i32 [ %inc.i.i, %for.body5.i.i.for.body5.i.i_crit_edge ], [ %i.0.i.i, %for.cond3.preheader.i.i.for.body5.i.i_crit_edge ]
  %arrayidx6.i.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %j.032.i.i
  %42 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.fwtty_port, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.131.i.i, ptr %index.i.i, align 4
  %45 = load ptr, ptr %arrayidx6.i.i, align 4
  %arrayidx9.i.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %i.131.i.i
  %46 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx9.i.i, align 4
  %inc.i.i = add i32 %i.131.i.i, 1
  %inc10.i.i = add nuw nsw i32 %j.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, %39
  br i1 %exitcond.not.i.i, label %for.body5.i.i.fwtty_ports_add.exit.i_crit_edge, label %for.body5.i.i.for.body5.i.i_crit_edge

for.body5.i.i.for.body5.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.i

for.body5.i.i.fwtty_ports_add.exit.i_crit_edge:   ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwtty_ports_add.exit.i

fwtty_ports_add.exit.i:                           ; preds = %for.body5.i.i.fwtty_ports_add.exit.i_crit_edge, %for.cond3.preheader.i.i.fwtty_ports_add.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  %47 = load i32, ptr @num_ttys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp104369.i = icmp sgt i32 %47, 0
  br i1 %cmp104369.i, label %for.body105.lr.ph.i, label %fwtty_ports_add.exit.i.for.end127.i_crit_edge

fwtty_ports_add.exit.i.for.end127.i_crit_edge:    ; preds = %fwtty_ports_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end127.i

for.body105.lr.ph.i:                              ; preds = %fwtty_ports_add.exit.i
  %device112.i = getelementptr inbounds %struct.fw_card, ptr %8, i32 0, i32 1
  br label %for.body105.i

do.end101.i:                                      ; preds = %fwtty_ports_add.exit.thread354.i, %for.end.i.do.end101.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.16) #15
  br label %free_ports.i

for.body105.i:                                    ; preds = %if.end121.i.for.body105.i_crit_edge, %for.body105.lr.ph.i
  %j.0370.i = phi i32 [ 0, %for.body105.lr.ph.i ], [ %inc126.i, %if.end121.i.for.body105.i_crit_edge ]
  %arrayidx107.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %j.0370.i
  %48 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx107.i, align 4
  %50 = load ptr, ptr @fwtty_driver, align 4
  %index111.i = getelementptr inbounds %struct.fwtty_port, ptr %49, i32 0, i32 2
  %51 = ptrtoint ptr %index111.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index111.i, align 4
  %53 = ptrtoint ptr %device112.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device112.i, align 4
  %call113.i = tail call ptr @tty_port_register_device(ptr noundef %49, ptr noundef %50, i32 noundef %52, ptr noundef %54) #12
  %cmp.i335.i = icmp ugt ptr %call113.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335.i, label %if.then115.i, label %if.end121.i

if.then115.i:                                     ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %call113.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.22, i32 noundef %55) #15
  br label %unregister_ttys.i

if.end121.i:                                      ; preds = %for.body105.i
  %56 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx107.i, align 4
  %device124.i = getelementptr inbounds %struct.fwtty_port, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %device124.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call113.i, ptr %device124.i, align 8
  %inc126.i = add nuw nsw i32 %j.0370.i, 1
  %59 = load i32, ptr @num_ttys, align 4
  %cmp104.i = icmp slt i32 %inc126.i, %59
  br i1 %cmp104.i, label %if.end121.i.for.body105.i_crit_edge, label %if.end121.i.for.end127.i_crit_edge

if.end121.i.for.end127.i_crit_edge:               ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end127.i

if.end121.i.for.body105.i_crit_edge:              ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105.i

for.end127.i:                                     ; preds = %if.end121.i.for.end127.i_crit_edge, %fwtty_ports_add.exit.i.for.end127.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %fwtty_ports_add.exit.i.for.end127.i_crit_edge ], [ %inc126.i, %if.end121.i.for.end127.i_crit_edge ]
  %60 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool128.not.i = icmp eq i8 %60, 0
  br i1 %tobool128.not.i, label %for.end127.i.if.end151.i_crit_edge, label %if.then129.i

for.end127.i.if.end151.i_crit_edge:               ; preds = %for.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151.i

if.then129.i:                                     ; preds = %for.end127.i
  %arrayidx131.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %j.0.lcssa.i
  %61 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx131.i, align 4
  %63 = load ptr, ptr @fwloop_driver, align 4
  %index135.i = getelementptr inbounds %struct.fwtty_port, ptr %62, i32 0, i32 2
  %64 = ptrtoint ptr %index135.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index135.i, align 4
  %66 = load i32, ptr @num_ports, align 4
  %div.i = udiv i32 %65, %66
  %device136.i = getelementptr inbounds %struct.fw_card, ptr %8, i32 0, i32 1
  %67 = ptrtoint ptr %device136.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device136.i, align 4
  %call137.i = tail call ptr @tty_port_register_device(ptr noundef %62, ptr noundef %63, i32 noundef %div.i, ptr noundef %68) #12
  %cmp.i336.i = icmp ugt ptr %call137.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i336.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx131.i, align 4
  %device148.i = getelementptr inbounds %struct.fwtty_port, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %device148.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call137.i, ptr %device148.i, align 8
  %72 = load ptr, ptr %arrayidx131.i, align 4
  %loopback.i = getelementptr inbounds %struct.fwtty_port, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i = load i8, ptr %loopback.i, align 4
  %bf.set.i = or i8 %bf.load.i, 16
  store i8 %bf.set.i, ptr %loopback.i, align 4
  br label %if.end151.i

cleanup.i:                                        ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %call137.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.25, i32 noundef %74) #15
  br label %unregister_ttys.i

if.end151.i:                                      ; preds = %cleanup.thread.i, %for.end127.i.if.end151.i_crit_edge
  %75 = load ptr, ptr @fwserial_debugfs, align 4
  %tobool.not.i337.i = icmp eq ptr %75, null
  %cmp.i338.i = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i337.i, %cmp.i338.i
  br i1 %spec.select.i.i, label %if.end151.i.if.end165.i_crit_edge, label %if.then153.i

if.end151.i.if.end165.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165.i

if.then153.i:                                     ; preds = %if.end151.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i339.i = icmp eq ptr %77, null
  br i1 %tobool.not.i339.i, label %if.end.i340.i, label %if.then153.i.dev_name.exit.i_crit_edge

if.then153.i.dev_name.exit.i_crit_edge:           ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i340.i:                                    ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %unit, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i340.i, %if.then153.i.dev_name.exit.i_crit_edge
  %retval.0.i341.i = phi ptr [ %79, %if.end.i340.i ], [ %77, %if.then153.i.dev_name.exit.i_crit_edge ]
  %call156.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i341.i, ptr noundef nonnull %75) #12
  %debugfs.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call156.i, ptr %debugfs.i, align 8
  %tobool.not.i342.i = icmp eq ptr %call156.i, null
  %cmp.i343.i = icmp ugt ptr %call156.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i344.i = or i1 %tobool.not.i342.i, %cmp.i343.i
  br i1 %spec.select.i344.i, label %dev_name.exit.i.if.end165.i_crit_edge, label %if.then159.i

dev_name.exit.i.if.end165.i_crit_edge:            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165.i

if.then159.i:                                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call161.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 292, ptr noundef nonnull %call156.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @fwtty_peers_fops) #12
  %81 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %debugfs.i, align 8
  %call163.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 292, ptr noundef %82, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @fwtty_stats_fops) #12
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then159.i, %dev_name.exit.i.if.end165.i_crit_edge, %if.end151.i.if.end165.i_crit_edge
  %list.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 4
  %83 = load ptr, ptr @fwserial_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @fwserial_list, ptr noundef %83) #12
  br i1 %call.i.i, label %if.end.i.i9, label %if.end165.i.list_add_rcu.exit_crit_edge

if.end165.i.list_add_rcu.exit_crit_edge:          ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_rcu.exit

if.end.i.i9:                                      ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %list.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @fwserial_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !430
  store volatile ptr %list.i, ptr @fwserial_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i9, %if.end165.i.list_add_rcu.exit_crit_edge
  %device170.i = getelementptr inbounds %struct.fw_card, ptr %8, i32 0, i32 1
  %87 = ptrtoint ptr %device170.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device170.i, align 4
  %init_name.i345.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %init_name.i345.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i345.i, align 8
  %tobool.not.i346.i = icmp eq ptr %90, null
  br i1 %tobool.not.i346.i, label %if.end.i347.i, label %list_add_rcu.exit.dev_name.exit349.i_crit_edge

list_add_rcu.exit.dev_name.exit349.i_crit_edge:   ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit349.i

if.end.i347.i:                                    ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  br label %dev_name.exit349.i

dev_name.exit349.i:                               ; preds = %if.end.i347.i, %list_add_rcu.exit.dev_name.exit349.i_crit_edge
  %retval.0.i348.i = phi ptr [ %92, %if.end.i347.i ], [ %90, %list_add_rcu.exit.dev_name.exit349.i_crit_edge ]
  %guid.i = getelementptr inbounds %struct.fw_card, ptr %8, i32 0, i32 14
  %93 = ptrtoint ptr %guid.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %guid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %unit, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i348.i, i64 noundef %94) #15
  %call172.i = tail call fastcc i32 @fwserial_add_peer(ptr noundef nonnull %call7.i.i.i, ptr noundef %unit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172.i)
  %tobool173.not.i = icmp eq i32 %call172.i, 0
  br i1 %tobool173.not.i, label %dev_name.exit349.i.if.end_crit_edge, label %do.end178.i

dev_name.exit349.i.if.end_crit_edge:              ; preds = %dev_name.exit349.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end178.i:                                      ; preds = %dev_name.exit349.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.34, i32 noundef %call172.i) #15
  %debugfs180.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %debugfs180.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %debugfs180.i, align 8
  tail call void @debugfs_remove(ptr noundef %96) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end178.i.list_del_rcu.exit.i_crit_edge

do.end178.i.list_del_rcu.exit.i_crit_edge:        ; preds = %do.end178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %do.end178.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i, align 4
  %99 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %list.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %do.end178.i.list_del_rcu.exit.i_crit_edge
  %prev.i350.i = getelementptr inbounds %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %prev.i350.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i350.i, align 4
  %104 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool182.not.i = icmp eq i8 %104, 0
  br i1 %tobool182.not.i, label %list_del_rcu.exit.i.unregister_ttys.i_crit_edge, label %if.then183.i

list_del_rcu.exit.i.unregister_ttys.i_crit_edge:  ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_ttys.i

if.then183.i:                                     ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = load ptr, ptr @fwloop_driver, align 4
  %arrayidx185.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %j.0.lcssa.i
  %106 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx185.i, align 4
  %index186.i = getelementptr inbounds %struct.fwtty_port, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %index186.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index186.i, align 4
  %110 = load i32, ptr @num_ports, align 4
  %div187.i = udiv i32 %109, %110
  tail call void @tty_unregister_device(ptr noundef %105, i32 noundef %div187.i) #12
  br label %unregister_ttys.i

unregister_ttys.i:                                ; preds = %if.then183.i, %list_del_rcu.exit.i.unregister_ttys.i_crit_edge, %cleanup.i, %if.then115.i
  %j.0361.i = phi i32 [ %j.0370.i, %if.then115.i ], [ %j.0.lcssa.i, %cleanup.i ], [ %j.0.lcssa.i, %if.then183.i ], [ %j.0.lcssa.i, %list_del_rcu.exit.i.unregister_ttys.i_crit_edge ]
  %err.1.i = phi i32 [ %55, %if.then115.i ], [ %74, %cleanup.i ], [ %call172.i, %if.then183.i ], [ %call172.i, %list_del_rcu.exit.i.unregister_ttys.i_crit_edge ]
  %j.1372.i = add i32 %j.0361.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1372.i)
  %cmp190373.i = icmp sgt i32 %j.1372.i, -1
  br i1 %cmp190373.i, label %unregister_ttys.i.for.body191.i_crit_edge, label %unregister_ttys.i.for.end197.i_crit_edge

unregister_ttys.i.for.end197.i_crit_edge:         ; preds = %unregister_ttys.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end197.i

unregister_ttys.i.for.body191.i_crit_edge:        ; preds = %unregister_ttys.i
  br label %for.body191.i

for.body191.i:                                    ; preds = %for.body191.i.for.body191.i_crit_edge, %unregister_ttys.i.for.body191.i_crit_edge
  %j.1374.i = phi i32 [ %j.1.i, %for.body191.i.for.body191.i_crit_edge ], [ %j.1372.i, %unregister_ttys.i.for.body191.i_crit_edge ]
  %111 = load ptr, ptr @fwtty_driver, align 4
  %arrayidx193.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %j.1374.i
  %112 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx193.i, align 4
  %index194.i = getelementptr inbounds %struct.fwtty_port, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %index194.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index194.i, align 4
  tail call void @tty_unregister_device(ptr noundef %111, i32 noundef %115) #12
  %j.1.i = add nsw i32 %j.1374.i, -1
  %cmp190.not.i = icmp eq i32 %j.1374.i, 0
  br i1 %cmp190.not.i, label %for.body191.i.for.end197.i_crit_edge, label %for.body191.i.for.body191.i_crit_edge

for.body191.i.for.body191.i_crit_edge:            ; preds = %for.body191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body191.i

for.body191.i.for.end197.i_crit_edge:             ; preds = %for.body191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end197.i

for.end197.i:                                     ; preds = %for.body191.i.for.end197.i_crit_edge, %unregister_ttys.i.for.end197.i_crit_edge
  tail call fastcc void @kref_put(ptr noundef %kref.i) #12
  br label %if.end

free_ports.i:                                     ; preds = %do.end101.i, %if.then93.i, %for.body.i7.free_ports.i_crit_edge
  %i.0365.i = phi i32 [ %i.0368.i, %if.then93.i ], [ %i.0.lcssa.i, %do.end101.i ], [ %i.0368.i, %for.body.i7.free_ports.i_crit_edge ]
  %err.2.i = phi i32 [ %call91.i, %if.then93.i ], [ -16, %do.end101.i ], [ -12, %for.body.i7.free_ports.i_crit_edge ]
  %i.1375.i = add i32 %i.0365.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1375.i)
  %cmp202376.i = icmp sgt i32 %i.1375.i, -1
  br i1 %cmp202376.i, label %free_ports.i.for.body203.i_crit_edge, label %free_ports.i.for.end214.i_crit_edge

free_ports.i.for.end214.i_crit_edge:              ; preds = %free_ports.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end214.i

free_ports.i.for.body203.i_crit_edge:             ; preds = %free_ports.i
  br label %for.body203.i

for.body203.i:                                    ; preds = %for.body203.i.for.body203.i_crit_edge, %free_ports.i.for.body203.i_crit_edge
  %i.1377.i = phi i32 [ %i.1.i, %for.body203.i.for.body203.i_crit_edge ], [ %i.1375.i, %free_ports.i.for.body203.i_crit_edge ]
  %arrayidx205.i = getelementptr %struct.fw_serial, ptr %call7.i.i.i, i32 0, i32 6, i32 %i.1377.i
  %116 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx205.i, align 4
  %rx_handler206.i = getelementptr inbounds %struct.fwtty_port, ptr %117, i32 0, i32 4
  tail call void @fw_core_remove_address_handler(ptr noundef %rx_handler206.i) #12
  %118 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx205.i, align 4
  tail call void @tty_port_destroy(ptr noundef %119) #12
  %120 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx205.i, align 4
  tail call void @kfree(ptr noundef %121) #12
  %i.1.i = add nsw i32 %i.1377.i, -1
  %cmp202.not.i = icmp eq i32 %i.1377.i, 0
  br i1 %cmp202.not.i, label %for.body203.i.for.end214.i_crit_edge, label %for.body203.i.for.body203.i_crit_edge

for.body203.i.for.body203.i_crit_edge:            ; preds = %for.body203.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body203.i

for.body203.i.for.end214.i_crit_edge:             ; preds = %for.body203.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end214.i

for.end214.i:                                     ; preds = %for.body203.i.for.end214.i_crit_edge, %free_ports.i.for.end214.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end

if.else:                                          ; preds = %fwserial_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call fastcc i32 @fwserial_add_peer(ptr noundef nonnull %serial.0.i.le, ptr noundef %unit)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end214.i, %for.end197.i, %dev_name.exit349.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %if.else ], [ %err.2.i, %for.end214.i ], [ %err.1.i, %for.end197.i ], [ -12, %if.then.if.end_crit_edge ], [ 0, %dev_name.exit349.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @fwserial_list_mutex) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_update(ptr nocapture noundef readonly %unit) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %generation2 = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !431
  %node_id = getelementptr i8, ptr %1, i32 -16
  %6 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_id, align 8
  %node_id6 = getelementptr inbounds %struct.fwtty_peer, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %node_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %node_id6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  %generation13 = getelementptr inbounds %struct.fwtty_peer, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %generation13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %generation13, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_remove(ptr nocapture noundef readonly %unit) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serial1 = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @fwserial_list_mutex, i32 noundef 0) #12
  %lock.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %state.i.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %connect.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 19
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %connect.i) #12
  %work.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 15
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %5 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial1, align 4
  %self.i = getelementptr inbounds %struct.fw_serial, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self.i, align 4
  %cmp.i = icmp eq ptr %8, %1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %self.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %self.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %timer.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 17
  %call6.i = tail call i32 @del_timer(ptr noundef %timer.i) #12
  %port7.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %port7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port7.i, align 8
  store ptr null, ptr %port7.i, align 8
  %list.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_rcu.exit.i_crit_edge

if.end.i.list_del_rcu.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %guid.i = getelementptr inbounds %struct.fwtty_peer, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %guid.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %guid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.118, i64 noundef %22) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.fwserial_remove_peer.exit_crit_edge, label %if.then10.i

list_del_rcu.exit.i.fwserial_remove_peer.exit_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_remove_peer.exit

if.then10.i:                                      ; preds = %list_del_rcu.exit.i
  tail call fastcc void @fwtty_update_port_status(ptr noundef nonnull %11, i32 noundef 0) #12
  %lock.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #12
  %max_payload.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 17
  %23 = ptrtoint ptr %max_payload.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %max_payload.i.i, align 8
  %align.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 16, i32 8
  %24 = ptrtoint ptr %align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %align.i.i.i, align 4
  %neg.i.i.i = sub i32 0, %25
  %and.i.i.i = and i32 %neg.i.i.i, 512
  %26 = tail call i32 @llvm.smax.i32(i32 %and.i.i.i, i32 %25) #12
  %tx_limit2.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 16, i32 9
  %27 = ptrtoint ptr %tx_limit2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tx_limit2.i.i.i, align 4
  %peer.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 22
  %28 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %peer.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #12
  %console.i.i = getelementptr inbounds %struct.tty_port, ptr %11, i32 0, i32 12
  %29 = ptrtoint ptr %console.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %console.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool11.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool11.not.i.i, label %if.then10.i.fwserial_remove_peer.exit_crit_edge, label %land.lhs.true.i.i

if.then10.i.fwserial_remove_peer.exit_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_remove_peer.exit

land.lhs.true.i.i:                                ; preds = %if.then10.i
  %fwcon_ops.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 5
  %30 = ptrtoint ptr %fwcon_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fwcon_ops.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool12.not.i.i = icmp eq ptr %33, null
  br i1 %tobool12.not.i.i, label %land.lhs.true.i.i.fwserial_remove_peer.exit_crit_edge, label %if.then13.i.i

land.lhs.true.i.i.fwserial_remove_peer.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_remove_peer.exit

if.then13.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 6
  %34 = ptrtoint ptr %con_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %con_data.i.i, align 4
  tail call void %33(i32 noundef 2, ptr noundef %35) #12
  br label %fwserial_remove_peer.exit

fwserial_remove_peer.exit:                        ; preds = %if.then13.i.i, %land.lhs.true.i.i.fwserial_remove_peer.exit_crit_edge, %if.then10.i.fwserial_remove_peer.exit_crit_edge, %list_del_rcu.exit.i.fwserial_remove_peer.exit_crit_edge
  tail call void @synchronize_rcu() #12
  tail call void @kfree(ptr noundef %1) #12
  %peer_list = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %peer_list, align 4
  %cmp.i18.not = icmp eq ptr %37, %peer_list
  br i1 %cmp.i18.not, label %if.then, label %fwserial_remove_peer.exit.if.end8_crit_edge

fwserial_remove_peer.exit.if.end8_crit_edge:      ; preds = %fwserial_remove_peer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %fwserial_remove_peer.exit
  %list = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i19 = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i19, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %debugfs = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %46) #12
  %47 = load i32, ptr @num_ttys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp36 = icmp sgt i32 %47, 0
  br i1 %cmp36, label %list_del_rcu.exit.for.body_crit_edge, label %list_del_rcu.exit.for.end_crit_edge

list_del_rcu.exit.for.end_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

list_del_rcu.exit.for.body_crit_edge:             ; preds = %list_del_rcu.exit
  br label %for.body

for.body:                                         ; preds = %fwserial_close_port.exit.for.body_crit_edge, %list_del_rcu.exit.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %fwserial_close_port.exit.for.body_crit_edge ], [ 0, %list_del_rcu.exit.for.body_crit_edge ]
  %48 = load ptr, ptr @fwtty_driver, align 4
  %arrayidx = getelementptr %struct.fw_serial, ptr %3, i32 0, i32 6, i32 %i.037
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %mutex.i = getelementptr inbounds %struct.tty_port, ptr %50, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %call.i20 = tail call ptr @tty_port_tty_get(ptr noundef %50) #12
  %tobool.not.i21 = icmp eq ptr %call.i20, null
  br i1 %tobool.not.i21, label %for.body.if.end.i24_crit_edge, label %if.then.i22

for.body.if.end.i24_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i24

if.then.i22:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_vhangup(ptr noundef nonnull %call.i20) #12
  tail call void @tty_kref_put(ptr noundef nonnull %call.i20) #12
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i22, %for.body.if.end.i24_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #12
  %51 = load ptr, ptr @fwloop_driver, align 4
  %cmp.i23 = icmp eq ptr %51, %48
  %index.i = getelementptr inbounds %struct.fwtty_port, ptr %50, i32 0, i32 2
  %52 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i, align 4
  br i1 %cmp.i23, label %if.then5.i, label %if.end.i24.fwserial_close_port.exit_crit_edge

if.end.i24.fwserial_close_port.exit_crit_edge:    ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_close_port.exit

if.then5.i:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #14
  %54 = load i32, ptr @num_ports, align 4
  %div.i = udiv i32 %53, %54
  br label %fwserial_close_port.exit

fwserial_close_port.exit:                         ; preds = %if.then5.i, %if.end.i24.fwserial_close_port.exit_crit_edge
  %.sink.i = phi i32 [ %div.i, %if.then5.i ], [ %53, %if.end.i24.fwserial_close_port.exit_crit_edge ]
  tail call void @tty_unregister_device(ptr noundef %48, i32 noundef %.sink.i) #12
  %inc = add nuw nsw i32 %i.037, 1
  %55 = load i32, ptr @num_ttys, align 4
  %cmp = icmp slt i32 %inc, %55
  br i1 %cmp, label %fwserial_close_port.exit.for.body_crit_edge, label %fwserial_close_port.exit.for.end_crit_edge

fwserial_close_port.exit.for.end_crit_edge:       ; preds = %fwserial_close_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

fwserial_close_port.exit.for.body_crit_edge:      ; preds = %fwserial_close_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %fwserial_close_port.exit.for.end_crit_edge, %list_del_rcu.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %list_del_rcu.exit.for.end_crit_edge ], [ %inc, %fwserial_close_port.exit.for.end_crit_edge ]
  %56 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool3.not = icmp eq i8 %56, 0
  br i1 %tobool3.not, label %for.end.if.end_crit_edge, label %if.then4

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %for.end
  %57 = load ptr, ptr @fwloop_driver, align 4
  %arrayidx6 = getelementptr %struct.fw_serial, ptr %3, i32 0, i32 6, i32 %i.0.lcssa
  %58 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx6, align 4
  %mutex.i25 = getelementptr inbounds %struct.tty_port, ptr %59, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i25, i32 noundef 0) #12
  %call.i26 = tail call ptr @tty_port_tty_get(ptr noundef %59) #12
  %tobool.not.i27 = icmp eq ptr %call.i26, null
  br i1 %tobool.not.i27, label %if.then4.if.end.i31_crit_edge, label %if.then.i28

if.then4.if.end.i31_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i31

if.then.i28:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_vhangup(ptr noundef nonnull %call.i26) #12
  tail call void @tty_kref_put(ptr noundef nonnull %call.i26) #12
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i28, %if.then4.if.end.i31_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i25) #12
  %60 = load ptr, ptr @fwloop_driver, align 4
  %cmp.i29 = icmp eq ptr %60, %57
  %index.i30 = getelementptr inbounds %struct.fwtty_port, ptr %59, i32 0, i32 2
  %61 = ptrtoint ptr %index.i30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index.i30, align 4
  br i1 %cmp.i29, label %if.then5.i33, label %if.end.i31.fwserial_close_port.exit35_crit_edge

if.end.i31.fwserial_close_port.exit35_crit_edge:  ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_close_port.exit35

if.then5.i33:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  %63 = load i32, ptr @num_ports, align 4
  %div.i32 = udiv i32 %62, %63
  br label %fwserial_close_port.exit35

fwserial_close_port.exit35:                       ; preds = %if.then5.i33, %if.end.i31.fwserial_close_port.exit35_crit_edge
  %.sink.i34 = phi i32 [ %div.i32, %if.then5.i33 ], [ %62, %if.end.i31.fwserial_close_port.exit35_crit_edge ]
  tail call void @tty_unregister_device(ptr noundef %57, i32 noundef %.sink.i34) #12
  br label %if.end

if.end:                                           ; preds = %fwserial_close_port.exit35, %for.end.if.end_crit_edge
  %kref = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 1
  tail call fastcc void @kref_put(ptr noundef %kref)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %fwserial_remove_peer.exit.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fwserial_list_mutex) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fwserial_add_peer(ptr noundef %serial, ptr noundef %unit) unnamed_addr #3 align 64 {
entry:
  %ci = alloca %struct.fw_csr_iterator, align 4
  %key = alloca i32, align 4
  %val = alloca i32, align 4
  %params = alloca %struct.virt_plug_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ci) #12
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ci, align 4, !annotation !433
  %3 = getelementptr inbounds %struct.fw_csr_iterator, ptr %ci, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !433
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #12
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %key, align 4, !annotation !433
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 352) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %unit, ptr %call7.i.i, align 8
  %config_rom = getelementptr i8, ptr %1, i32 1028
  %11 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %14 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx4 = getelementptr i32, ptr %12, i32 4
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %16 to i64
  %or = or i64 %shl, %conv5
  %guid = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %guid to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or, ptr %guid, align 8
  %max_speed = getelementptr i8, ptr %1, i32 -8
  %18 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_speed, align 8
  %speed = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %speed, align 8
  %max_rec.i = getelementptr i8, ptr %1, i32 1040
  %21 = ptrtoint ptr %max_rec.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %max_rec.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 11
  %bf.clear.i = and i16 %bf.lshr.i, 15
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %shl.i = shl nuw nsw i32 2, %bf.cast.i
  %22 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 4096) #12
  %shl.i161 = shl i32 512, %19
  %23 = tail call i32 @llvm.smin.i32(i32 %shl.i161, i32 4096) #12
  %24 = tail call i32 @llvm.smin.i32(i32 %22, i32 %23)
  %max_payload = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_payload, align 4
  %generation10 = getelementptr i8, ptr %1, i32 -12
  %26 = ptrtoint ptr %generation10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %generation10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  %node_id = getelementptr i8, ptr %1, i32 -16
  %28 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node_id, align 8
  %node_id14 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %node_id14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %node_id14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !435
  %generation21 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %generation21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %generation21, align 8
  %directory = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %32 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %directory, align 8
  call void @fw_csr_iterator_init(ptr noundef nonnull %ci, ptr noundef %33) #12
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %call22 = call i32 @fw_csr_iterator_next(ptr noundef nonnull %ci, ptr noundef nonnull %key, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %34 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key, align 4
  %cmp24 = icmp eq i32 %35, 84
  br i1 %cmp24, label %if.then26, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %mul = shl i32 %37, 2
  %conv27 = sext i32 %mul to i64
  %add = add nsw i64 %conv27, 281474708275200
  %mgmt_addr = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %mgmt_addr to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add, ptr %mgmt_addr, align 8
  br label %while.end

while.end:                                        ; preds = %if.then26, %while.cond.while.end_crit_edge
  %mgmt_addr29 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %mgmt_addr29 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mgmt_addr29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp30 = icmp eq i64 %40, 0
  br i1 %cmp30, label %if.then32, label %while.end.do.body34_crit_edge

while.end.do.body34_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %state.i, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.then32, %while.end.do.body34_crit_edge
  %lock = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 13
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.100, ptr noundef nonnull @fwserial_add_peer.__key, i16 noundef signext 3) #12
  %port = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 21
  %42 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %port, align 8
  %timer = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 17
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @fwserial_plug_timeout, i32 noundef 0, ptr noundef nonnull @.str.102, ptr noundef nonnull @fwserial_add_peer.__key.101) #12
  %work = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 15
  call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %43 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 15, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.104, ptr noundef nonnull @fwserial_add_peer.__key.103, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry45 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 15, i32 1
  %44 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry45, ptr %entry45, align 8
  %prev.i = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry45, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 15, i32 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @fwserial_peer_workfn, ptr %func, align 8
  %connect = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 19
  call void @__init_work(ptr noundef %connect, i32 noundef 0) #12
  %47 = ptrtoint ptr %connect to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %connect, align 8
  %lockdep_map59 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map59, ptr noundef nonnull @.str.106, ptr noundef nonnull @fwserial_add_peer.__key.105, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry62 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 1
  %48 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i163 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i163 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry62, ptr %prev.i163, align 8
  %func65 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 2
  %50 = ptrtoint ptr %func65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @fwserial_auto_connect, ptr %func65, align 4
  %timer70 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 19, i32 1
  call void @init_timer_key(ptr noundef %timer70, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.108, ptr noundef nonnull @fwserial_add_peer.__key.107) #12
  %serial75 = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %serial75 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %serial, ptr %serial75, align 4
  %list = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 11
  %peer_list = getelementptr inbounds %struct.fw_serial, ptr %serial, i32 0, i32 5
  %52 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %peer_list, ptr noundef %53) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body34.list_add_rcu.exit_crit_edge

do.body34.list_add_rcu.exit_crit_edge:            ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.fwtty_peer, ptr %call7.i.i, i32 0, i32 11, i32 1
  %55 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %peer_list, ptr %prev2.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !430
  %56 = ptrtoint ptr %peer_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list, ptr %peer_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %57 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %do.body34.list_add_rcu.exit_crit_edge
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  %60 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %guid, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.109, i64 noundef %61) #15
  %62 = ptrtoint ptr %max_rec.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %max_rec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool82.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool82.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %list_add_rcu.exit
  %self = getelementptr inbounds %struct.fw_serial, ptr %serial, i32 0, i32 3
  %63 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %self, align 4
  %64 = load i8, ptr @create_loop_dev, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool84.not = icmp eq i8 %64, 0
  br i1 %tobool84.not, label %if.then83.cleanup_crit_edge, label %if.then85

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then85:                                        ; preds = %if.then83
  %65 = load i32, ptr @num_ttys, align 4
  %call87 = call fastcc ptr @fwserial_claim_port(ptr noundef nonnull %call7.i.i, i32 noundef %65)
  %cmp.i = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then85.cleanup_crit_edge, label %if.then89

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #12
  %66 = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 1
  %67 = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 2
  %68 = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 3
  %69 = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %70 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call87, ptr %port, align 8
  %rx_handler.i = getelementptr inbounds %struct.fwtty_port, ptr %call87, i32 0, i32 4
  %71 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %rx_handler.i, align 8
  %add.i = add i64 %72, 4
  %length.i = getelementptr inbounds %struct.fwtty_port, ptr %call87, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %length.i, align 8
  %75 = trunc i64 %74 to i32
  %conv.i = add i32 %75, -4
  %shr.i = lshr i64 %72, 32
  %conv4.i = trunc i64 %shr.i to i32
  %76 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv4.i, ptr %params, align 4
  %conv5.i = trunc i64 %72 to i32
  %77 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv5.i, ptr %66, align 4
  %shr6.i = lshr i64 %add.i, 32
  %conv7.i = trunc i64 %shr6.i to i32
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv7.i, ptr %67, align 4
  %conv8.i = trunc i64 %add.i to i32
  %79 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv8.i, ptr %68, align 4
  %80 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i, ptr %69, align 4
  call fastcc void @fwserial_virt_plug_complete(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %params)
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  call fastcc void @fwtty_write_port_status(ptr noundef %call87)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #12
  br label %cleanup

if.else:                                          ; preds = %list_add_rcu.exit
  %81 = load i8, ptr @auto_connect, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool96.not = icmp eq i8 %81, 0
  br i1 %tobool96.not, label %if.else.cleanup_crit_edge, label %if.then97

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %82 = load ptr, ptr @system_wq, align 4
  %call.i.i164 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %connect, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %if.else.cleanup_crit_edge, %if.then89, %if.then85.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then85.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %if.then83.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_set_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_drain_tx(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -888
  tail call fastcc void @fwtty_tx(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_emit_breaks(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -684
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %break_last = getelementptr i8, ptr %work, i32 104
  %1 = ptrtoint ptr %break_last to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %break_last, align 4
  %sub = sub i32 %0, %2
  %cps = getelementptr i8, ptr %work, i32 100
  %3 = ptrtoint ptr %cps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cps, align 8
  %mul = mul i32 %sub, %4
  %div = udiv i32 %mul, 100
  %add = add nuw nsw i32 %div, 1
  store i32 %0, ptr %break_last, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_emit_breaks.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_emit_breaks, %if.then)) #12
          to label %while.cond [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %work, i32 -108
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_emit_breaks.__UNIQUE_ID_ddebug243, ptr noundef %6, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %add) #12
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then, %entry
  %brk.0 = phi i32 [ %add11, %while.body.while.cond_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %n.0 = phi i32 [ %sub10, %while.body.while.cond_crit_edge ], [ %add, %entry ], [ %add, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0)
  %tobool6.not = icmp eq i32 %n.0, 0
  br i1 %tobool6.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %7 = tail call i32 @llvm.smin.i32(i32 %n.0, i32 16)
  %call9 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %add.ptr, ptr noundef nonnull @fwtty_emit_breaks.buf, i8 noundef zeroext 1, i32 noundef %7) #12
  %sub10 = sub i32 %n.0, %call9
  %add11 = add i32 %call9, %brk.0
  %cmp12 = icmp slt i32 %call9, %7
  br i1 %cmp12, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %brk.1 = phi i32 [ %add11, %while.body.while.end_crit_edge ], [ %brk.0, %while.cond.while.end_crit_edge ]
  tail call void @tty_flip_buffer_push(ptr noundef %add.ptr) #12
  %mstatus = getelementptr i8, ptr %work, i32 152
  %8 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mstatus, align 4
  %and = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %while.end.if.end19_crit_edge, label %if.then17

while.end.if.end19_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 2) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %while.end.if.end19_crit_edge
  %brk20 = getelementptr i8, ptr %work, i32 424
  %11 = ptrtoint ptr %brk20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brk20, align 4
  %add21 = add i32 %12, %brk.1
  store i32 %add21, ptr %brk20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_do_hangup(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -792
  %call1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 5) #12
  %call3 = tail call ptr @tty_port_tty_get(ptr noundef %add.ptr) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_vhangup(ptr noundef nonnull %call3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @tty_kref_put(ptr noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fifo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_port_handler(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %addr, ptr noundef %data, i32 noundef %len, ptr noundef %callback_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !437
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @__fwserial_peer_by_node_id(ptr noundef %card, i32 noundef %generation, i32 noundef %source)
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i48, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %rcu_read_lock.exit
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !438
  %4 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i55 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.if.then_crit_edge, label %lor.lhs.false

rcu_read_unlock.exit.if.then_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %rcu_read_unlock.exit
  %peer1 = getelementptr inbounds %struct.fwtty_port, ptr %callback_data, i32 0, i32 22
  %8 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %peer1, align 4
  %cmp.not = icmp eq ptr %call, %9
  br i1 %cmp.not, label %if.end12, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %rcu_read_unlock.exit.if.then_crit_edge
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_port_handler._rs, ptr noundef nonnull @__func__.fwtty_port_handler) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.respond_crit_edge, label %do.end9

if.then.respond_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %respond

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %callback_data, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.73) #15
  br label %respond

if.end12:                                         ; preds = %lor.lhs.false
  %12 = zext i32 %tcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tcode, label %if.end12.respond_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

if.end12.respond_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %respond

sw.bb:                                            ; preds = %if.end12
  %rx_handler = getelementptr inbounds %struct.fwtty_port, ptr %callback_data, i32 0, i32 4
  %13 = ptrtoint ptr %rx_handler to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_handler, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %addr)
  %cmp13.not = icmp eq i64 %14, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp15.not = icmp eq i32 %len, 4
  %or.cond = and i1 %cmp15.not, %cmp13.not
  br i1 %or.cond, label %if.else, label %sw.bb.respond_crit_edge

sw.bb.respond_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %respond

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  tail call fastcc void @fwtty_update_port_status(ptr noundef %callback_data, i32 noundef %16)
  br label %respond

sw.bb18:                                          ; preds = %if.end12
  %rx_handler19 = getelementptr inbounds %struct.fwtty_port, ptr %callback_data, i32 0, i32 4
  %17 = ptrtoint ptr %rx_handler19 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_handler19, align 8
  %add = add i64 %18, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp21.not = icmp eq i64 %add, %addr
  br i1 %cmp21.not, label %lor.lhs.false22, label %sw.bb18.respond_crit_edge

sw.bb18.respond_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %respond

lor.lhs.false22:                                  ; preds = %sw.bb18
  %conv = zext i32 %len to i64
  %length = getelementptr inbounds %struct.fwtty_port, ptr %callback_data, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length, align 8
  %sub = add i64 %20, -4
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp24 = icmp ult i64 %sub, %conv
  br i1 %cmp24, label %lor.lhs.false22.respond_crit_edge, label %if.else27

lor.lhs.false22.respond_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %respond

if.else27:                                        ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call fastcc i32 @fwtty_rx(ptr noundef %callback_data, ptr noundef %data, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call28)
  %switch.selectcmp = icmp eq i32 %call28, -5
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %switch.selectcmp46 = icmp eq i32 %call28, 0
  %switch.select47 = select i1 %switch.selectcmp46, i32 0, i32 %switch.select
  br label %respond

respond:                                          ; preds = %if.else27, %lor.lhs.false22.respond_crit_edge, %sw.bb18.respond_crit_edge, %if.else, %sw.bb.respond_crit_edge, %if.end12.respond_crit_edge, %do.end9, %if.then.respond_crit_edge
  %rcode.0 = phi i32 [ 7, %do.end9 ], [ 7, %if.then.respond_crit_edge ], [ 0, %if.else ], [ 7, %sw.bb.respond_crit_edge ], [ 7, %lor.lhs.false22.respond_crit_edge ], [ 7, %sw.bb18.respond_crit_edge ], [ %switch.select47, %if.else27 ], [ 6, %if.end12.respond_crit_edge ]
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef %rcode.0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !439
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !440
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !441

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !442
  %ports1.i = getelementptr i8, ptr %kref, i32 28
  %1 = ptrtoint ptr %ports1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ports1.i, align 4
  %index.i = getelementptr inbounds %struct.fwtty_port, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i, align 4
  tail call void @synchronize_rcu() #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @port_table_lock, i32 noundef 0) #12
  %5 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp82.i = icmp sgt i32 %5, 0
  br i1 %cmp82.i, label %if.then.for.body.i_crit_edge, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.085.i = phi i32 [ %inc.i, %if.end40.i.for.body.i_crit_edge ], [ %4, %if.then.for.body.i_crit_edge ]
  %j.083.i = phi i32 [ %inc49.i, %if.end40.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %i.085.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %ports1.i, i32 %j.083.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %cmp4.i = icmp ne ptr %7, %9
  %conv.i = zext i1 %cmp4.i to i32
  %10 = load i8, ptr @port_table_corrupt, align 1, !range !429
  %11 = zext i8 %10 to i32
  %or.i = or i32 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool6.not.i = icmp eq i32 %or.i, 0
  %12 = trunc i32 %or.i to i8
  store i8 %12, ptr @port_table_corrupt, align 1
  br i1 %tobool6.not.i, label %for.body.i.if.end40.i_crit_edge, label %land.rhs.i

for.body.i.if.end40.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

land.rhs.i:                                       ; preds = %for.body.i
  %.b81.i = load i1, ptr @fwserial_destroy.__already_done, align 1
  br i1 %.b81.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !441

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fwserial_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 868, i32 noundef 9, ptr noundef nonnull @.str.99, i32 noundef %i.085.i, ptr noundef %7, i32 noundef %j.083.i, ptr noundef %9) #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end40.i_crit_edge, %for.body.i.if.end40.i_crit_edge
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx2.i, align 4
  %inc.i = add i32 %i.085.i, 1
  %inc49.i = add nuw nsw i32 %j.083.i, 1
  %14 = load i32, ptr @num_ports, align 4
  %cmp.i = icmp slt i32 %inc49.i, %14
  br i1 %cmp.i, label %if.end40.i.for.body.i_crit_edge, label %if.end40.i.for.end.i_crit_edge

if.end40.i.for.end.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end40.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  %15 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5186.i = icmp sgt i32 %15, 0
  br i1 %cmp5186.i, label %for.end.i.for.body53.i_crit_edge, label %for.end.i.fwserial_destroy.exit_crit_edge

for.end.i.fwserial_destroy.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_destroy.exit

for.end.i.for.body53.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.body53.i.for.body53.i_crit_edge, %for.end.i.for.body53.i_crit_edge
  %j.187.i = phi i32 [ %inc58.i, %for.body53.i.for.body53.i_crit_edge ], [ 0, %for.end.i.for.body53.i_crit_edge ]
  %arrayidx54.i = getelementptr ptr, ptr %ports1.i, i32 %j.187.i
  %16 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx54.i, align 4
  %rx_handler.i = getelementptr inbounds %struct.fwtty_port, ptr %17, i32 0, i32 4
  tail call void @fw_core_remove_address_handler(ptr noundef %rx_handler.i) #12
  %18 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx54.i, align 4
  tail call void @tty_port_destroy(ptr noundef %19) #12
  %20 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx54.i, align 4
  tail call void @kfree(ptr noundef %21) #12
  %inc58.i = add nuw nsw i32 %j.187.i, 1
  %22 = load i32, ptr @num_ports, align 4
  %cmp51.i = icmp slt i32 %inc58.i, %22
  br i1 %cmp51.i, label %for.body53.i.for.body53.i_crit_edge, label %for.body53.i.fwserial_destroy.exit_crit_edge

for.body53.i.fwserial_destroy.exit_crit_edge:     ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_destroy.exit

for.body53.i.for.body53.i_crit_edge:              ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53.i

fwserial_destroy.exit:                            ; preds = %for.body53.i.fwserial_destroy.exit_crit_edge, %for.end.i.fwserial_destroy.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -4
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  br label %return

return:                                           ; preds = %fwserial_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_port_carrier_raised(ptr nocapture noundef readonly %tty_port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mstatus = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 12
  %0 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mstatus, align 4
  %and = and i32 %1, 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_port_carrier_raised.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_port_carrier_raised, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_port_carrier_raised.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %and) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_port_dtr_rts(ptr noundef %tty_port, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_port_dtr_rts.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_port_dtr_rts, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_port_dtr_rts.__UNIQUE_ID_ddebug256, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %on) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %console = getelementptr inbounds %struct.tty_port, ptr %tty_port, i32 0, i32 12
  %2 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool7.not = icmp eq i32 %on, 0
  %mctrl9 = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 14
  %3 = ptrtoint ptr %mctrl9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mctrl9, align 4
  %and = and i32 %4, -7
  %masksel = select i1 %tobool7.not, i32 0, i32 6
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %mctrl9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end.if.end11_crit_edge
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %tty_port)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_port_shutdown(ptr noundef %tty_port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %emit_breaks = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %emit_breaks) #12
  %drain = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 15
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %drain) #12
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %flags = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 8
  %break_ctl = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 20
  %1 = ptrtoint ptr %break_ctl to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %break_ctl, align 4
  %bf.clear3 = and i8 %bf.load, 95
  store i8 %bf.clear3, ptr %break_ctl, align 4
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %tty_port)
  %tx_fifo = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 16
  tail call void @dma_fifo_free(ptr noundef %tx_fifo) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_port_activate(ptr noundef %tty_port, ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  %tx_fifo = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 16
  %max_payload = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 17
  %0 = ptrtoint ptr %max_payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_payload, align 8
  %call = tail call i32 @dma_fifo_alloc(ptr noundef %tx_fifo, i32 noundef 4096, i32 noundef 128, i32 noundef %1, i32 noundef 8, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call1 = tail call fastcc i32 @set_termios(ptr noundef %tty_port, ptr noundef %tty)
  %console = getelementptr inbounds %struct.tty_port, ptr %tty_port, i32 0, i32 12
  %2 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mctrl = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  %spec.store.select = select i1 %cmp.not, i32 0, i32 6
  %3 = ptrtoint ptr %mctrl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select, ptr %mctrl, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool9.not = icmp sgt i32 %5, -1
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %land.lhs.true

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %mstatus = getelementptr inbounds %struct.fwtty_port, ptr %tty_port, i32 0, i32 12
  %6 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mstatus, align 4
  %neg = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool11.not.not = icmp eq i32 %neg, 0
  br i1 %tobool11.not.not, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %8 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %hw_stopped, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %tty_port)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fwtty_write_port_status(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #12
  %mctrl.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 14
  %0 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mctrl.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i2 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i2, i32 0, i32 320
  %and2.i = shl i32 %1, 3
  %2 = and i32 %and2.i, 32
  %and8.i = shl i32 %1, 4
  %3 = and i32 %and8.i, 1048576
  %4 = or i32 %3, %2
  %5 = or i32 %4, %spec.select.i
  %break_ctl.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 20
  %6 = ptrtoint ptr %break_ctl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %break_ctl.i, align 4
  %or15.i = or i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool13.not24.i = icmp slt i8 %bf.load.i, 0
  %status.3.i = select i1 %tobool13.not24.i, i32 %or15.i, i32 %5
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %status.3.i, ptr %status, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !437
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer1 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 22
  %12 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %peer1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @__fwtty_write_port_status.__warned, align 1
  br i1 %.b1, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__fwtty_write_port_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 418, ptr noundef nonnull @.str.40) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  %status_addr = getelementptr inbounds %struct.fwtty_peer, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %status_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %status_addr, align 8
  %16 = load ptr, ptr @fwtty_txn_cache, align 4
  %call.i3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %16, i32 noundef 2592) #12
  %tobool.not.i4 = icmp eq ptr %call.i3, null
  br i1 %tobool.not.i4, label %if.then12.if.end14_crit_edge, label %if.end.i

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %callback1.i = getelementptr inbounds %struct.fwtty_transaction, ptr %call.i3, i32 0, i32 1
  %17 = ptrtoint ptr %callback1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %callback1.i, align 4
  %port2.i = getelementptr inbounds %struct.fwtty_transaction, ptr %call.i3, i32 0, i32 2
  %18 = ptrtoint ptr %port2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %port, ptr %port2.i, align 8
  %generation3.i = getelementptr inbounds %struct.fwtty_peer, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %generation3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %generation3.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !443
  %serial.i = getelementptr inbounds %struct.fwtty_peer, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %node_id.i = getelementptr inbounds %struct.fwtty_peer, ptr %13, i32 0, i32 4
  %25 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node_id.i, align 4
  %speed.i = getelementptr inbounds %struct.fwtty_peer, ptr %13, i32 0, i32 5
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 8
  call void @fw_send_request(ptr noundef %24, ptr noundef nonnull %call.i3, i32 noundef 0, i32 noundef %26, i32 noundef %20, i32 noundef %28, i64 noundef %15, ptr noundef nonnull %status, i32 noundef 4, ptr noundef nonnull @fwtty_common_callback, ptr noundef nonnull %call.i3) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end.i, %if.then12.if.end14_crit_edge, %do.end9.if.end14_crit_edge
  %call.i5 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i5, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.end14
  %call1.i6 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !438
  %29 = call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i12 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_common_callback(ptr noundef %card, i32 noundef %rcode, ptr noundef %payload, i32 noundef %len, ptr noundef %cb_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.fwtty_transaction, ptr %cb_data, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp.not = icmp eq i32 %rcode, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = zext i32 %rcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %rcode, label %do.body43.i [
    i32 16, label %do.body.i
    i32 7, label %do.body4.i
    i32 5, label %do.body14.i
    i32 20, label %do.body24.i
    i32 18, label %do.body34.i
  ]

do.body.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_log_tx_error._rs, ptr noundef nonnull @__func__.fwtty_log_tx_error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end_crit_edge, label %do.end.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %device.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44) #15
  br label %if.end

do.body4.i:                                       ; preds = %if.then
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_log_tx_error._rs.45, ptr noundef nonnull @__func__.fwtty_log_tx_error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body4.i.if.end_crit_edge, label %do.end9.i

do.body4.i.if.end_crit_edge:                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end9.i:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %device10.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %device10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device10.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.47) #15
  br label %if.end

do.body14.i:                                      ; preds = %if.then
  %call15.i = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_log_tx_error._rs.49, ptr noundef nonnull @__func__.fwtty_log_tx_error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.if.end_crit_edge, label %do.end19.i

do.body14.i.if.end_crit_edge:                     ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %device20.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %device20.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device20.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.51) #15
  br label %if.end

do.body24.i:                                      ; preds = %if.then
  %call25.i = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_log_tx_error._rs.53, ptr noundef nonnull @__func__.fwtty_log_tx_error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %do.body24.i.if.end_crit_edge, label %do.end29.i

do.body24.i.if.end_crit_edge:                     ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end29.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  %device30.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %device30.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device30.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.55) #15
  br label %if.end

do.body34.i:                                      ; preds = %if.then
  %call35.i = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_log_tx_error._rs.57, ptr noundef nonnull @__func__.fwtty_log_tx_error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.if.end_crit_edge, label %do.end39.i

do.body34.i.if.end_crit_edge:                     ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end39.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  %device40.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %device40.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device40.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.59) #15
  br label %if.end

do.body43.i:                                      ; preds = %if.then
  %call44.i = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_log_tx_error._rs.61, ptr noundef nonnull @__func__.fwtty_log_tx_error) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %do.body43.i.if.end_crit_edge, label %do.end48.i

do.body43.i.if.end_crit_edge:                     ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end48.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #14
  %device49.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %device49.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device49.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.63, i32 noundef %rcode) #15
  br label %if.end

if.end:                                           ; preds = %do.end48.i, %do.body43.i.if.end_crit_edge, %do.end39.i, %do.body34.i.if.end_crit_edge, %do.end29.i, %do.body24.i.if.end_crit_edge, %do.end19.i, %do.body14.i.if.end_crit_edge, %do.end9.i, %do.body4.i.if.end_crit_edge, %do.end.i, %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %callback = getelementptr inbounds %struct.fwtty_transaction, ptr %cb_data, i32 0, i32 1
  %15 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callback, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %16(ptr noundef %card, i32 noundef %rcode, ptr noundef %payload, i32 noundef %len, ptr noundef %cb_data) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %17 = load ptr, ptr @fwtty_txn_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %cb_data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_termios(ptr nocapture noundef %port, ptr noundef %tty) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #12
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call, i32 noundef %call) #12
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = select i1 %tobool.not, i32 14, i32 16
  %and5 = lshr i32 %1, 7
  %2 = and i32 %and5, 2
  %add8 = add nuw nsw i32 %add, %2
  %and11 = lshr i32 %1, 4
  %3 = and i32 %and11, 3
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %3, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb19
    i32 3, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %not.tobool.not = xor i1 %tobool.not, true
  %cond16.neg = sext i1 %not.tobool.not to i32
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb19, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 6, %sw.bb21 ], [ 4, %sw.bb19 ], [ %cond16.neg, %sw.bb ], [ 2, %entry.sw.epilog_crit_edge ]
  %add22 = add nsw i32 %add8, %.sink
  %shl = shl i32 %call, 1
  %div = udiv i32 %shl, %add22
  %cps = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 9
  %5 = ptrtoint ptr %cps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %cps, align 8
  %status_mask = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 18
  %6 = ptrtoint ptr %status_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %status_mask, align 4
  %7 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %termios, align 4
  %and24 = and i32 %8, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.store.select = select i1 %tobool25.not, i32 2, i32 18
  %9 = ptrtoint ptr %status_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %status_mask, align 4
  %ignore_mask = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 19
  %10 = ptrtoint ptr %ignore_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ignore_mask, align 8
  %11 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %termios, align 4
  %and29 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %sw.epilog.if.end42_crit_edge, label %if.then31

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %ignore_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %ignore_mask, align 8
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %and36 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %spec.store.select81 = select i1 %tobool37.not, i32 16, i32 18
  %16 = ptrtoint ptr %ignore_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select81, ptr %ignore_mask, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then31, %sw.epilog.if.end42_crit_edge
  %17 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag, align 4
  %write_only = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 20
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, -1
  %21 = ptrtoint ptr %write_only to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %write_only, align 4
  %22 = lshr i8 %20, 1
  %bf.shl = and i8 %22, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %write_only, align 4
  %23 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool49.not = icmp eq i8 %23, 0
  br i1 %tobool49.not, label %if.end42.if.end55_crit_edge, label %if.then50

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %24 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_lflag, align 4
  %and52 = and i32 %25, -3705
  store i32 %and52, ptr %c_lflag, align 4
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_oflag, align 4
  %and54 = and i32 %27, -5
  store i32 %and54, ptr %c_oflag, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end42.if.end55_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwtty_tx(ptr noundef %port, i1 noundef zeroext %drain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tty_port_tty_get(ptr noundef %port) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !437
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %peer2 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 22
  %4 = ptrtoint ptr %peer2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %peer2, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @fwtty_tx.__warned, align 1
  br i1 %.b1, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fwtty_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 711, ptr noundef nonnull @.str.40) #12
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %do.end13.out_crit_edge, label %if.end17

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %do.end13
  %flags = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 21
  %call18 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.cond.preheader, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.cond.preheader:                             ; preds = %if.end17
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %call, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stopped, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool22.not30 = icmp eq i8 %7, 0
  br i1 %tobool22.not30, label %land.lhs.true23.lr.ph, label %while.cond.preheader.if.then85_crit_edge

while.cond.preheader.if.then85_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

land.lhs.true23.lr.ph:                            ; preds = %while.cond.preheader
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %call, i32 0, i32 21
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 13
  %tx_fifo = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16
  %device = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %fifo_addr = getelementptr inbounds %struct.fwtty_peer, ptr %5, i32 0, i32 9
  %generation3.i = getelementptr inbounds %struct.fwtty_peer, ptr %5, i32 0, i32 3
  %serial.i = getelementptr inbounds %struct.fwtty_peer, ptr %5, i32 0, i32 1
  %node_id.i = getelementptr inbounds %struct.fwtty_peer, ptr %5, i32 0, i32 4
  %speed.i = getelementptr inbounds %struct.fwtty_peer, ptr %5, i32 0, i32 5
  %sent = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 24, i32 4
  %drain.not = xor i1 %drain, true
  %8 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool24.not41 = icmp eq i32 %9, 0
  br i1 %tobool24.not41, label %land.lhs.true23.lr.ph.land.rhs_crit_edge, label %land.lhs.true23.lr.ph.while.end_crit_edge

land.lhs.true23.lr.ph.while.end_crit_edge:        ; preds = %land.lhs.true23.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true23.lr.ph.land.rhs_crit_edge:         ; preds = %land.lhs.true23.lr.ph
  br label %land.rhs

while.cond:                                       ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stopped, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true23:                                  ; preds = %while.cond
  %12 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_stopped, align 4
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %land.lhs.true23.land.rhs_crit_edge, label %land.lhs.true23.while.end_crit_edge

land.lhs.true23.while.end_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.lhs.true23.land.rhs_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true23.land.rhs_crit_edge, %land.lhs.true23.lr.ph.land.rhs_crit_edge
  %n.03142 = phi i32 [ %call32, %land.lhs.true23.land.rhs_crit_edge ], [ -11, %land.lhs.true23.lr.ph.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %17 = load ptr, ptr @fwtty_txn_cache, align 4
  %call28 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 2592) #12
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %while.body.if.then85_crit_edge, label %if.end31

while.body.if.then85_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.end31:                                         ; preds = %while.body
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %18 = getelementptr inbounds %struct.fwtty_transaction, ptr %call28, i32 0, i32 3
  %call32 = tail call i32 @dma_fifo_out_pend(ptr noundef %tx_fifo, ptr noundef %18) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_tx.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_tx, %if.then42)) #12
          to label %do.end46 [label %if.then42], !srcloc !436

if.then42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 8
  %len43 = getelementptr inbounds %struct.fwtty_transaction, ptr %call28, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len43, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_tx.__UNIQUE_ID_ddebug252, ptr noundef %20, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %22, i32 noundef %call32) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.then47, label %if.end68

if.then47:                                        ; preds = %do.end46
  %23 = load ptr, ptr @fwtty_txn_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef nonnull %call28) #12
  %24 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %call32, label %if.else52 [
    i32 -11, label %if.then49
    i32 -61, label %if.then47.if.then85_crit_edge
  ]

if.then47.if.then85_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %tx_stall = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 24, i32 2
  %25 = ptrtoint ptr %tx_stall to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_stall, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %tx_stall, align 4
  br label %if.then85

if.else52:                                        ; preds = %if.then47
  %fifo_errs = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 24, i32 3
  %27 = ptrtoint ptr %fifo_errs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fifo_errs, align 4
  %inc54 = add i32 %28, 1
  store i32 %inc54, ptr %fifo_errs, align 4
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_tx._rs, ptr noundef nonnull @.str.66) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else52.switch.early.test_crit_edge, label %do.end61

if.else52.switch.early.test_crit_edge:            ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  br label %switch.early.test

do.end61:                                         ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.68, i32 noundef %call32) #15
  br label %switch.early.test

if.end68:                                         ; preds = %do.end46
  %31 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fifo_addr, align 8
  %data = getelementptr inbounds %struct.fwtty_transaction, ptr %call28, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %len69 = getelementptr inbounds %struct.fwtty_transaction, ptr %call28, i32 0, i32 3, i32 0, i32 2
  %35 = ptrtoint ptr %len69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len69, align 8
  %callback1.i = getelementptr inbounds %struct.fwtty_transaction, ptr %call28, i32 0, i32 1
  %37 = ptrtoint ptr %callback1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @fwtty_tx_complete, ptr %callback1.i, align 4
  %port2.i = getelementptr inbounds %struct.fwtty_transaction, ptr %call28, i32 0, i32 2
  %38 = ptrtoint ptr %port2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %port, ptr %port2.i, align 8
  %39 = ptrtoint ptr %generation3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %generation3.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !444
  %41 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serial.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %node_id.i, align 4
  %47 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed.i, align 8
  tail call void @fw_send_request(ptr noundef %44, ptr noundef nonnull %call28, i32 noundef 1, i32 noundef %46, i32 noundef %40, i32 noundef %48, i64 noundef %32, ptr noundef %34, i32 noundef %36, ptr noundef nonnull @fwtty_common_callback, ptr noundef nonnull %call28) #12
  %49 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sent, align 4
  %inc71 = add i32 %50, 1
  store i32 %inc71, ptr %sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp72 = icmp eq i32 %call32, 0
  br i1 %cmp72, label %if.end68.if.then85_crit_edge, label %lor.lhs.false

if.end68.if.then85_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

lor.lhs.false:                                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call32)
  %cmp75 = icmp ult i32 %call32, 128
  %or.cond = select i1 %drain.not, i1 %cmp75, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then85_crit_edge, label %while.cond

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %land.lhs.true23.while.end_crit_edge, %while.cond.while.end_crit_edge, %land.lhs.true23.lr.ph.while.end_crit_edge
  %n.0.lcssa = phi i32 [ -11, %land.lhs.true23.lr.ph.while.end_crit_edge ], [ %call32, %while.cond.while.end_crit_edge ], [ %call32, %land.lhs.true23.while.end_crit_edge ], [ %n.03142, %land.rhs.while.end_crit_edge ]
  %n.0.fr = freeze i32 %n.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.0.fr)
  %cmp78 = icmp sgt i32 %n.0.fr, -1
  br i1 %cmp78, label %while.end.if.then85_crit_edge, label %while.end.switch.early.test_crit_edge

while.end.switch.early.test_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %switch.early.test

while.end.if.then85_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

switch.early.test:                                ; preds = %while.end.switch.early.test_crit_edge, %do.end61, %if.else52.switch.early.test_crit_edge
  %n.119 = phi i32 [ %n.0.fr, %while.end.switch.early.test_crit_edge ], [ %call32, %if.else52.switch.early.test_crit_edge ], [ %call32, %do.end61 ]
  %51 = zext i32 %n.119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %n.119, label %switch.early.test.if.end103_crit_edge [
    i32 -11, label %switch.early.test.if.then85_crit_edge
    i32 -12, label %switch.early.test.if.then85_crit_edge47
    i32 -61, label %switch.early.test.if.then85_crit_edge48
  ]

switch.early.test.if.then85_crit_edge48:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

switch.early.test.if.then85_crit_edge47:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

switch.early.test.if.then85_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

switch.early.test.if.end103_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then85:                                        ; preds = %switch.early.test.if.then85_crit_edge, %switch.early.test.if.then85_crit_edge47, %switch.early.test.if.then85_crit_edge48, %while.end.if.then85_crit_edge, %lor.lhs.false.if.then85_crit_edge, %if.end68.if.then85_crit_edge, %if.then49, %if.then47.if.then85_crit_edge, %while.body.if.then85_crit_edge, %while.cond.preheader.if.then85_crit_edge
  %n.120 = phi i32 [ %n.119, %switch.early.test.if.then85_crit_edge ], [ %n.119, %switch.early.test.if.then85_crit_edge47 ], [ %n.119, %switch.early.test.if.then85_crit_edge48 ], [ %n.0.fr, %while.end.if.then85_crit_edge ], [ -11, %if.then49 ], [ %call32, %if.then47.if.then85_crit_edge ], [ -11, %while.cond.preheader.if.then85_crit_edge ], [ -12, %while.body.if.then85_crit_edge ], [ 0, %if.end68.if.then85_crit_edge ], [ %call32, %lor.lhs.false.if.then85_crit_edge ]
  %lock86 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock86) #12
  %tx_fifo87 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16
  %52 = ptrtoint ptr %tx_fifo87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_fifo87, align 4
  %out.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 1
  %54 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %tobool89.not = icmp eq i32 %53, %55
  br i1 %tobool89.not, label %if.then85.if.end94_crit_edge, label %if.then90

if.then85.if.end94_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %n.120)
  %cmp91 = icmp eq i32 %n.120, -12
  %cond = select i1 %cmp91, i32 100, i32 1
  %drain92 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %drain92, i32 noundef %cond) #12
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.then85.if.end94_crit_edge
  %size.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 4
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 4
  %avail.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 7
  %59 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %avail.i, align 4
  %sub.i6 = sub i32 %58, %60
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock86) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.i6)
  %cmp100 = icmp slt i32 %sub.i6, 256
  %or.cond5 = select i1 %drain, i1 %cmp100, i1 false
  br i1 %or.cond5, label %if.then101, label %if.end94.if.end103_crit_edge

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then101:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_wakeup(ptr noundef nonnull %call) #12
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end94.if.end103_crit_edge, %switch.early.test.if.end103_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #12
  %wait_tx = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait_tx, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %out

out:                                              ; preds = %if.end103, %if.end17.out_crit_edge, %do.end13.out_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i7, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %out
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !438
  %61 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i14 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @tty_kref_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fifo_out_pend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_tx_complete(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %data, i32 noundef %length, ptr noundef %txn) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.fwtty_transaction, ptr %txn, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_tx_complete.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_tx_complete, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_tx_complete.__UNIQUE_ID_ddebug249, ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %rcode) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cond = icmp eq i32 %rcode, 0
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %tx_fifo = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16
  %4 = getelementptr inbounds %struct.fwtty_transaction, ptr %txn, i32 0, i32 3
  %call4 = tail call i32 @dma_fifo_out_complete(ptr noundef %tx_fifo, ptr noundef %4) #12
  %size.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 4
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %avail.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 7
  %7 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avail.i, align 4
  %sub.i = sub i32 %6, %8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %len8 = getelementptr inbounds %struct.fwtty_transaction, ptr %txn, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len8, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 4
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx, align 8
  %add = add i32 %12, %10
  store i32 %add, ptr %tx, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dropped = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 24, i32 1
  %13 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dropped, align 4
  %add16 = add i32 %14, %10
  store i32 %add16, ptr %dropped, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 256
  br i1 %cmp, label %if.then17, label %sw.epilog.if.end19_crit_edge

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_port_tty_wakeup(ptr noundef %1) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %sw.epilog.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fifo_out_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fwserial_peer_by_node_id(ptr noundef readonly %card, i32 noundef %generation, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b24.i = load i1, ptr @__fwserial_lookup_rcu.__warned, align 1
  br i1 %.b24.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__fwserial_lookup_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1887, ptr noundef nonnull @.str.76) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @fwserial_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @fwserial_list
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %serial.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %1 = ptrtoint ptr %serial.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial.0.i, align 4
  %cmp10.i = icmp eq ptr %2, %card
  br i1 %cmp10.i, label %__fwserial_lookup_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__fwserial_lookup_rcu.exit:                       ; preds = %for.body.i
  %serial.0.i.le = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool.not = icmp eq ptr %serial.0.i.le, null
  br i1 %tobool.not, label %__fwserial_lookup_rcu.exit.do.end_crit_edge, label %do.body1

__fwserial_lookup_rcu.exit.do.end_crit_edge:      ; preds = %__fwserial_lookup_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %__fwserial_lookup_rcu.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %guid = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 14
  %5 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %guid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.74, i64 noundef %6) #15
  br label %cleanup38

do.body1:                                         ; preds = %__fwserial_lookup_rcu.exit
  %call2 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.body1.do.end11_crit_edge

do.body1.do.end11_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true:                                    ; preds = %do.body1
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @__fwserial_peer_by_node_id.__warned, align 1
  br i1 %.b48, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__fwserial_peer_by_node_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1926, ptr noundef nonnull @.str.76) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %do.body1.do.end11_crit_edge
  %peer_list = getelementptr i8, ptr %.pn.i, i32 8
  %7 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn56 = load volatile ptr, ptr %peer_list, align 4
  %cmp.not57 = icmp eq ptr %.pn56, %peer_list
  br i1 %cmp.not57, label %do.end11.cleanup38_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.cleanup38_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end11.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn56, %do.end11.for.body_crit_edge ]
  %generation17 = getelementptr i8, ptr %.pn58, i32 -44
  %8 = ptrtoint ptr %generation17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation17, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %generation)
  %cmp24 = icmp eq i32 %9, %generation
  br i1 %cmp24, label %land.lhs.true25, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true25:                                  ; preds = %for.body
  %node_id = getelementptr i8, ptr %.pn58, i32 -40
  %10 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %id)
  %cmp26 = icmp eq i32 %11, %id
  br i1 %cmp26, label %cleanup38.loopexit.split.loop.exit54, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true25.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %12 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load volatile ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %peer_list
  br i1 %cmp.not, label %cleanup.cleanup38_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

cleanup38.loopexit.split.loop.exit54:             ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  %peer.0.le = getelementptr i8, ptr %.pn58, i32 -60
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.loopexit.split.loop.exit54, %cleanup.cleanup38_crit_edge, %do.end11.cleanup38_crit_edge, %do.end
  %retval.2 = phi ptr [ null, %do.end ], [ %peer.0.le, %cleanup38.loopexit.split.loop.exit54 ], [ null, %do.end11.cleanup38_crit_edge ], [ null, %cleanup.cleanup38_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwtty_update_port_status(ptr noundef %port, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, -1040391
  %mstatus = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 12
  %0 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mstatus, align 4
  %xor = xor i32 %1, %status
  %and2 = and i32 %status, 128
  %and1 = xor i32 %and2, -1040391
  %and3 = and i32 %and1, %xor
  store i32 %and, ptr %mstatus, align 4
  %and5 = and i32 %and3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rng = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rng, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rng, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and6 = and i32 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dsr = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsr, align 4
  %inc10 = add i32 %5, 1
  store i32 %inc10, ptr %dsr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %and12 = and i32 %xor, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dcd = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 3
  %6 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcd, align 4
  %inc16 = add i32 %7, 1
  store i32 %inc16, ptr %dcd, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %and18 = and i32 %xor, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.do.body_crit_edge, label %if.then20

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %icount21 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23
  %8 = ptrtoint ptr %icount21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icount21, align 8
  %inc22 = add i32 %9, 1
  store i32 %inc22, ptr %icount21, align 8
  br label %do.body

do.body:                                          ; preds = %if.then20, %if.end17.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_update_port_status.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_update_port_status, %if.then27)) #12
          to label %do.end [label %if.then27], !srcloc !436

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_update_port_status.__UNIQUE_ID_ddebug240, ptr noundef %11, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, i32 noundef %and, i32 noundef %and3) #12
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  br i1 %tobool13.not, label %do.end.if.end45_crit_edge, label %if.then31

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then31:                                        ; preds = %do.end
  %call33 = tail call ptr @tty_port_tty_get(ptr noundef %port) #12
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then31.if.end44_crit_edge, label %land.lhs.true

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true:                                    ; preds = %if.then31
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %call33, i32 0, i32 13, i32 2
  %12 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag, align 4
  %and35 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then37:                                        ; preds = %land.lhs.true
  %and38 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %open_wait = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end44

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %hangup = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %hangup) #12
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then40, %land.lhs.true.if.end44_crit_edge, %if.then31.if.end44_crit_edge
  tail call void @tty_kref_put(ptr noundef %call33) #12
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %do.end.if.end45_crit_edge
  br i1 %tobool19.not, label %if.else78, label %if.then48

if.then48:                                        ; preds = %if.end45
  %call50 = tail call ptr @tty_port_tty_get(ptr noundef %port) #12
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then48.if.end113.sink.split_crit_edge, label %land.lhs.true52

if.then48.if.end113.sink.split_crit_edge:         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

land.lhs.true52:                                  ; preds = %if.then48
  %c_cflag54 = getelementptr inbounds %struct.tty_struct, ptr %call50, i32 0, i32 13, i32 2
  %15 = ptrtoint ptr %c_cflag54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_cflag54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool56.not = icmp sgt i32 %16, -1
  br i1 %tobool56.not, label %land.lhs.true52.if.end113.sink.split_crit_edge, label %if.then57

land.lhs.true52.if.end113.sink.split_crit_edge:   ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

if.then57:                                        ; preds = %land.lhs.true52
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %call50, i32 0, i32 21
  %17 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool58.not = icmp eq i32 %18, 0
  %neg70 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg70)
  %tobool72.not.not = icmp eq i32 %neg70, 0
  br i1 %tobool58.not, label %if.else69, label %if.then59

if.then59:                                        ; preds = %if.then57
  br i1 %tobool72.not.not, label %if.then59.if.end113.sink.split_crit_edge, label %if.then62

if.then59.if.end113.sink.split_crit_edge:         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

if.then62:                                        ; preds = %if.then59
  %19 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %hw_stopped, align 4
  %loopback = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 20
  %20 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %loopback, align 4
  %21 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool64.not = icmp eq i8 %21, 0
  br i1 %tobool64.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.then62
  %tx_fifo.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16
  %22 = ptrtoint ptr %tx_fifo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_fifo.i, align 4
  %out.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out.i.i, align 4
  %sub.i.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %tobool.not.i = icmp eq i32 %23, %25
  br i1 %tobool.not.i, label %if.then65.if.end.i_crit_edge, label %if.then.i

if.then65.if.end.i_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %drain.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %drain.i, i32 noundef 0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then65.if.end.i_crit_edge
  %avail.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 7
  %27 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %avail.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_update_port_status, %if.then8.i)) #12
          to label %if.end113.sink.split [label %if.then8.i], !srcloc !436

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %device.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, ptr noundef %30, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %sub.i.i, i32 noundef %28) #12
  br label %if.end113.sink.split

if.else66:                                        ; preds = %if.then62
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %tx_fifo.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16
  %31 = ptrtoint ptr %tx_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_fifo.i.i, align 4
  %out.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 1
  %33 = ptrtoint ptr %out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out.i.i.i, align 4
  %sub.i.i.i = sub i32 %32, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %tobool.not.i.i = icmp eq i32 %32, %34
  br i1 %tobool.not.i.i, label %if.else66.if.end.i.i_crit_edge, label %if.then.i.i

if.else66.if.end.i.i_crit_edge:                   ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #14
  %drain.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %drain.i.i, i32 noundef 0) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.else66.if.end.i.i_crit_edge
  %avail.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 7
  %36 = ptrtoint ptr %avail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %avail.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_update_port_status, %if.then8.i.i)) #12
          to label %fwtty_restart_tx.exit [label %if.then8.i.i], !srcloc !436

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %device.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %38 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, ptr noundef %39, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %sub.i.i.i, i32 noundef %37) #12
  br label %fwtty_restart_tx.exit

fwtty_restart_tx.exit:                            ; preds = %if.then8.i.i, %if.end.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br label %if.end113.sink.split

if.else69:                                        ; preds = %if.then57
  br i1 %tobool72.not.not, label %if.then73, label %if.else69.if.end113.sink.split_crit_edge

if.else69.if.end113.sink.split_crit_edge:         ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

if.then73:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %hw_stopped, align 4
  br label %if.end113.sink.split

if.else78:                                        ; preds = %if.end45
  %and79 = and i32 %xor, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else78.if.end113_crit_edge, label %if.then81

if.else78.if.end113_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then81:                                        ; preds = %if.else78
  %call83 = tail call ptr @tty_port_tty_get(ptr noundef %port) #12
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.then81.if.end113.sink.split_crit_edge, label %if.then85

if.then81.if.end113.sink.split_crit_edge:         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

if.then85:                                        ; preds = %if.then81
  %hw_stopped86 = getelementptr inbounds %struct.tty_struct, ptr %call83, i32 0, i32 21
  %41 = ptrtoint ptr %hw_stopped86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_stopped86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool87.not = icmp eq i32 %42, 0
  %and105 = and i32 %status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool87.not, label %if.else104, label %if.then88

if.then88:                                        ; preds = %if.then85
  br i1 %tobool106.not, label %if.then92, label %if.then88.if.end113.sink.split_crit_edge

if.then88.if.end113.sink.split_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

if.then92:                                        ; preds = %if.then88
  %43 = ptrtoint ptr %hw_stopped86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hw_stopped86, align 4
  %loopback94 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 20
  %44 = ptrtoint ptr %loopback94 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load95 = load i8, ptr %loopback94, align 4
  %45 = and i8 %bf.load95, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool99.not = icmp eq i8 %45, 0
  br i1 %tobool99.not, label %if.else101, label %if.then100

if.then100:                                       ; preds = %if.then92
  %tx_fifo.i185 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16
  %46 = ptrtoint ptr %tx_fifo.i185 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_fifo.i185, align 4
  %out.i.i186 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 1
  %48 = ptrtoint ptr %out.i.i186 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %out.i.i186, align 4
  %sub.i.i187 = sub i32 %47, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %tobool.not.i188 = icmp eq i32 %47, %49
  br i1 %tobool.not.i188, label %if.then100.if.end.i193_crit_edge, label %if.then.i191

if.then100.if.end.i193_crit_edge:                 ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i193

if.then.i191:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  %drain.i189 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i.i190 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %drain.i189, i32 noundef 0) #12
  br label %if.end.i193

if.end.i193:                                      ; preds = %if.then.i191, %if.then100.if.end.i193_crit_edge
  %avail.i.i192 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 7
  %51 = ptrtoint ptr %avail.i.i192 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %avail.i.i192, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_update_port_status, %if.then8.i195)) #12
          to label %if.end113.sink.split [label %if.then8.i195], !srcloc !436

if.then8.i195:                                    ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #14
  %device.i194 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %53 = ptrtoint ptr %device.i194 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device.i194, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, ptr noundef %54, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %sub.i.i187, i32 noundef %52) #12
  br label %if.end113.sink.split

if.else101:                                       ; preds = %if.then92
  %lock.i197 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i197) #12
  %tx_fifo.i.i198 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16
  %55 = ptrtoint ptr %tx_fifo.i.i198 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_fifo.i.i198, align 4
  %out.i.i.i199 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 1
  %57 = ptrtoint ptr %out.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %out.i.i.i199, align 4
  %sub.i.i.i200 = sub i32 %56, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %tobool.not.i.i201 = icmp eq i32 %56, %58
  br i1 %tobool.not.i.i201, label %if.else101.if.end.i.i206_crit_edge, label %if.then.i.i204

if.else101.if.end.i.i206_crit_edge:               ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i206

if.then.i.i204:                                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  %drain.i.i202 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i203 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %drain.i.i202, i32 noundef 0) #12
  br label %if.end.i.i206

if.end.i.i206:                                    ; preds = %if.then.i.i204, %if.else101.if.end.i.i206_crit_edge
  %avail.i.i.i205 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 16, i32 7
  %60 = ptrtoint ptr %avail.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %avail.i.i.i205, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_update_port_status, %if.then8.i.i208)) #12
          to label %fwtty_restart_tx.exit209 [label %if.then8.i.i208], !srcloc !436

if.then8.i.i208:                                  ; preds = %if.end.i.i206
  call void @__sanitizer_cov_trace_pc() #14
  %device.i.i207 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %62 = ptrtoint ptr %device.i.i207 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device.i.i207, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, ptr noundef %63, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %sub.i.i.i200, i32 noundef %61) #12
  br label %fwtty_restart_tx.exit209

fwtty_restart_tx.exit209:                         ; preds = %if.then8.i.i208, %if.end.i.i206
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i197) #12
  br label %if.end113.sink.split

if.else104:                                       ; preds = %if.then85
  br i1 %tobool106.not, label %if.else104.if.end113.sink.split_crit_edge, label %if.then107

if.else104.if.end113.sink.split_crit_edge:        ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

if.then107:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %hw_stopped86 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %hw_stopped86, align 4
  br label %if.end113.sink.split

if.end113.sink.split:                             ; preds = %if.then107, %if.else104.if.end113.sink.split_crit_edge, %fwtty_restart_tx.exit209, %if.then8.i195, %if.end.i193, %if.then88.if.end113.sink.split_crit_edge, %if.then81.if.end113.sink.split_crit_edge, %if.then73, %if.else69.if.end113.sink.split_crit_edge, %fwtty_restart_tx.exit, %if.then8.i, %if.end.i, %if.then59.if.end113.sink.split_crit_edge, %land.lhs.true52.if.end113.sink.split_crit_edge, %if.then48.if.end113.sink.split_crit_edge
  %call83.sink = phi ptr [ %call50, %if.then8.i ], [ %call50, %if.end.i ], [ %call50, %fwtty_restart_tx.exit ], [ %call50, %if.then59.if.end113.sink.split_crit_edge ], [ %call50, %if.then73 ], [ %call50, %if.else69.if.end113.sink.split_crit_edge ], [ %call50, %land.lhs.true52.if.end113.sink.split_crit_edge ], [ %call50, %if.then48.if.end113.sink.split_crit_edge ], [ %call83, %if.then8.i195 ], [ %call83, %if.end.i193 ], [ %call83, %fwtty_restart_tx.exit209 ], [ %call83, %if.then88.if.end113.sink.split_crit_edge ], [ %call83, %if.then107 ], [ %call83, %if.else104.if.end113.sink.split_crit_edge ], [ %call83, %if.then81.if.end113.sink.split_crit_edge ]
  tail call void @tty_kref_put(ptr noundef %call83.sink) #12
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %if.else78.if.end113_crit_edge
  %and114 = and i32 %xor, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end125_crit_edge, label %if.then116

if.end113.if.end125_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then116:                                       ; preds = %if.end113
  %and117 = and i32 %status, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else121, label %if.then119

if.then119:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %break_last = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 10
  %66 = ptrtoint ptr %break_last to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %break_last, align 4
  %emit_breaks = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i210 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %emit_breaks, i32 noundef 0) #12
  br label %if.end125

if.else121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %emit_breaks122 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 8
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %emit_breaks122, i32 noundef 0) #12
  br label %if.end125

if.end125:                                        ; preds = %if.else121, %if.then119, %if.end113.if.end125_crit_edge
  %and126 = and i32 %and3, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end130_crit_edge, label %if.then128

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end125.if.end130_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fwtty_rx(ptr noundef %port, ptr noundef %data, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_rx.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_rx, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_rx.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.81, i32 noundef %len) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %write_only = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %write_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %write_only, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %do.end
  %mstatus = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 12
  %4 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mstatus, align 4
  %shr = lshr i32 %5, 24
  %and = and i32 %shr, 239
  %6 = lshr i8 %bf.load, 4
  %7 = and i8 %6, 2
  %8 = zext i8 %7 to i32
  %9 = or i32 %and, %8
  %and13 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end5.if.end17_crit_edge, label %if.then15

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %overrun16 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 8
  %10 = ptrtoint ptr %overrun16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overrun16, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %overrun16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end5.if.end17_crit_edge
  %status_mask = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 18
  %12 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_mask, align 4
  %and18 = and i32 %13, %9
  %ignore_mask = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 19
  %14 = ptrtoint ptr %ignore_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ignore_mask, align 8
  %neg = and i32 %15, 2
  %and19 = xor i32 %neg, 2
  %and20 = and i32 %and19, %and18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.if.end28_crit_edge, label %if.then22

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then22:                                        ; preds = %if.end17
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %port, i32 0, i32 8
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then22.tty_insert_flip_char.exit_crit_edge

if.then22.tty_insert_flip_char.exit_crit_edge:    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %tty_insert_flip_char.exit

land.lhs.true.i:                                  ; preds = %if.then22
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp3.i = icmp slt i32 %21, %23
  br i1 %cmp3.i, label %tty_insert_flip_char.exit.thread, label %land.lhs.true.i.tty_insert_flip_char.exit_crit_edge

land.lhs.true.i.tty_insert_flip_char.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit.thread:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %21
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %23
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %add.ptr.i.i, align 1
  %25 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %26
  %27 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end28

tty_insert_flip_char.exit:                        ; preds = %land.lhs.true.i.tty_insert_flip_char.exit_crit_edge, %if.then22.tty_insert_flip_char.exit_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool25.not = icmp eq i32 %call13.i, 0
  br i1 %tobool25.not, label %tty_insert_flip_char.exit.out_crit_edge, label %tty_insert_flip_char.exit.if.end28_crit_edge

tty_insert_flip_char.exit.if.end28_crit_edge:     ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

tty_insert_flip_char.exit.out_crit_edge:          ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end28:                                         ; preds = %tty_insert_flip_char.exit.if.end28_crit_edge, %tty_insert_flip_char.exit.thread, %if.end17.if.end28_crit_edge
  %28 = ptrtoint ptr %write_only to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load30 = load i8, ptr %write_only, align 4
  %bf.clear31 = and i8 %bf.load30, -33
  store i8 %bf.clear31, ptr %write_only, align 4
  %29 = ptrtoint ptr %ignore_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ignore_mask, align 8
  %and33 = and i32 %and18, 237
  %and34 = and i32 %and33, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end37:                                         ; preds = %if.end28
  %call39 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port, ptr noundef %data, i8 noundef zeroext 0, i32 noundef %len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp sgt i32 %call39, 0
  br i1 %cmp, label %if.then40, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_flip_buffer_push(ptr noundef %port) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %sub = sub i32 %len, %call39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool43.not = icmp eq i32 %sub, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end42
  %31 = ptrtoint ptr %write_only to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load46 = load i8, ptr %write_only, align 4
  %bf.set48 = or i8 %bf.load46, 32
  store i8 %bf.set48, ptr %write_only, align 4
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @fwtty_rx._rs, ptr noundef nonnull @.str.81) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then44.out_crit_edge, label %do.end55

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end55:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %device56 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %32 = ptrtoint ptr %device56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.82) #15
  br label %out

if.else:                                          ; preds = %if.end42
  %call61 = tail call i32 @tty_buffer_space_avail(ptr noundef %port) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call61)
  %cmp62 = icmp ult i32 %call61, 32768
  br i1 %cmp62, label %if.then63, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then63:                                        ; preds = %if.else
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %port) #12
  %tobool.not.i96 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i96, label %if.then63.out_crit_edge, label %if.end.i97

if.then63.out_crit_edge:                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i97:                                       ; preds = %if.then63
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %mctrl.i = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 14
  %34 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mctrl.i, align 4
  %or.i = or i32 %35, 65536
  store i32 %or.i, ptr %mctrl.i, align 4
  %c_cflag.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 13, i32 2
  %36 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_cflag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool3.not.i = icmp sgt i32 %37, -1
  br i1 %tobool3.not.i, label %if.end.i97.if.end7.i_crit_edge, label %if.then4.i

if.end.i97.if.end7.i_crit_edge:                   ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i = and i32 %or.i, -5
  %38 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and6.i, ptr %mctrl.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i97.if.end7.i_crit_edge
  %neg.i = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool9.not.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool9.not.not.i, label %if.then10.i, label %if.end7.i.if.end12.i98_crit_edge

if.end7.i.if.end12.i98_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i98

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %port) #12
  br label %if.end12.i98

if.end12.i98:                                     ; preds = %if.then10.i, %if.end7.i.if.end12.i98_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #12
  br label %out

out:                                              ; preds = %if.end12.i98, %if.then63.out_crit_edge, %if.else.out_crit_edge, %do.end55, %if.then44.out_crit_edge, %if.end28.out_crit_edge, %tty_insert_flip_char.exit.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ -5, %do.end55 ], [ -5, %if.then44.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ 0, %do.end.out_crit_edge ], [ -5, %tty_insert_flip_char.exit.out_crit_edge ], [ 0, %if.end28.out_crit_edge ], [ 0, %if.then63.out_crit_edge ], [ 0, %if.end12.i98 ]
  %n.0 = phi i32 [ %sub, %do.end55 ], [ %sub, %if.then44.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ 0, %do.end.out_crit_edge ], [ %len, %tty_insert_flip_char.exit.out_crit_edge ], [ 0, %if.end28.out_crit_edge ], [ 0, %if.then63.out_crit_edge ], [ 0, %if.end12.i98 ]
  %rx = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 5
  %39 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx, align 4
  %add = add i32 %40, %len
  store i32 %add, ptr %rx, align 4
  %lost = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 24, i32 5
  %41 = ptrtoint ptr %lost to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lost, align 4
  %add67 = add i32 %42, %n.0
  store i32 %add67, ptr %lost, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_space_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_peers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @fwtty_peers_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_peers_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !437
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i29 = icmp eq ptr %11, null
  br i1 %tobool.not.i29, label %if.end.i, label %rcu_read_lock.exit.dev_name.exit_crit_edge

rcu_read_lock.exit.dev_name.exit_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %rcu_read_lock.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %rcu_read_lock.exit.dev_name.exit_crit_edge ]
  %guid = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 14
  %14 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %guid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85, ptr noundef %retval.0.i, i64 noundef %15) #12
  %call2 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %dev_name.exit.do.end_crit_edge

dev_name.exit.do.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %dev_name.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @fwtty_peers_show.__warned, align 1
  br i1 %.b28, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fwtty_peers_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1492, ptr noundef nonnull @.str.76) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %dev_name.exit.do.end_crit_edge
  %peer_list = getelementptr inbounds %struct.fw_serial, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn39 = load volatile ptr, ptr %peer_list, align 4
  %cmp.not40 = icmp eq ptr %.pn39, %peer_list
  br i1 %cmp.not40, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %fwtty_debugfs_show_peer.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %fwtty_debugfs_show_peer.exit.for.body_crit_edge ], [ %.pn39, %do.end.for.body_crit_edge ]
  %peer.0 = getelementptr i8, ptr %.pn41, i32 -60
  %generation1.i = getelementptr i8, ptr %.pn41, i32 -44
  %17 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %generation1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !446
  %19 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer.0, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.fwtty_debugfs_show_peer.exit_crit_edge

for.body.fwtty_debugfs_show_peer.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwtty_debugfs_show_peer.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %fwtty_debugfs_show_peer.exit

fwtty_debugfs_show_peer.exit:                     ; preds = %if.end.i.i, %for.body.fwtty_debugfs_show_peer.exit_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %for.body.fwtty_debugfs_show_peer.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, ptr noundef %retval.0.i.i) #12
  %node_id.i = getelementptr i8, ptr %.pn41, i32 -40
  %25 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node_id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, i32 noundef %26, i32 noundef %18) #12
  %speed.i = getelementptr i8, ptr %.pn41, i32 -36
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 8
  %max_payload.i = getelementptr i8, ptr %.pn41, i32 -32
  %29 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_payload.i, align 4
  %guid.i = getelementptr i8, ptr %.pn41, i32 -52
  %31 = ptrtoint ptr %guid.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %guid.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.88, i32 noundef %28, i32 noundef %30, i64 noundef %32) #12
  %mgmt_addr.i = getelementptr i8, ptr %.pn41, i32 -28
  %33 = ptrtoint ptr %mgmt_addr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mgmt_addr.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.89, i64 noundef %34) #12
  %status_addr.i = getelementptr i8, ptr %.pn41, i32 -20
  %35 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %status_addr.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.90, i64 noundef %36) #12
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #12
  %37 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load volatile ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %peer_list
  br i1 %cmp.not, label %fwtty_debugfs_show_peer.exit.for.end_crit_edge, label %fwtty_debugfs_show_peer.exit.for.body_crit_edge

fwtty_debugfs_show_peer.exit.for.body_crit_edge:  ; preds = %fwtty_debugfs_show_peer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

fwtty_debugfs_show_peer.exit.for.end_crit_edge:   ; preds = %fwtty_debugfs_show_peer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %fwtty_debugfs_show_peer.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i30, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %for.end
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !438
  %38 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i37 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @fwtty_stats_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  %stats.i = alloca %struct.stats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp22 = icmp sgt i32 %2, 0
  br i1 %cmp22, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dropped.i = getelementptr inbounds %struct.stats, ptr %stats.i, i32 0, i32 1
  %tx_stall.i = getelementptr inbounds %struct.stats, ptr %stats.i, i32 0, i32 2
  %fifo_errs.i = getelementptr inbounds %struct.stats, ptr %stats.i, i32 0, i32 3
  %lost.i = getelementptr inbounds %struct.stats, ptr %stats.i, i32 0, i32 5
  %sent.i = getelementptr inbounds %struct.stats, ptr %stats.i, i32 0, i32 4
  %throttled.i = getelementptr inbounds %struct.stats, ptr %stats.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fw_serial, ptr %1, i32 0, i32 6, i32 %i.023
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.fwtty_port, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %6)
  %cmp.i = icmp ugt i32 %6, 63
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  call void @mutex_lock_nested(ptr noundef nonnull @port_table_lock, i32 noundef 0) #12
  %arrayidx.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %fwtty_port_get.exit, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %serial.i = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial.i, align 8
  %kref.i = getelementptr inbounds %struct.fw_serial, ptr %10, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !447
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !448

if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then1.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !441

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.then

fwtty_port_get.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  br label %for.inc

if.then:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  %index1 = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %14) #12
  call fastcc void @fwtty_proc_show_port(ptr noundef %m, ptr noundef nonnull %8)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %stats.i) #12
  %stats1.i = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 24
  %15 = call ptr @memcpy(ptr %stats.i, ptr %stats1.i, i32 44)
  %console.i = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 12
  %16 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i12 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i12, label %if.then.if.end.i13_crit_edge, label %if.then.i

if.then.if.end.i13_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i13

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %fwcon_ops.i = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %fwcon_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fwcon_ops.i, align 8
  %stats3.i = getelementptr inbounds %struct.fwconsole_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %stats3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats3.i, align 4
  %con_data.i = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 6
  %21 = ptrtoint ptr %con_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %con_data.i, align 4
  call void %20(ptr noundef nonnull %stats.i, ptr noundef %22) #12
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.then.i, %if.then.if.end.i13_crit_edge
  %23 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dropped.i, align 4
  %25 = ptrtoint ptr %tx_stall.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_stall.i, align 4
  %27 = ptrtoint ptr %fifo_errs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fifo_errs.i, align 4
  %29 = ptrtoint ptr %lost.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lost.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.96, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #12
  %31 = ptrtoint ptr %sent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sent.i, align 4
  %33 = ptrtoint ptr %throttled.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %throttled.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, i32 noundef %32, i32 noundef %34) #12
  %35 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load6.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %tobool8.not.i = icmp sgt i8 %bf.load6.i, -1
  br i1 %tobool8.not.i, label %if.end.i13.fwtty_debugfs_show_port.exit_crit_edge, label %if.then9.i

if.end.i13.fwtty_debugfs_show_port.exit_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwtty_debugfs_show_port.exit

if.then9.i:                                       ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #14
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.98) #12
  %fwcon_ops10.i = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 5
  %36 = ptrtoint ptr %fwcon_ops10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fwcon_ops10.i, align 8
  %proc_show.i = getelementptr inbounds %struct.fwconsole_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %proc_show.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %proc_show.i, align 4
  %con_data11.i = getelementptr inbounds %struct.fwtty_port, ptr %8, i32 0, i32 6
  %40 = ptrtoint ptr %con_data11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %con_data11.i, align 4
  call void %39(ptr noundef %m, ptr noundef %41) #12
  br label %fwtty_debugfs_show_port.exit

fwtty_debugfs_show_port.exit:                     ; preds = %if.then9.i, %if.end.i13.fwtty_debugfs_show_port.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %stats.i) #12
  %42 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %serial.i, align 8
  %kref.i15 = getelementptr inbounds %struct.fw_serial, ptr %43, i32 0, i32 1
  call fastcc void @kref_put(ptr noundef %kref.i15) #12
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.92) #12
  br label %for.inc

for.inc:                                          ; preds = %fwtty_debugfs_show_port.exit, %fwtty_port_get.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %44 = load i32, ptr @num_ports, align 4
  %cmp = icmp slt i32 %inc, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwtty_proc_show_port(ptr noundef %m, ptr nocapture noundef readonly %port) unnamed_addr #3 align 64 {
entry:
  %stats = alloca %struct.stats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %stats) #12
  %stats1 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 24
  %0 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 44)
  %console = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 12
  %1 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fwcon_ops = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 5
  %2 = ptrtoint ptr %fwcon_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwcon_ops, align 8
  %stats3 = getelementptr inbounds %struct.fwconsole_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats3, align 4
  %con_data = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 6
  %6 = ptrtoint ptr %con_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_data, align 4
  call void %5(ptr noundef nonnull %stats, ptr noundef %7) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_handler = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 4
  %8 = ptrtoint ptr %rx_handler to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_handler, align 8
  %icount = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23
  %tx = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 4
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx, align 8
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats, align 4
  %add = add i32 %13, %11
  %rx = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 5
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i64 noundef %9, i32 noundef %add, i32 noundef %15) #12
  %16 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %icount, align 8
  %dsr = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 1
  %18 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dsr, align 4
  %rng = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 2
  %20 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rng, align 8
  %dcd = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 3
  %22 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dcd, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #12
  %frame = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 6
  %24 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame, align 8
  %overrun = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 8
  %26 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %overrun, align 8
  %parity = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 7
  %28 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parity, align 4
  %brk = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 23, i32 9
  %30 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brk, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.95, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %stats) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_plug_timeout(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -112
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %state = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1.i = getelementptr i8, ptr %t, i32 156
  %2 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1.i, align 8
  store ptr null, ptr %port1.i, align 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %max_payload.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %max_payload.i, align 8
  %align.i.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 16, i32 8
  %6 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %align.i.i, align 4
  %neg.i.i = sub i32 0, %7
  %and.i.i = and i32 %neg.i.i, 512
  %8 = tail call i32 @llvm.smax.i32(i32 %and.i.i, i32 %7) #12
  %tx_limit2.i.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 16, i32 9
  %9 = ptrtoint ptr %tx_limit2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_limit2.i.i, align 4
  %peer.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 22
  %10 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %peer.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %console.i = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %if.then3.cleanup_crit_edge, label %land.lhs.true.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then3
  %fwcon_ops.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %fwcon_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwcon_ops.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool12.not.i = icmp eq ptr %15, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then13.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %con_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %con_data.i, align 4
  tail call void %15(i32 noundef 2, ptr noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %land.lhs.true.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_peer_workfn(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %workfn = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %workfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workfn, align 8
  tail call void %1(ptr noundef %work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_auto_connect(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -240
  %call1 = tail call fastcc i32 @fwserial_connect_peer(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1)
  %cmp = icmp eq i32 %call1, -11
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %connect_retries = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %connect_retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_retries, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %connect_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp2 = icmp slt i32 %inc, 10
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 100) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fwserial_claim_port(ptr noundef %peer, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %index)
  %cmp1.not = icmp sgt i32 %0, %index
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @synchronize_rcu() #12
  %serial = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 1
  %1 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial, align 4
  %arrayidx = getelementptr %struct.fw_serial, ptr %2, i32 0, i32 6, i32 %index
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %4, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %peer2 = getelementptr inbounds %struct.fwtty_port, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %peer2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %peer2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body5, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !449
  %7 = ptrtoint ptr %peer2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %peer, ptr %peer2, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.body5, %if.end.if.end45_crit_edge
  %port.0 = phi ptr [ %4, %do.body5 ], [ inttoptr (i32 -16 to ptr), %if.end.if.end45_crit_edge ]
  %lock46 = getelementptr inbounds %struct.fwtty_port, ptr %port.0, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock46) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %port.0, %if.end45 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwserial_virt_plug_complete(ptr nocapture noundef %peer, ptr nocapture noundef readonly %params) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 21
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  %status_lo = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %status_lo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status_lo, align 4
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %5 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %status_addr = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 8
  %6 = ptrtoint ptr %status_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %or.i, ptr %status_addr, align 8
  %fifo_hi = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %fifo_hi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_hi, align 4
  %fifo_lo = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %fifo_lo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_lo, align 4
  %conv.i41 = zext i32 %8 to i64
  %shl.i42 = shl nuw i64 %conv.i41, 32
  %conv1.i43 = zext i32 %10 to i64
  %or.i44 = or i64 %shl.i42, %conv1.i43
  %fifo_addr = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 9
  %11 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or.i44, ptr %fifo_addr, align 8
  %fifo_len = getelementptr inbounds %struct.virt_plug_params, ptr %params, i32 0, i32 4
  %12 = ptrtoint ptr %fifo_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_len, align 4
  %fifo_len3 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 10
  %14 = ptrtoint ptr %fifo_len3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fifo_len3, align 8
  %state.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 18
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state.i, align 4
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %max_payload = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 6
  %16 = ptrtoint ptr %max_payload to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_payload, align 4
  %18 = ptrtoint ptr %fifo_len3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_len3, align 8
  %20 = tail call i32 @llvm.smin.i32(i32 %17, i32 %19)
  %max_payload5 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %max_payload5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max_payload5, align 8
  %align.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 8
  %22 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %align.i, align 4
  %neg.i = sub i32 0, %23
  %and.i = and i32 %20, %neg.i
  %24 = tail call i32 @llvm.smax.i32(i32 %and.i, i32 %23) #12
  %tx_limit2.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 9
  %25 = ptrtoint ptr %tx_limit2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tx_limit2.i, align 4
  %26 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port1, align 8
  %lock9 = getelementptr inbounds %struct.fwtty_port, ptr %27, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock9) #12
  %console = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %fwcon_ops = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %fwcon_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fwcon_ops, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool11.not = icmp eq ptr %32, null
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %con_data = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %con_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %con_data, align 4
  tail call void %32(i32 noundef 1, ptr noundef %34) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %35 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %peer, align 8
  %guid = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 2
  %37 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %guid, align 8
  %device14 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device14, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %44, %if.end.i ], [ %42, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.116, i64 noundef %38, ptr noundef %retval.0.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwtty_write_port_status(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %port)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fwserial_connect_peer(ptr noundef %peer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %serial.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 1
  %1 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial.i, align 4
  %ports1.i = getelementptr inbounds %struct.fw_serial, ptr %2, i32 0, i32 6
  tail call void @synchronize_rcu() #12
  %3 = load i32, ptr @num_ttys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp60.i = icmp sgt i32 %3, 0
  br i1 %cmp60.i, label %if.end.for.body.i_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %if.end43.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %ports1.i, i32 %i.061.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %5, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %peer3.i = getelementptr inbounds %struct.fwtty_port, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %peer3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer3.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %fwserial_find_port.exit, label %if.end43.i

if.end43.i:                                       ; preds = %for.body.i
  %lock45.i = getelementptr inbounds %struct.fwtty_port, ptr %7, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock45.i) #12
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %10 = load i32, ptr @num_ttys, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %if.end43.i.for.body.i_crit_edge, label %if.end43.i.do.end_crit_edge

if.end43.i.do.end_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fwserial_find_port.exit:                          ; preds = %for.body.i
  %arrayidx.i.le = getelementptr ptr, ptr %ports1.i, i32 %i.061.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !450
  %11 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.le, align 4
  %peer29.i = getelementptr inbounds %struct.fwtty_port, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %peer29.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %peer, ptr %peer29.i, align 4
  %14 = load ptr, ptr %arrayidx.i.le, align 4
  %lock41.i = getelementptr inbounds %struct.fwtty_port, ptr %14, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock41.i) #12
  %15 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.le, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %fwserial_find_port.exit.do.end_crit_edge, label %if.end4

fwserial_find_port.exit.do.end_crit_edge:         ; preds = %fwserial_find_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %fwserial_find_port.exit.do.end_crit_edge, %if.end43.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %17 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.112) #15
  br label %cleanup.sink.split

if.end4:                                          ; preds = %fwserial_find_port.exit
  %lock = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %state = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 18
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not = icmp eq i32 %20, 1
  br i1 %cmp.not, label %if.end6, label %if.end4.release_port_crit_edge

if.end4.release_port_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_port

if.end6:                                          ; preds = %if.end4
  %port7 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 21
  %21 = ptrtoint ptr %port7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %port7, align 8
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %state, align 4
  %code.i = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %code.i, align 2
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 24, ptr %call7.i, align 8
  %25 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1
  %rx_handler.i.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 4
  %26 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_handler.i.i, align 8
  %add.i.i = add i64 %27, 4
  %length.i.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %length.i.i, align 8
  %30 = trunc i64 %29 to i32
  %conv.i.i = add i32 %30, -4
  %shr.i.i = lshr i64 %27, 32
  %conv4.i.i = trunc i64 %shr.i.i to i32
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv4.i.i, ptr %25, align 4
  %conv5.i.i = trunc i64 %27 to i32
  %status_lo.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %status_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv5.i.i, ptr %status_lo.i.i, align 8
  %shr6.i.i = lshr i64 %add.i.i, 32
  %conv7.i.i = trunc i64 %shr6.i.i to i32
  %fifo_hi.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %fifo_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv7.i.i, ptr %fifo_hi.i.i, align 4
  %conv8.i.i = trunc i64 %add.i.i to i32
  %fifo_lo.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %fifo_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv8.i.i, ptr %fifo_lo.i.i, align 8
  %fifo_len9.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %fifo_len9.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i.i, ptr %fifo_len9.i.i, align 4
  %timer = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, 6000
  %call9 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %generation1.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 3
  %node_id.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 4
  %speed.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 5
  %mgmt_addr.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 7
  br label %do.body.i52

do.body.i52:                                      ; preds = %do.cond19.i.do.body.i52_crit_edge, %if.end6
  %tries.0.i = phi i32 [ 5, %if.end6 ], [ %dec.i, %do.cond19.i.do.body.i52_crit_edge ]
  %37 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %generation1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !451
  %39 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serial.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node_id.i, align 4
  %45 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed.i, align 8
  %47 = ptrtoint ptr %mgmt_addr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %mgmt_addr.i, align 8
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call7.i, align 8
  %conv.i = zext i16 %50 to i32
  %call.i = tail call i32 @fw_run_transaction(ptr noundef %42, i32 noundef 1, i32 noundef %44, i32 noundef %38, i32 noundef %46, i64 noundef %48, ptr noundef nonnull %call7.i, i32 noundef %conv.i) #12
  %51 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call.i, label %do.body.i52.fwserial_send_mgmt_sync.exit_crit_edge [
    i32 18, label %do.body.i52.do.body12.i_crit_edge
    i32 16, label %do.body.i52.do.body12.i_crit_edge63
    i32 19, label %do.body.i52.do.body12.i_crit_edge64
  ]

do.body.i52.do.body12.i_crit_edge64:              ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i52.do.body12.i_crit_edge63:              ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i52.do.body12.i_crit_edge:                ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i52.fwserial_send_mgmt_sync.exit_crit_edge: ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_send_mgmt_sync.exit

do.body12.i:                                      ; preds = %do.body.i52.do.body12.i_crit_edge, %do.body.i52.do.body12.i_crit_edge63, %do.body.i52.do.body12.i_crit_edge64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwserial_connect_peer, %if.then16.i)) #12
          to label %do.cond19.i [label %if.then16.i], !srcloc !436

if.then16.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, ptr noundef %53, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %call.i) #12
  br label %do.cond19.i

do.cond19.i:                                      ; preds = %if.then16.i, %do.body12.i
  %dec.i = add nsw i32 %tries.0.i, -1
  %cmp20.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp20.not.i, label %do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge, label %do.cond19.i.do.body.i52_crit_edge

do.cond19.i.do.body.i52_crit_edge:                ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i52

do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge: ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_send_mgmt_sync.exit

fwserial_send_mgmt_sync.exit:                     ; preds = %do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge, %do.body.i52.fwserial_send_mgmt_sync.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp14 = icmp ne i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %if.end20, label %if.then16

if.then16:                                        ; preds = %fwserial_send_mgmt_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp17 = icmp eq i32 %call.i, 4
  %. = select i1 %cmp17, i32 -11, i32 -5
  %call23 = tail call i32 @del_timer(ptr noundef %timer) #12
  %56 = ptrtoint ptr %port7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %port7, align 8
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %state, align 4
  br label %release_port

if.end20:                                         ; preds = %fwserial_send_mgmt_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup.sink.split

release_port:                                     ; preds = %if.then16, %if.end4.release_port_crit_edge
  %err.1 = phi i32 [ %., %if.then16 ], [ -16, %if.end4.release_port_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %lock.i53 = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i53) #12
  %max_payload.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 17
  %58 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 512, ptr %max_payload.i, align 8
  %align.i.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 16, i32 8
  %59 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %align.i.i, align 4
  %neg.i.i = sub i32 0, %60
  %and.i.i = and i32 %neg.i.i, 512
  %61 = tail call i32 @llvm.smax.i32(i32 %and.i.i, i32 %60) #12
  %tx_limit2.i.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 16, i32 9
  %62 = ptrtoint ptr %tx_limit2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tx_limit2.i.i, align 4
  %peer.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 22
  %63 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr null, ptr %peer.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i53) #12
  %console.i = getelementptr inbounds %struct.tty_port, ptr %16, i32 0, i32 12
  %64 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %release_port.cleanup.sink.split_crit_edge, label %land.lhs.true.i

release_port.cleanup.sink.split_crit_edge:        ; preds = %release_port
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %release_port
  %fwcon_ops.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 5
  %65 = ptrtoint ptr %fwcon_ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fwcon_ops.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %tobool12.not.i = icmp eq ptr %68, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge, label %if.then13.i

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i = getelementptr inbounds %struct.fwtty_port, ptr %16, i32 0, i32 6
  %69 = ptrtoint ptr %con_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %con_data.i, align 4
  tail call void %68(i32 noundef 2, ptr noundef %70) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13.i, %land.lhs.true.i.cleanup.sink.split_crit_edge, %release_port.cleanup.sink.split_crit_edge, %if.end20, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end20 ], [ -16, %do.end ], [ %err.1, %release_port.cleanup.sink.split_crit_edge ], [ %err.1, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ %err.1, %if.then13.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_mgmt_handler(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %addr, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %callback_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !437
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @__fwserial_peer_by_node_id(ptr noundef %card, i32 noundef %generation, i32 noundef %source)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwserial_mgmt_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwserial_mgmt_handler, %if.then5)) #12
          to label %if.end7 [label %if.then5], !srcloc !436

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwserial_mgmt_handler.__UNIQUE_ID_ddebug288, ptr noundef %5, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i32 noundef %generation, i32 noundef %source) #12
  br label %if.end7

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tcode)
  %cond = icmp eq i32 %tcode, 1
  br i1 %cond, label %sw.bb, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call fastcc i32 @fwserial_parse_mgmt_write(ptr noundef nonnull %call, ptr noundef %data, i64 noundef %addr, i32 noundef %len)
  br label %if.end7

if.end7:                                          ; preds = %sw.bb, %if.else.if.end7_crit_edge, %if.then5, %do.body
  %rcode.0 = phi i32 [ %call6, %sw.bb ], [ 4, %if.then5 ], [ 6, %if.else.if.end7_crit_edge ], [ 4, %do.body ]
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i13, label %if.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

if.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %if.end7
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %if.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !438
  %6 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i20 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef %rcode.0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_descriptor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_install(ptr noundef %driver, ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp.i = icmp ugt i32 %1, 63
  br i1 %cmp.i, label %entry.fwtty_port_get.exit_crit_edge, label %if.end.i

entry.fwtty_port_get.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwtty_port_get.exit

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @port_table_lock, i32 noundef 0) #12
  %arrayidx.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  %serial.i = getelementptr inbounds %struct.fwtty_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial.i, align 8
  %kref.i = getelementptr inbounds %struct.fw_serial, ptr %5, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !447
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !448

if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then1.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end2.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !441

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end2.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end2.i_crit_edge, %if.end.i.if.end2.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  br label %fwtty_port_get.exit

fwtty_port_get.exit:                              ; preds = %if.end2.i, %entry.fwtty_port_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end2.i ], [ null, %entry.fwtty_port_get.exit_crit_edge ]
  %call1 = tail call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %fwtty_port_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %driver_data, align 4
  br label %if.end

if.else:                                          ; preds = %fwtty_port_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i6 = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %serial.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial.i6, align 8
  %kref.i7 = getelementptr inbounds %struct.fw_serial, ptr %10, i32 0, i32 1
  tail call fastcc void @kref_put(ptr noundef %kref.i7) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_open(ptr noundef %tty, ptr noundef %fp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %fp) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_close(ptr noundef %tty, ptr noundef %fp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %fp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_cleanup(ptr nocapture noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  store ptr null, ptr %driver_data, align 4
  %serial.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial.i, align 8
  %kref.i = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 1
  tail call fastcc void @kref_put(ptr noundef %kref.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_write, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_write.__UNIQUE_ID_ddebug258, ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.136, i32 noundef %c) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %tx_fifo = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @dma_fifo_in(ptr noundef %tx_fifo, ptr noundef %buf, i32 noundef %c) #12
  %4 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_fifo, align 4
  %out.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 1024
  br i1 %cmp, label %if.end8, label %if.then11

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %drain = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %drain, i32 noundef 1) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %if.end13

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call fastcc void @fwtty_tx(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %9 = tail call i32 @llvm.smax.i32(i32 %call3, i32 0)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_write_room(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %avail.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 7
  %2 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avail.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_write_room.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_write_room, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_write_room.__UNIQUE_ID_ddebug259, ptr noundef %5, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137, i32 noundef %3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_chars_in_buffer(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %size.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 4
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %avail.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail.i, align 4
  %sub.i = sub i32 %3, %5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_chars_in_buffer.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_chars_in_buffer, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_chars_in_buffer.__UNIQUE_ID_ddebug260, ptr noundef %7, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef %sub.i) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %sub.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %icount.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %prev.sroa.0.0.copyload.i = load i32, ptr %icount.i, align 8
  %prev.sroa.8.0.icount.sroa_idx.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %prev.sroa.8.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %prev.sroa.8.0.copyload.i = load i32, ptr %prev.sroa.8.0.icount.sroa_idx.i, align 4
  %prev.sroa.12.0.icount.sroa_idx.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %prev.sroa.12.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %prev.sroa.12.0.copyload.i = load i32, ptr %prev.sroa.12.0.icount.sroa_idx.i, align 8
  %prev.sroa.16.0.icount.sroa_idx.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 3
  %5 = ptrtoint ptr %prev.sroa.16.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %prev.sroa.16.0.copyload.i = load i32, ptr %prev.sroa.16.0.icount.sroa_idx.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 1211) #12
  %6 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %now.sroa.0.0.copyload.i.i = load i32, ptr %icount.i, align 8
  %7 = ptrtoint ptr %prev.sroa.8.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %now.sroa.6.0.copyload.i.i = load i32, ptr %prev.sroa.8.0.icount.sroa_idx.i, align 4
  %8 = ptrtoint ptr %prev.sroa.12.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %now.sroa.7.0.copyload.i.i = load i32, ptr %prev.sroa.12.0.icount.sroa_idx.i, align 8
  %9 = ptrtoint ptr %prev.sroa.16.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %now.sroa.8.0.copyload.i.i = load i32, ptr %prev.sroa.16.0.icount.sroa_idx.i, align 4
  %and.i.i = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.12.0.copyload.i, i32 %now.sroa.7.0.copyload.i.i)
  %cmp.not.i.i = icmp eq i32 %prev.sroa.12.0.copyload.i, %now.sroa.7.0.copyload.i.i
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %or.cond.i, label %lor.lhs.false.i.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %and2.i.i = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.8.0.copyload.i, i32 %now.sroa.6.0.copyload.i.i)
  %cmp6.not.i.i = icmp eq i32 %prev.sroa.8.0.copyload.i, %now.sroa.6.0.copyload.i.i
  %or.cond83.i = select i1 %tobool3.not.i.i, i1 true, i1 %cmp6.not.i.i
  br i1 %or.cond83.i, label %lor.lhs.false7.i.i, label %lor.lhs.false.i.i.sw.epilog_crit_edge

lor.lhs.false.i.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false.i.i
  %and8.i.i = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.16.0.copyload.i, i32 %now.sroa.8.0.copyload.i.i)
  %cmp12.not.i.i = icmp eq i32 %prev.sroa.16.0.copyload.i, %now.sroa.8.0.copyload.i.i
  %or.cond84.i = select i1 %tobool9.not.i.i, i1 true, i1 %cmp12.not.i.i
  br i1 %or.cond84.i, label %lor.rhs.i.i, label %lor.lhs.false7.i.i.sw.epilog_crit_edge

lor.lhs.false7.i.i.sw.epilog_crit_edge:           ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.rhs.i.i:                                      ; preds = %lor.lhs.false7.i.i
  %and13.i.i = and i32 %arg, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.0.0.copyload.i, i32 %now.sroa.0.0.copyload.i.i)
  %cmp16.i.not.i = icmp eq i32 %prev.sroa.0.0.copyload.i, %now.sroa.0.0.copyload.i.i
  %or.cond88.i = select i1 %tobool14.not.i.i, i1 true, i1 %cmp16.i.not.i
  br i1 %or.cond88.i, label %if.then.i, label %lor.rhs.i.i.sw.epilog_crit_edge

lor.rhs.i.i.sw.epilog_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i:                                        ; preds = %lor.rhs.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %10 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 9
  %call692.i = call i32 @prepare_to_wait_event(ptr noundef %delta_msr_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %11 = ptrtoint ptr %prev.sroa.12.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %now.sroa.7.0.copyload.i3095.i = load i32, ptr %prev.sroa.12.0.icount.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %now.sroa.7.0.copyload.i.i, i32 %now.sroa.7.0.copyload.i3095.i)
  %cmp.not.i3797.i = icmp eq i32 %now.sroa.7.0.copyload.i.i, %now.sroa.7.0.copyload.i3095.i
  %or.cond8598.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i3797.i
  br i1 %or.cond8598.i, label %if.then.i.lor.lhs.false.i41.i_crit_edge, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then.i.lor.lhs.false.i41.i_crit_edge:          ; preds = %if.then.i
  br label %lor.lhs.false.i41.i

lor.lhs.false.i41.i:                              ; preds = %cleanup.i.lor.lhs.false.i41.i_crit_edge, %if.then.i.lor.lhs.false.i41.i_crit_edge
  %now.sroa.7.0.copyload.i30105.i = phi i32 [ %now.sroa.7.0.copyload.i30.i, %cleanup.i.lor.lhs.false.i41.i_crit_edge ], [ %now.sroa.7.0.copyload.i3095.i, %if.then.i.lor.lhs.false.i41.i_crit_edge ]
  %call6102.i = phi i32 [ %call6.i, %cleanup.i.lor.lhs.false.i41.i_crit_edge ], [ %call692.i, %if.then.i.lor.lhs.false.i41.i_crit_edge ]
  %prev.sroa.16.0101.i = phi i32 [ %now.sroa.8.0.copyload.i32106.i, %cleanup.i.lor.lhs.false.i41.i_crit_edge ], [ %now.sroa.8.0.copyload.i.i, %if.then.i.lor.lhs.false.i41.i_crit_edge ]
  %prev.sroa.8.0100.i = phi i32 [ %now.sroa.6.0.copyload.i28104.i, %cleanup.i.lor.lhs.false.i41.i_crit_edge ], [ %now.sroa.6.0.copyload.i.i, %if.then.i.lor.lhs.false.i41.i_crit_edge ]
  %prev.sroa.0.099.i = phi i32 [ %now.sroa.0.0.copyload.i26103.i, %cleanup.i.lor.lhs.false.i41.i_crit_edge ], [ %now.sroa.0.0.copyload.i.i, %if.then.i.lor.lhs.false.i41.i_crit_edge ]
  %12 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %now.sroa.0.0.copyload.i26103.i = load i32, ptr %icount.i, align 8
  %13 = ptrtoint ptr %prev.sroa.8.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %now.sroa.6.0.copyload.i28104.i = load i32, ptr %prev.sroa.8.0.icount.sroa_idx.i, align 4
  %14 = ptrtoint ptr %prev.sroa.16.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %now.sroa.8.0.copyload.i32106.i = load i32, ptr %prev.sroa.16.0.icount.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.8.0100.i, i32 %now.sroa.6.0.copyload.i28104.i)
  %cmp6.not.i43.i = icmp eq i32 %prev.sroa.8.0100.i, %now.sroa.6.0.copyload.i28104.i
  %or.cond86.i = select i1 %tobool3.not.i.i, i1 true, i1 %cmp6.not.i43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.16.0101.i, i32 %now.sroa.8.0.copyload.i32106.i)
  %cmp12.not.i49.i = icmp eq i32 %prev.sroa.16.0101.i, %now.sroa.8.0.copyload.i32106.i
  %or.cond87.i = select i1 %tobool9.not.i.i, i1 true, i1 %cmp12.not.i49.i
  %or.cond110.i = select i1 %or.cond86.i, i1 %or.cond87.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.sroa.0.099.i, i32 %now.sroa.0.0.copyload.i26103.i)
  %cmp16.i54.not.i = icmp eq i32 %prev.sroa.0.099.i, %now.sroa.0.0.copyload.i26103.i
  %or.cond89.i = select i1 %tobool14.not.i.i, i1 true, i1 %cmp16.i54.not.i
  %or.cond111.i = select i1 %or.cond110.i, i1 %or.cond89.i, i1 false
  br i1 %or.cond111.i, label %if.end.i, label %lor.lhs.false.i41.i.for.end.i_crit_edge

lor.lhs.false.i41.i.for.end.i_crit_edge:          ; preds = %lor.lhs.false.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6102.i)
  %tobool10.not.i = icmp eq i32 %call6102.i, 0
  br i1 %tobool10.not.i, label %cleanup.i, label %if.end.i.__out.i_crit_edge

if.end.i.__out.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #12
  %call6.i = call i32 @prepare_to_wait_event(ptr noundef %delta_msr_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %15 = ptrtoint ptr %prev.sroa.12.0.icount.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %now.sroa.7.0.copyload.i30.i = load i32, ptr %prev.sroa.12.0.icount.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %now.sroa.7.0.copyload.i30105.i, i32 %now.sroa.7.0.copyload.i30.i)
  %cmp.not.i37.i = icmp eq i32 %now.sroa.7.0.copyload.i30105.i, %now.sroa.7.0.copyload.i30.i
  %or.cond85.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i37.i
  br i1 %or.cond85.i, label %cleanup.i.lor.lhs.false.i41.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

cleanup.i.lor.lhs.false.i41.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i41.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %lor.lhs.false.i41.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %delta_msr_wait.i, ptr noundef nonnull %__wq_entry.i) #12
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end.i.__out.i_crit_edge
  %__ret4.178.i = phi i32 [ 0, %for.end.i ], [ %call6102.i, %if.end.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %__out.i, %lor.rhs.i.i.sw.epilog_crit_edge, %lor.lhs.false7.i.i.sw.epilog_crit_edge, %lor.lhs.false.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -515, %entry.sw.epilog_crit_edge ], [ %__ret4.178.i, %__out.i ], [ 0, %lor.lhs.false7.i.i.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.i.i.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %lor.rhs.i.i.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call = tail call fastcc i32 @set_termios(ptr noundef %1, ptr noundef %tty)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond = icmp eq i32 %call, 0
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cond, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool.not, label %land.lhs.true.if.end18_crit_edge, label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %mctrl = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mctrl, align 4
  %and1 = and i32 %5, -7
  store i32 %and1, ptr %mctrl, align 4
  br label %if.end18

land.lhs.true3:                                   ; preds = %entry
  br i1 %tobool.not, label %if.then7, label %land.lhs.true3.if.end18_crit_edge

land.lhs.true3.if.end18_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true3
  %c_cflag8 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool10.not = icmp sgt i32 %7, -1
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then7.if.then12_crit_edge

if.then7.if.then12_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then7
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then12_crit_edge, label %if.else14

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then7.if.then12_crit_edge
  %mctrl13 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %mctrl13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mctrl13, align 4
  %or = or i32 %11, 6
  store i32 %or, ptr %mctrl13, align 4
  br label %if.end18

if.else14:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %mctrl15 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %mctrl15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mctrl15, align 4
  %or16 = or i32 %13, 2
  store i32 %or16, ptr %mctrl15, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then12, %land.lhs.true3.if.end18_crit_edge, %if.then, %land.lhs.true.if.end18_crit_edge
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %c_cflag21 = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %14 = ptrtoint ptr %c_cflag21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool23.not = icmp sgt i32 %15, -1
  %c_cflag33 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %c_cflag33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool35.not = icmp sgt i32 %17, -1
  br i1 %tobool23.not, label %if.else31, label %if.then24

if.then24:                                        ; preds = %if.end18
  br i1 %tobool35.not, label %if.then29, label %if.then24.if.end42_crit_edge

if.then24.if.end42_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then29:                                        ; preds = %if.then24
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %18 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hw_stopped, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %tx_fifo.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %tx_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_fifo.i.i, align 4
  %out.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out.i.i.i, align 4
  %sub.i.i.i = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %tobool.not.i.i = icmp eq i32 %20, %22
  br i1 %tobool.not.i.i, label %if.then29.if.end.i.i_crit_edge, label %if.then.i.i

if.then29.if.end.i.i_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %drain.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %drain.i.i, i32 noundef 0) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then29.if.end.i.i_crit_edge
  %avail.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 7
  %24 = ptrtoint ptr %avail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %avail.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_set_termios, %if.then8.i.i)) #12
          to label %fwtty_restart_tx.exit [label %if.then8.i.i], !srcloc !436

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %device.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, ptr noundef %27, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %sub.i.i.i, i32 noundef %25) #12
  br label %fwtty_restart_tx.exit

fwtty_restart_tx.exit:                            ; preds = %if.then8.i.i, %if.end.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %if.end42

if.else31:                                        ; preds = %if.end18
  br i1 %tobool35.not, label %if.else31.if.end42_crit_edge, label %land.lhs.true36

if.else31.if.end42_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true36:                                  ; preds = %if.else31
  %mstatus = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mstatus, align 4
  %neg = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool38.not.not = icmp eq i32 %neg, 0
  br i1 %tobool38.not.not, label %if.then39, label %land.lhs.true36.if.end42_crit_edge

land.lhs.true36.if.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  %hw_stopped40 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %30 = ptrtoint ptr %hw_stopped40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %hw_stopped40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %land.lhs.true36.if.end42_crit_edge, %if.else31.if.end42_crit_edge, %fwtty_restart_tx.exit, %if.then24.if.end42_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fwtty_throttle(ptr nocapture noundef readonly %tty) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %throttled = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 24, i32 6
  %2 = ptrtoint ptr %throttled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %throttled, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %throttled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_unthrottle(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_unthrottle.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_unthrottle, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %.lobit = lshr i32 %5, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_unthrottle.__UNIQUE_ID_ddebug262, ptr noundef %3, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.140, i32 noundef %.lobit) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mctrl = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mctrl, align 4
  %and3 = and i32 %7, -65537
  store i32 %and3, ptr %mctrl, align 4
  %c_cflag5 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %c_cflag5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool7.not = icmp sgt i32 %9, -1
  br i1 %tobool7.not, label %do.end.if.end10_crit_edge, label %if.then8

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %and3, 4
  %10 = ptrtoint ptr %mctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %mctrl, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.end.if.end10_crit_edge
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_hangup(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %state) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_break_ctl.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_break_ctl, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_break_ctl.__UNIQUE_ID_ddebug263, ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.142, i32 noundef %state) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %state)
  %cmp = icmp eq i32 %state, -1
  br i1 %cmp, label %if.then3, label %do.end.if.end65_crit_edge

do.end.if.end65_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then3:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 1320) #12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %if.then3.if.end65_crit_edge, label %if.then26

if.then3.if.end65_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then26:                                        ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wait_tx = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 7
  %call28119 = call i32 @prepare_to_wait_event(ptr noundef %wait_tx, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i106120 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i106120)
  %tobool32.not121 = icmp eq i32 %and1.i106120, 0
  br i1 %tobool32.not121, label %if.then26.for.end_crit_edge, label %if.then26.if.end51_crit_edge

if.then26.if.end51_crit_edge:                     ; preds = %if.then26
  br label %if.end51

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end51:                                         ; preds = %cleanup.if.end51_crit_edge, %if.then26.if.end51_crit_edge
  %__ret27.1123 = phi i32 [ %__ret27.1, %cleanup.if.end51_crit_edge ], [ 10, %if.then26.if.end51_crit_edge ]
  %call28122 = phi i32 [ %call28, %cleanup.if.end51_crit_edge ], [ %call28119, %if.then26.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28122)
  %tobool52.not = icmp eq i32 %call28122, 0
  br i1 %tobool52.not, label %cleanup, label %if.end51.if.end58_crit_edge

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

cleanup:                                          ; preds = %if.end51
  %call55 = call i32 @schedule_timeout(i32 noundef %__ret27.1123) #12
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %wait_tx, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i106 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i106)
  %tobool32.not = icmp eq i32 %and1.i106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool38.not = icmp eq i32 %call55, 0
  %11 = select i1 %tobool32.not, i1 %tobool38.not, i1 false
  %__ret27.1 = select i1 %11, i32 1, i32 %call55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret27.1)
  %tobool44.not = icmp eq i32 %__ret27.1, 0
  %12 = select i1 %tobool32.not, i1 true, i1 %tobool44.not
  br i1 %12, label %cleanup.for.end_crit_edge, label %cleanup.if.end51_crit_edge

cleanup.if.end51_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then26.for.end_crit_edge
  %__ret27.1.lcssa = phi i32 [ 10, %if.then26.for.end_crit_edge ], [ %__ret27.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_tx, ptr noundef nonnull %__wq_entry) #12
  br label %if.end58

if.end58:                                         ; preds = %for.end, %if.end51.if.end58_crit_edge
  %__ret27.2110 = phi i32 [ %__ret27.1.lcssa, %for.end ], [ %call28122, %if.end51.if.end58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %13 = zext i32 %__ret27.2110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %__ret27.2110, label %if.end58.if.end65_crit_edge [
    i32 0, label %if.end58.if.then62_crit_edge
    i32 -512, label %if.end58.if.then62_crit_edge135
  ]

if.end58.if.then62_crit_edge135:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.end58.if.then62_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then62:                                        ; preds = %if.end58.if.then62_crit_edge, %if.end58.if.then62_crit_edge135
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %tx_fifo.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %tx_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_fifo.i.i, align 4
  %out.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out.i.i.i, align 4
  %sub.i.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %tobool.not.i.i = icmp eq i32 %15, %17
  br i1 %tobool.not.i.i, label %if.then62.if.end.i.i_crit_edge, label %if.then.i.i

if.then62.if.end.i.i_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %drain.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %drain.i.i, i32 noundef 0) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then62.if.end.i.i_crit_edge
  %avail.i.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16, i32 7
  %19 = ptrtoint ptr %avail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %avail.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_break_ctl, %if.then8.i.i)) #12
          to label %cleanup76.sink.split [label %if.then8.i.i], !srcloc !436

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %device.i.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, ptr noundef %22, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %sub.i.i.i, i32 noundef %20) #12
  br label %cleanup76.sink.split

if.end65:                                         ; preds = %if.end58.if.end65_crit_edge, %if.then3.if.end65_crit_edge, %do.end.if.end65_crit_edge
  %bf.shl = phi i8 [ 0, %do.end.if.end65_crit_edge ], [ -128, %if.end58.if.end65_crit_edge ], [ -128, %if.then3.if.end65_crit_edge ]
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %break_ctl = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %break_ctl to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %break_ctl, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %break_ctl, align 4
  call fastcc void @__fwtty_write_port_status(ptr noundef %1)
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp69 = icmp eq i32 %state, 0
  br i1 %cmp69, label %if.then71, label %if.end65.cleanup76_crit_edge

if.end65.cleanup76_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup76

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %tx_fifo = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 16
  call void @dma_fifo_reset(ptr noundef %tx_fifo) #12
  %flags73 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 21
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags73) #12
  br label %cleanup76.sink.split

cleanup76.sink.split:                             ; preds = %if.then71, %if.then8.i.i, %if.end.i.i
  %lock.sink = phi ptr [ %lock, %if.then71 ], [ %lock.i, %if.end.i.i ], [ %lock.i, %if.then8.i.i ]
  %retval.0.ph = phi i32 [ 0, %if.then71 ], [ -4, %if.end.i.i ], [ -4, %if.then8.i.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.sink) #12
  br label %cleanup76

cleanup76:                                        ; preds = %cleanup76.sink.split, %if.end65.cleanup76_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65.cleanup76_crit_edge ], [ %retval.0.ph, %cleanup76.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwtty_send_xchar(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_send_xchar.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_send_xchar, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %conv = zext i8 %ch to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_send_xchar.__UNIQUE_ID_ddebug261, ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.143, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @fwtty_write_xchar(ptr noundef %1, i8 noundef zeroext %ch)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mctrl = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mctrl, align 4
  %and = and i32 %3, 1040390
  %mstatus = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %mstatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mstatus, align 4
  %and1 = and i32 %5, -1040391
  %or = or i32 %and1, %and
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_tiocmget.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_tiocmget, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_tiocmget.__UNIQUE_ID_ddebug264, ptr noundef %7, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, i32 noundef %or) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_tiocmset.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_tiocmset, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_tiocmset.__UNIQUE_ID_ddebug265, ptr noundef %3, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148, i32 noundef %set, i32 noundef %clear) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %and3 = and i32 %clear, 57350
  %neg = xor i32 %and3, -1
  %mctrl = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mctrl, align 4
  %and4 = and i32 %5, %neg
  %and6 = and i32 %set, 57350
  %or = or i32 %and4, %and6
  store i32 %or, ptr %mctrl, align 4
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_get_icount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #3 align 64 {
entry:
  %stats = alloca %struct.stats, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %stats) #12
  %stats1 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 24
  %2 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 44)
  %console = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fwcon_ops = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fwcon_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwcon_ops, align 8
  %stats3 = getelementptr inbounds %struct.fwconsole_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats3, align 4
  %con_data = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %con_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %con_data, align 4
  call void %7(ptr noundef nonnull %stats, ptr noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %icount4 = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %icount4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %icount4, align 8
  %12 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %icount, align 4
  %dsr = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsr, align 4
  %dsr7 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %15 = ptrtoint ptr %dsr7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dsr7, align 4
  %rng = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 2
  %16 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rng, align 8
  %rng9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %18 = ptrtoint ptr %rng9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rng9, align 4
  %dcd = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 3
  %19 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dcd, align 4
  %dcd11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %21 = ptrtoint ptr %dcd11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dcd11, align 4
  %rx = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 5
  %22 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx, align 4
  %rx13 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 4
  %24 = ptrtoint ptr %rx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rx13, align 4
  %tx = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 4
  %25 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx, align 8
  %27 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats, align 4
  %add = add i32 %28, %26
  %tx15 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 5
  %29 = ptrtoint ptr %tx15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %tx15, align 4
  %frame = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 6
  %30 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame, align 8
  %frame17 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %32 = ptrtoint ptr %frame17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %frame17, align 4
  %overrun = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 8
  %33 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %overrun, align 8
  %overrun19 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %35 = ptrtoint ptr %overrun19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %overrun19, align 4
  %parity = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 7
  %36 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %parity, align 4
  %parity21 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %38 = ptrtoint ptr %parity21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %parity21, align 4
  %brk = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 23, i32 9
  %39 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %brk, align 4
  %brk23 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %41 = ptrtoint ptr %brk23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %brk23, align 4
  %42 = load i32, ptr %overrun, align 8
  %buf_overrun = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 10
  %43 = ptrtoint ptr %buf_overrun to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %buf_overrun, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %stats) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %mutex = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %index = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %line, align 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %5 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 400000000, ptr %baud_base, align 4
  %close_delay = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %close_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %close_delay, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %7) #12
  %div = udiv i32 %call, 10
  %conv = trunc i32 %div to i16
  %close_delay3 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %8 = ptrtoint ptr %close_delay3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %close_delay3, align 4
  %closing_wait = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %9 = ptrtoint ptr %closing_wait to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3000, ptr %closing_wait, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %ss) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %close_delay = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %2 = ptrtoint ptr %close_delay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %close_delay, align 4
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #12
  %mutex = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call2, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %close_delay4 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %close_delay4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %close_delay4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %5)
  %cmp.not = icmp eq i32 %call2.i, %5
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %flags7 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags7, align 4
  %10 = xor i32 %9, %7
  %11 = and i32 %10, -13361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %entry.if.end14_crit_edge
  %close_delay16 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %close_delay16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i, ptr %close_delay16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.then.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwtty_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.150) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %if.end.if.end.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @port_table_lock, i32 noundef 0) #12
  %arrayidx.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %i.016
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %fwtty_port_get.exit, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %serial.i = getelementptr inbounds %struct.fwtty_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial.i, align 8
  %kref.i = getelementptr inbounds %struct.fw_serial, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !447
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !448

if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then1.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.body_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !441

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.body_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %for.body

fwtty_port_get.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  br label %for.end

for.body:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.body_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %i.016) #12
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fwtty_proc_show_port(ptr noundef %m, ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial.i, align 8
  %kref.i10 = getelementptr inbounds %struct.fw_serial, ptr %7, i32 0, i32 1
  tail call fastcc void @kref_put(ptr noundef %kref.i10) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.92) #12
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond = icmp eq i32 %inc, 64
  br i1 %exitcond, label %if.end.for.end_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %fwtty_port_get.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fifo_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwtty_write_xchar(ptr noundef %port, i8 noundef zeroext %ch) unnamed_addr #3 align 64 {
entry:
  %ch.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ch, ptr %ch.addr, align 1
  %stats = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 24
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stats, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %stats, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwtty_write_xchar.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwtty_write_xchar, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !436

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 8
  %5 = ptrtoint ptr %ch.addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ch.addr, align 1
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwtty_write_xchar.__UNIQUE_ID_ddebug253, ptr noundef %4, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !437
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %peer7 = getelementptr inbounds %struct.fwtty_port, ptr %port, i32 0, i32 22
  %11 = ptrtoint ptr %peer7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %peer7, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end18_crit_edge

rcu_read_lock.exit.do.end18_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b29 = load i1, ptr @fwtty_write_xchar.__warned, align 1
  br i1 %.b29, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fwtty_write_xchar.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 809, ptr noundef nonnull @.str.40) #12
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %rcu_read_lock.exit.do.end18_crit_edge
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %do.end18.if.end23_crit_edge, label %if.then21

do.end18.if.end23_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %do.end18
  %fifo_addr = getelementptr inbounds %struct.fwtty_peer, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fifo_addr, align 8
  %15 = load ptr, ptr @fwtty_txn_cache, align 4
  %call.i30 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 2592) #12
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.then21.if.end23_crit_edge, label %if.end.i

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %callback1.i = getelementptr inbounds %struct.fwtty_transaction, ptr %call.i30, i32 0, i32 1
  %16 = ptrtoint ptr %callback1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %callback1.i, align 4
  %port2.i = getelementptr inbounds %struct.fwtty_transaction, ptr %call.i30, i32 0, i32 2
  %17 = ptrtoint ptr %port2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %port, ptr %port2.i, align 8
  %generation3.i = getelementptr inbounds %struct.fwtty_peer, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %generation3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generation3.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !443
  %serial.i = getelementptr inbounds %struct.fwtty_peer, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %node_id.i = getelementptr inbounds %struct.fwtty_peer, ptr %12, i32 0, i32 4
  %24 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_id.i, align 4
  %speed.i = getelementptr inbounds %struct.fwtty_peer, ptr %12, i32 0, i32 5
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed.i, align 8
  call void @fw_send_request(ptr noundef %23, ptr noundef nonnull %call.i30, i32 noundef 1, i32 noundef %25, i32 noundef %19, i32 noundef %27, i64 noundef %14, ptr noundef nonnull %ch.addr, i32 noundef 1, ptr noundef nonnull @fwtty_common_callback, ptr noundef nonnull %call.i30) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %if.then21.if.end23_crit_edge, %do.end18.if.end23_crit_edge
  %call.i33 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i33, label %if.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

if.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %if.end23
  %call1.i34 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %if.end23.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !438
  %28 = call i32 @llvm.read_register.i32(metadata !419) #12
  %and.i.i.i.i.i40 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwloop_install(ptr noundef %driver, ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = load i32, ptr @num_ports, align 4
  %mul = mul i32 %2, %1
  %3 = load i32, ptr @num_ttys, align 4
  %add = add i32 %mul, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add)
  %cmp.i = icmp ugt i32 %add, 63
  br i1 %cmp.i, label %entry.fwtty_port_get.exit_crit_edge, label %if.end.i

entry.fwtty_port_get.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwtty_port_get.exit

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @port_table_lock, i32 noundef 0) #12
  %arrayidx.i = getelementptr [64 x ptr], ptr @port_table, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  %serial.i = getelementptr inbounds %struct.fwtty_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial.i, align 8
  %kref.i = getelementptr inbounds %struct.fw_serial, ptr %7, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !447
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !448

if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then1.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end2.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !441

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end2.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end2.i_crit_edge, %if.end.i.if.end2.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @port_table_lock) #12
  br label %fwtty_port_get.exit

fwtty_port_get.exit:                              ; preds = %if.end2.i, %entry.fwtty_port_get.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end2.i ], [ null, %entry.fwtty_port_get.exit_crit_edge ]
  %call1 = tail call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %fwtty_port_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %driver_data, align 4
  br label %if.end

if.else:                                          ; preds = %fwtty_port_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i6 = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %serial.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial.i6, align 8
  %kref.i7 = getelementptr inbounds %struct.fw_serial, ptr %12, i32 0, i32 1
  tail call fastcc void @kref_put(ptr noundef %kref.i7) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fwserial_parse_mgmt_write(ptr noundef %peer, ptr nocapture noundef readonly %pkt, i64 noundef %addr, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @fwserial_mgmt_addr_handler, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %0, i64 %addr)
  %cmp.not = icmp ne i64 %0, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp1 = icmp ult i32 %len, 4
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %pkt, align 1
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp3.not = icmp eq i32 %conv, %len
  br i1 %cmp3.not, label %lor.lhs.false5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %code = getelementptr inbounds %struct.anon.78, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %code to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %code, align 1
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.184)
  switch i16 %4, label %sw.default.i [
    i16 1, label %lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge
    i16 3, label %lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge177
    i16 2, label %lor.lhs.false5.sw.bb2.i_crit_edge
    i16 4, label %lor.lhs.false5.sw.bb2.i_crit_edge178
    i16 -32765, label %lor.lhs.false5.sw.bb2.i_crit_edge179
    i16 -32764, label %lor.lhs.false5.sw.bb2.i_crit_edge180
  ]

lor.lhs.false5.sw.bb2.i_crit_edge180:             ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

lor.lhs.false5.sw.bb2.i_crit_edge179:             ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

lor.lhs.false5.sw.bb2.i_crit_edge178:             ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

lor.lhs.false5.sw.bb2.i_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge177: ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %mgmt_pkt_expected_len.exit

lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge: ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %mgmt_pkt_expected_len.exit

sw.bb2.i:                                         ; preds = %lor.lhs.false5.sw.bb2.i_crit_edge, %lor.lhs.false5.sw.bb2.i_crit_edge178, %lor.lhs.false5.sw.bb2.i_crit_edge179, %lor.lhs.false5.sw.bb2.i_crit_edge180
  br label %mgmt_pkt_expected_len.exit

sw.default.i:                                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %mgmt_pkt_expected_len.exit

mgmt_pkt_expected_len.exit:                       ; preds = %sw.default.i, %sw.bb2.i, %lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge, %lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge177
  %retval.0.i157 = phi i32 [ -1, %sw.default.i ], [ 4, %sw.bb2.i ], [ 24, %lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge ], [ 24, %lor.lhs.false5.mgmt_pkt_expected_len.exit_crit_edge177 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i157, i32 %len)
  %cmp7.not = icmp eq i32 %retval.0.i157, %len
  br i1 %cmp7.not, label %if.end10, label %mgmt_pkt_expected_len.exit.cleanup_crit_edge

mgmt_pkt_expected_len.exit.cleanup_crit_edge:     ; preds = %mgmt_pkt_expected_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %mgmt_pkt_expected_len.exit
  %lock = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %state = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 18
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.153) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwserial_parse_mgmt_write.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwserial_parse_mgmt_write, %if.then20)) #12
          to label %do.end28 [label %if.then20], !srcloc !436

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer, align 8
  %12 = ptrtoint ptr %code to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %code, align 1
  %conv25 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwserial_parse_mgmt_write.__UNIQUE_ID_ddebug287, ptr noundef %11, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, i32 noundef %conv25) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then20, %if.end15
  %14 = ptrtoint ptr %code to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %code, align 1
  %conv31 = zext i16 %15 to i32
  %and = and i32 %conv31, 4095
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %and, label %do.end107 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb43
    i32 2, label %sw.bb69
    i32 4, label %sw.bb85
  ]

sw.bb:                                            ; preds = %do.end28
  %work = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 15
  %17 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool33.not = icmp eq i32 %and1.i, 0
  br i1 %tobool33.not, label %if.else, label %do.end37

do.end37:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.157) #15
  br label %sw.epilog.thread

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %work_params = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 16
  %21 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %pkt, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %work_params, ptr %21, i32 20)
  %workfn = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 14
  %23 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fwserial_handle_plug_req, ptr %workfn, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %24 = load ptr, ptr @system_unbound_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work) #12
  br label %sw.epilog.thread

sw.bb43:                                          ; preds = %do.end28
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp45.not = icmp eq i32 %26, 3
  br i1 %cmp45.not, label %if.else48, label %sw.bb43.sw.epilog.thread_crit_edge

sw.bb43.sw.epilog.thread_crit_edge:               ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

if.else48:                                        ; preds = %sw.bb43
  %and52 = and i32 %conv31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else61, label %sw.epilog.thread166

if.else61:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #14
  %port63 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 21
  %27 = ptrtoint ptr %port63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port63, align 8
  %29 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %pkt, i32 0, i32 1
  tail call fastcc void @fwserial_virt_plug_complete(ptr noundef %peer, ptr noundef %29)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call fastcc void @fwtty_write_port_status(ptr noundef %28)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  br label %sw.epilog.thread

sw.bb69:                                          ; preds = %do.end28
  %work70 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 15
  %30 = ptrtoint ptr %work70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %work70, align 4
  %and1.i156 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i156)
  %tobool73.not = icmp eq i32 %and1.i156, 0
  br i1 %tobool73.not, label %if.else80, label %do.end77

do.end77:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.163) #15
  br label %sw.epilog.thread

if.else80:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #14
  %workfn81 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 14
  %34 = ptrtoint ptr %workfn81 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fwserial_handle_unplug_req, ptr %workfn81, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %35 = load ptr, ptr @system_unbound_wq, align 4
  %call.i158 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %work70) #12
  br label %sw.epilog.thread

sw.bb85:                                          ; preds = %do.end28
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp87.not = icmp eq i32 %37, 5
  br i1 %cmp87.not, label %if.else90, label %sw.bb85.sw.epilog.thread_crit_edge

sw.bb85.sw.epilog.thread_crit_edge:               ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

if.else90:                                        ; preds = %sw.bb85
  %and94 = and i32 %conv31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else90.sw.epilog_crit_edge, label %do.end99

if.else90.sw.epilog_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end99:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %39, ptr noundef nonnull @.str.166) #15
  br label %sw.epilog

do.end107:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.169, i32 noundef %conv31) #15
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end107, %sw.bb85.sw.epilog.thread_crit_edge, %if.else80, %do.end77, %if.else61, %sw.bb43.sw.epilog.thread_crit_edge, %if.else, %do.end37
  %rcode.0.ph = phi i32 [ 4, %sw.bb85.sw.epilog.thread_crit_edge ], [ 4, %sw.bb43.sw.epilog.thread_crit_edge ], [ 0, %if.else ], [ 4, %do.end37 ], [ 0, %if.else61 ], [ 0, %if.else80 ], [ 4, %do.end77 ], [ 5, %do.end107 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.end99, %if.else90.sw.epilog_crit_edge
  %port1.i159 = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 21
  %42 = ptrtoint ptr %port1.i159 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port1.i159, align 8
  store ptr null, ptr %port1.i159, align 8
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool114.not = icmp eq ptr %43, null
  br i1 %tobool114.not, label %sw.epilog.cleanup_crit_edge, label %if.then.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.thread166:                              ; preds = %if.else48
  %45 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %peer, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %46, ptr noundef nonnull @.str.160) #15
  %port1.i = getelementptr inbounds %struct.fwtty_peer, ptr %peer, i32 0, i32 21
  %47 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port1.i, align 8
  store ptr null, ptr %port1.i, align 8
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool114.not170 = icmp eq ptr %48, null
  br i1 %tobool114.not170, label %sw.epilog.thread166.cleanup_crit_edge, label %sw.epilog.thread166.if.end.i_crit_edge

sw.epilog.thread166.if.end.i_crit_edge:           ; preds = %sw.epilog.thread166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.epilog.thread166.cleanup_crit_edge:            ; preds = %sw.epilog.thread166
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fwtty_update_port_status(ptr noundef nonnull %43, i32 noundef 0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.thread166.if.end.i_crit_edge
  %port.0173176 = phi ptr [ %43, %if.then.i ], [ %48, %sw.epilog.thread166.if.end.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %max_payload.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 17
  %50 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 512, ptr %max_payload.i, align 8
  %align.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 16, i32 8
  %51 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %align.i.i, align 4
  %neg.i.i = sub i32 0, %52
  %and.i.i = and i32 %neg.i.i, 512
  %53 = tail call i32 @llvm.smax.i32(i32 %and.i.i, i32 %52) #12
  %tx_limit2.i.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 16, i32 9
  %54 = ptrtoint ptr %tx_limit2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tx_limit2.i.i, align 4
  %peer.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 22
  %55 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr null, ptr %peer.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %console.i = getelementptr inbounds %struct.tty_port, ptr %port.0173176, i32 0, i32 12
  %56 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %fwcon_ops.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 5
  %57 = ptrtoint ptr %fwcon_ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fwcon_ops.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool12.not.i = icmp eq ptr %60, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then13.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i = getelementptr inbounds %struct.fwtty_port, ptr %port.0173176, i32 0, i32 6
  %61 = ptrtoint ptr %con_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %con_data.i, align 4
  tail call void %60(i32 noundef 2, ptr noundef %62) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.epilog.thread166.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %do.end, %mgmt_pkt_expected_len.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 7, %do.end ], [ 7, %entry.cleanup_crit_edge ], [ 5, %mgmt_pkt_expected_len.exit.cleanup_crit_edge ], [ 5, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %rcode.0.ph, %sw.epilog.thread ], [ 0, %sw.epilog.thread166.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_handle_plug_req(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %work_params = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup42

if.end:                                           ; preds = %entry
  %serial.i = getelementptr i8, ptr %work, i32 -120
  %1 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial.i, align 4
  %ports1.i = getelementptr inbounds %struct.fw_serial, ptr %2, i32 0, i32 6
  tail call void @synchronize_rcu() #12
  %3 = load i32, ptr @num_ttys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp60.i = icmp sgt i32 %3, 0
  br i1 %cmp60.i, label %if.end.for.body.i_crit_edge, label %if.end.fwserial_find_port.exit_crit_edge

if.end.fwserial_find_port.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_find_port.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %if.end43.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %ports1.i, i32 %i.061.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %5, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %peer3.i = getelementptr inbounds %struct.fwtty_port, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %peer3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer3.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end43.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.le = getelementptr ptr, ptr %ports1.i, i32 %i.061.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !450
  %10 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.le, align 4
  %peer29.i = getelementptr inbounds %struct.fwtty_port, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %peer29.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %add.ptr, ptr %peer29.i, align 4
  %13 = load ptr, ptr %arrayidx.i.le, align 4
  %lock41.i = getelementptr inbounds %struct.fwtty_port, ptr %13, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock41.i) #12
  %14 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.le, align 4
  br label %fwserial_find_port.exit

if.end43.i:                                       ; preds = %for.body.i
  %lock45.i = getelementptr inbounds %struct.fwtty_port, ptr %7, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock45.i) #12
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %16 = load i32, ptr @num_ttys, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %if.end43.i.for.body.i_crit_edge, label %if.end43.i.fwserial_find_port.exit_crit_edge

if.end43.i.fwserial_find_port.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_find_port.exit

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fwserial_find_port.exit:                          ; preds = %if.end43.i.fwserial_find_port.exit_crit_edge, %do.body.i, %if.end.fwserial_find_port.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %do.body.i ], [ null, %if.end.fwserial_find_port.exit_crit_edge ], [ null, %if.end43.i.fwserial_find_port.exit_crit_edge ]
  %lock = getelementptr i8, ptr %work, i32 -48
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %state = getelementptr i8, ptr %work, i32 112
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %fwserial_find_port.exit
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %do.end, label %if.else

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.171) #15
  %code.i = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32765, ptr %code.i, align 2
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %call7.i, align 8
  br label %sw.epilog.thread

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %port4 = getelementptr i8, ptr %work, i32 220
  %24 = ptrtoint ptr %port4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %port4, align 8
  %code.i82 = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %code.i82 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 3, ptr %code.i82, align 2
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 24, ptr %call7.i, align 8
  %27 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1
  %rx_handler.i.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 4
  %28 = ptrtoint ptr %rx_handler.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_handler.i.i, align 8
  %add.i.i = add i64 %29, 4
  %length.i.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %length.i.i, align 8
  %32 = trunc i64 %31 to i32
  %conv.i.i = add i32 %32, -4
  %shr.i.i = lshr i64 %29, 32
  %conv4.i.i = trunc i64 %shr.i.i to i32
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv4.i.i, ptr %27, align 4
  %conv5.i.i = trunc i64 %29 to i32
  %status_lo.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %status_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv5.i.i, ptr %status_lo.i.i, align 8
  %shr6.i.i = lshr i64 %add.i.i, 32
  %conv7.i.i = trunc i64 %shr6.i.i to i32
  %fifo_hi.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %fifo_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv7.i.i, ptr %fifo_hi.i.i, align 4
  %conv8.i.i = trunc i64 %add.i.i to i32
  %fifo_lo.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %fifo_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv8.i.i, ptr %fifo_lo.i.i, align 8
  %fifo_len9.i.i = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %fifo_len9.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i.i, ptr %fifo_len9.i.i, align 4
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %state, align 4
  br label %sw.epilog.thread

sw.bb7:                                           ; preds = %fwserial_find_port.exit
  %39 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serial.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %guid = getelementptr inbounds %struct.fw_card, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %guid, align 8
  %guid8 = getelementptr i8, ptr %work, i32 -116
  %45 = ptrtoint ptr %guid8 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %guid8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %46)
  %cmp = icmp ugt i64 %44, %46
  br i1 %cmp, label %sw.bb7.cleanup_crit_edge, label %if.end10

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr i8, ptr %work, i32 64
  %call11 = tail call i32 @del_timer(ptr noundef %timer) #12
  %port12 = getelementptr i8, ptr %work, i32 220
  %47 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port12, align 8
  %code.i83 = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %49 = ptrtoint ptr %code.i83 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 3, ptr %code.i83, align 2
  %50 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 24, ptr %call7.i, align 8
  %51 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1
  %rx_handler.i.i84 = getelementptr inbounds %struct.fwtty_port, ptr %48, i32 0, i32 4
  %52 = ptrtoint ptr %rx_handler.i.i84 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_handler.i.i84, align 8
  %add.i.i85 = add i64 %53, 4
  %length.i.i86 = getelementptr inbounds %struct.fwtty_port, ptr %48, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %length.i.i86 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %length.i.i86, align 8
  %56 = trunc i64 %55 to i32
  %conv.i.i87 = add i32 %56, -4
  %shr.i.i88 = lshr i64 %53, 32
  %conv4.i.i89 = trunc i64 %shr.i.i88 to i32
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv4.i.i89, ptr %51, align 4
  %conv5.i.i90 = trunc i64 %53 to i32
  %status_lo.i.i91 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %status_lo.i.i91 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv5.i.i90, ptr %status_lo.i.i91, align 8
  %shr6.i.i92 = lshr i64 %add.i.i85, 32
  %conv7.i.i93 = trunc i64 %shr6.i.i92 to i32
  %fifo_hi.i.i94 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %fifo_hi.i.i94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv7.i.i93, ptr %fifo_hi.i.i94, align 4
  %conv8.i.i95 = trunc i64 %add.i.i85 to i32
  %fifo_lo.i.i96 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 3
  %60 = ptrtoint ptr %fifo_lo.i.i96 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv8.i.i95, ptr %fifo_lo.i.i96, align 8
  %fifo_len9.i.i97 = getelementptr inbounds %struct.fwserial_mgmt_pkt, ptr %call7.i, i32 0, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %fifo_len9.i.i97 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i.i87, ptr %fifo_len9.i.i97, align 4
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %fwserial_find_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  %code.i99 = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %63 = ptrtoint ptr %code.i99 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -32765, ptr %code.i99, align 2
  %64 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 4, ptr %call7.i, align 8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.else, %do.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %if.end16

sw.epilog:                                        ; preds = %sw.default, %if.end10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool14.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool14.not, label %sw.epilog.if.end16_crit_edge, label %if.then15

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %sw.epilog
  %lock.i100 = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i100) #12
  %max_payload.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 17
  %65 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 512, ptr %max_payload.i, align 8
  %align.i.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 16, i32 8
  %66 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %align.i.i, align 4
  %neg.i.i = sub i32 0, %67
  %and.i.i = and i32 %neg.i.i, 512
  %68 = tail call i32 @llvm.smax.i32(i32 %and.i.i, i32 %67) #12
  %tx_limit2.i.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 16, i32 9
  %69 = ptrtoint ptr %tx_limit2.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tx_limit2.i.i, align 4
  %peer.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 22
  %70 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr null, ptr %peer.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i100) #12
  %console.i = getelementptr inbounds %struct.tty_port, ptr %retval.0.i, i32 0, i32 12
  %71 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %if.then15.if.end16_crit_edge, label %land.lhs.true.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.then15
  %fwcon_ops.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 5
  %72 = ptrtoint ptr %fwcon_ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fwcon_ops.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool12.not.i = icmp eq ptr %75, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end16_crit_edge, label %if.then13.i

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i = getelementptr inbounds %struct.fwtty_port, ptr %retval.0.i, i32 0, i32 6
  %76 = ptrtoint ptr %con_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %con_data.i, align 4
  tail call void %75(i32 noundef 2, ptr noundef %77) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13.i, %land.lhs.true.i.if.end16_crit_edge, %if.then15.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge, %sw.epilog.thread
  %port.0122 = phi ptr [ null, %sw.epilog.thread ], [ null, %sw.epilog.if.end16_crit_edge ], [ %retval.0.i, %if.then15.if.end16_crit_edge ], [ %retval.0.i, %land.lhs.true.i.if.end16_crit_edge ], [ %retval.0.i, %if.then13.i ]
  %generation1.i = getelementptr i8, ptr %work, i32 -108
  %node_id.i = getelementptr i8, ptr %work, i32 -104
  %speed.i = getelementptr i8, ptr %work, i32 -100
  %mgmt_addr.i = getelementptr i8, ptr %work, i32 -92
  br label %do.body.i102

do.body.i102:                                     ; preds = %do.cond19.i.do.body.i102_crit_edge, %if.end16
  %tries.0.i = phi i32 [ 5, %if.end16 ], [ %dec.i, %do.cond19.i.do.body.i102_crit_edge ]
  %78 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %generation1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !451
  %80 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %serial.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %node_id.i, align 4
  %86 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %speed.i, align 8
  %88 = ptrtoint ptr %mgmt_addr.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %mgmt_addr.i, align 8
  %90 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %call7.i, align 8
  %conv.i = zext i16 %91 to i32
  %call.i = tail call i32 @fw_run_transaction(ptr noundef %83, i32 noundef 1, i32 noundef %85, i32 noundef %79, i32 noundef %87, i64 noundef %89, ptr noundef %call7.i, i32 noundef %conv.i) #12
  %92 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %call.i, label %do.body.i102.fwserial_send_mgmt_sync.exit_crit_edge [
    i32 18, label %do.body.i102.do.body12.i_crit_edge
    i32 16, label %do.body.i102.do.body12.i_crit_edge129
    i32 19, label %do.body.i102.do.body12.i_crit_edge130
  ]

do.body.i102.do.body12.i_crit_edge130:            ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i102.do.body12.i_crit_edge129:            ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i102.do.body12.i_crit_edge:               ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i102.fwserial_send_mgmt_sync.exit_crit_edge: ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_send_mgmt_sync.exit

do.body12.i:                                      ; preds = %do.body.i102.do.body12.i_crit_edge, %do.body.i102.do.body12.i_crit_edge129, %do.body.i102.do.body12.i_crit_edge130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwserial_handle_plug_req, %if.then16.i)) #12
          to label %do.cond19.i [label %if.then16.i], !srcloc !436

if.then16.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, ptr noundef %94, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %call.i) #12
  br label %do.cond19.i

do.cond19.i:                                      ; preds = %if.then16.i, %do.body12.i
  %dec.i = add nsw i32 %tries.0.i, -1
  %cmp20.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp20.not.i, label %do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge, label %do.cond19.i.do.body.i102_crit_edge

do.cond19.i.do.body.i102_crit_edge:               ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i102

do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge: ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_send_mgmt_sync.exit

fwserial_send_mgmt_sync.exit:                     ; preds = %do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge, %do.body.i102.fwserial_send_mgmt_sync.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp20 = icmp eq i32 %96, 4
  br i1 %cmp20, label %if.then21, label %fwserial_send_mgmt_sync.exit.cleanup_crit_edge

fwserial_send_mgmt_sync.exit.cleanup_crit_edge:   ; preds = %fwserial_send_mgmt_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %fwserial_send_mgmt_sync.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp eq i32 %call.i, 0
  br i1 %cmp22, label %if.then23, label %do.end32

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %port25 = getelementptr i8, ptr %work, i32 220
  %97 = ptrtoint ptr %port25 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %port25, align 8
  tail call fastcc void @fwserial_virt_plug_complete(ptr noundef %add.ptr, ptr noundef %work_params)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %lock.i103 = getelementptr inbounds %struct.fwtty_port, ptr %98, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i103) #12
  tail call fastcc void @__fwtty_write_port_status(ptr noundef %98) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i103) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  br label %cleanup

do.end32:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.174, i32 noundef %call.i) #15
  %port1.i = getelementptr i8, ptr %work, i32 220
  %101 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %port1.i, align 8
  store ptr null, ptr %port1.i, align 8
  %103 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then23, %fwserial_send_mgmt_sync.exit.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge
  %port.1 = phi ptr [ %port.0122, %if.then23 ], [ %102, %do.end32 ], [ %port.0122, %fwserial_send_mgmt_sync.exit.cleanup_crit_edge ], [ %retval.0.i, %sw.bb7.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool39.not = icmp eq ptr %port.1, null
  br i1 %tobool39.not, label %cleanup.if.end41_crit_edge, label %if.then40

cleanup.if.end41_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %cleanup
  %lock.i104 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i104) #12
  %max_payload.i105 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 17
  %104 = ptrtoint ptr %max_payload.i105 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 512, ptr %max_payload.i105, align 8
  %align.i.i106 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 16, i32 8
  %105 = ptrtoint ptr %align.i.i106 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %align.i.i106, align 4
  %neg.i.i107 = sub i32 0, %106
  %and.i.i108 = and i32 %neg.i.i107, 512
  %107 = tail call i32 @llvm.smax.i32(i32 %and.i.i108, i32 %106) #12
  %tx_limit2.i.i109 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 16, i32 9
  %108 = ptrtoint ptr %tx_limit2.i.i109 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %tx_limit2.i.i109, align 4
  %peer.i110 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 22
  %109 = ptrtoint ptr %peer.i110 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr null, ptr %peer.i110, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i104) #12
  %console.i111 = getelementptr inbounds %struct.tty_port, ptr %port.1, i32 0, i32 12
  %110 = ptrtoint ptr %console.i111 to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i112 = load i8, ptr %console.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i112)
  %tobool11.not.i113 = icmp sgt i8 %bf.load.i112, -1
  br i1 %tobool11.not.i113, label %if.then40.if.end41_crit_edge, label %land.lhs.true.i116

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true.i116:                               ; preds = %if.then40
  %fwcon_ops.i114 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 5
  %111 = ptrtoint ptr %fwcon_ops.i114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fwcon_ops.i114, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %tobool12.not.i115 = icmp eq ptr %114, null
  br i1 %tobool12.not.i115, label %land.lhs.true.i116.if.end41_crit_edge, label %if.then13.i118

land.lhs.true.i116.if.end41_crit_edge:            ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then13.i118:                                   ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i117 = getelementptr inbounds %struct.fwtty_port, ptr %port.1, i32 0, i32 6
  %115 = ptrtoint ptr %con_data.i117 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %con_data.i117, align 4
  tail call void %114(i32 noundef 2, ptr noundef %116) #12
  br label %if.end41

if.end41:                                         ; preds = %if.then13.i118, %land.lhs.true.i116.if.end41_crit_edge, %if.then40.if.end41_crit_edge, %cleanup.if.end41_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %entry.cleanup42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwserial_handle_unplug_req(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -48
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %state = getelementptr i8, ptr %work, i32 112
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %code.i = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %code.i, align 2
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %call7.i, align 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %serial = getelementptr i8, ptr %work, i32 -120
  %7 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %guid = getelementptr inbounds %struct.fw_card, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %guid, align 8
  %guid2 = getelementptr i8, ptr %work, i32 -116
  %13 = ptrtoint ptr %guid2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %guid2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp = icmp ugt i64 %12, %14
  br i1 %cmp, label %sw.bb1.cleanup.thread_crit_edge, label %if.end4

sw.bb1.cleanup.thread_crit_edge:                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end4:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr i8, ptr %work, i32 64
  %call5 = tail call i32 @del_timer(ptr noundef %timer) #12
  %code.i45 = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %code.i45 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %code.i45, align 2
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4, ptr %call7.i, align 8
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %code.i47 = getelementptr inbounds %struct.anon.78, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %code.i47 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -32764, ptr %code.i47, align 2
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4, ptr %call7.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end4, %sw.bb
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %generation1.i = getelementptr i8, ptr %work, i32 -108
  %serial.i = getelementptr i8, ptr %work, i32 -120
  %node_id.i = getelementptr i8, ptr %work, i32 -104
  %speed.i = getelementptr i8, ptr %work, i32 -100
  %mgmt_addr.i = getelementptr i8, ptr %work, i32 -92
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond19.i.do.body.i_crit_edge, %sw.epilog
  %tries.0.i = phi i32 [ 5, %sw.epilog ], [ %dec.i, %do.cond19.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !451
  %22 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serial.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node_id.i, align 4
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed.i, align 8
  %30 = ptrtoint ptr %mgmt_addr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mgmt_addr.i, align 8
  %32 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %call7.i, align 8
  %conv.i = zext i16 %33 to i32
  %call.i = tail call i32 @fw_run_transaction(ptr noundef %25, i32 noundef 1, i32 noundef %27, i32 noundef %21, i32 noundef %29, i64 noundef %31, ptr noundef nonnull %call7.i, i32 noundef %conv.i) #12
  %34 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call.i, label %do.body.i.fwserial_send_mgmt_sync.exit_crit_edge [
    i32 18, label %do.body.i.do.body12.i_crit_edge
    i32 16, label %do.body.i.do.body12.i_crit_edge50
    i32 19, label %do.body.i.do.body12.i_crit_edge51
  ]

do.body.i.do.body12.i_crit_edge51:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i.do.body12.i_crit_edge50:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i.do.body12.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body.i.fwserial_send_mgmt_sync.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_send_mgmt_sync.exit

do.body12.i:                                      ; preds = %do.body.i.do.body12.i_crit_edge, %do.body.i.do.body12.i_crit_edge50, %do.body.i.do.body12.i_crit_edge51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwserial_handle_unplug_req, %if.then16.i)) #12
          to label %do.cond19.i [label %if.then16.i], !srcloc !436

if.then16.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, ptr noundef %36, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %call.i) #12
  br label %do.cond19.i

do.cond19.i:                                      ; preds = %if.then16.i, %do.body12.i
  %dec.i = add nsw i32 %tries.0.i, -1
  %cmp20.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp20.not.i, label %do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge, label %do.cond19.i.do.body.i_crit_edge

do.cond19.i.do.body.i_crit_edge:                  ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge: ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fwserial_send_mgmt_sync.exit

fwserial_send_mgmt_sync.exit:                     ; preds = %do.cond19.i.fwserial_send_mgmt_sync.exit_crit_edge, %do.body.i.fwserial_send_mgmt_sync.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp10 = icmp eq i32 %38, 6
  br i1 %cmp10, label %if.then11, label %fwserial_send_mgmt_sync.exit.cleanup.thread_crit_edge

fwserial_send_mgmt_sync.exit.cleanup.thread_crit_edge: ; preds = %fwserial_send_mgmt_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then11:                                        ; preds = %fwserial_send_mgmt_sync.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.not = icmp eq i32 %call.i, 0
  br i1 %cmp12.not, label %if.then11.cleanup_crit_edge, label %do.end

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.176, i32 noundef %call.i) #15
  br label %cleanup

cleanup.thread:                                   ; preds = %fwserial_send_mgmt_sync.exit.cleanup.thread_crit_edge, %sw.bb1.cleanup.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %if.end20

cleanup:                                          ; preds = %do.end, %if.then11.cleanup_crit_edge
  %port1.i = getelementptr i8, ptr %work, i32 220
  %41 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port1.i, align 8
  store ptr null, ptr %port1.i, align 8
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool18.not = icmp eq ptr %42, null
  br i1 %tobool18.not, label %cleanup.if.end20_crit_edge, label %if.then19

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %cleanup
  tail call fastcc void @fwtty_update_port_status(ptr noundef nonnull %42, i32 noundef 0) #12
  %lock.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %max_payload.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 17
  %44 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 512, ptr %max_payload.i, align 8
  %align.i.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 16, i32 8
  %45 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %align.i.i, align 4
  %neg.i.i = sub i32 0, %46
  %and.i.i = and i32 %neg.i.i, 512
  %47 = tail call i32 @llvm.smax.i32(i32 %and.i.i, i32 %46) #12
  %tx_limit2.i.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 16, i32 9
  %48 = ptrtoint ptr %tx_limit2.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_limit2.i.i, align 4
  %peer.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 22
  %49 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr null, ptr %peer.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %console.i = getelementptr inbounds %struct.tty_port, ptr %42, i32 0, i32 12
  %50 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %console.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %if.then19.if.end20_crit_edge, label %land.lhs.true.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.then19
  %fwcon_ops.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 5
  %51 = ptrtoint ptr %fwcon_ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fwcon_ops.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool12.not.i = icmp eq ptr %54, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end20_crit_edge, label %if.then13.i

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %con_data.i = getelementptr inbounds %struct.fwtty_port, ptr %42, i32 0, i32 6
  %55 = ptrtoint ptr %con_data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %con_data.i, align 4
  tail call void %54(i32 noundef 2, ptr noundef %56) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then13.i, %land.lhs.true.i.if.end20_crit_edge, %if.then19.if.end20_crit_edge, %cleanup.if.end20_crit_edge, %cleanup.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %entry.cleanup21_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !52, !53, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !177, !178, !180, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !209, !210, !212, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !268, !269, !271, !272, !273, !274, !275, !277, !278, !279, !280, !282, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !300, !302, !304, !305, !306, !307, !309, !311, !312, !313, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !331, !333, !334, !336, !337, !338, !340, !341, !343, !344, !345, !347, !348, !350, !351, !352, !354, !355, !357, !359, !360, !361, !363, !364, !365, !367, !369, !371, !373, !374, !375, !377, !378, !379, !380, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !414, !415, !416, !417}
!llvm.named.register.sp = !{!419}
!llvm.module.flags = !{!420, !421, !422, !423, !424, !425, !426, !427}
!llvm.ident = !{!428}

!0 = !{ptr @__param_ttys, !1, !"__param_ttys", i1 false, i1 false}
!1 = !{!"../drivers/staging/fwserial/fwserial.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_ttystype234, !1, !"__UNIQUE_ID_ttystype234", i1 false, i1 false}
!3 = !{ptr @__param_auto, !4, !"__param_auto", i1 false, i1 false}
!4 = !{!"../drivers/staging/fwserial/fwserial.c", i32 37, i32 1}
!5 = !{ptr @__UNIQUE_ID_autotype235, !4, !"__UNIQUE_ID_autotype235", i1 false, i1 false}
!6 = !{ptr @__param_loop, !7, !"__param_loop", i1 false, i1 false}
!7 = !{!"../drivers/staging/fwserial/fwserial.c", i32 38, i32 1}
!8 = !{ptr @__UNIQUE_ID_looptype236, !7, !"__UNIQUE_ID_looptype236", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_firewire_serial__289_2881_fwserial_init6, !10, !"__initcall__kmod_firewire_serial__289_2881_fwserial_init6", i1 false, i1 false}
!10 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2881, i32 1}
!11 = !{ptr @__exitcall_fwserial_exit, !12, !"__exitcall_fwserial_exit", i1 false, i1 false}
!12 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2882, i32 1}
!13 = !{ptr @__UNIQUE_ID_author290, !14, !"__UNIQUE_ID_author290", i1 false, i1 false}
!14 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2884, i32 1}
!15 = !{ptr @__UNIQUE_ID_description291, !16, !"__UNIQUE_ID_description291", i1 false, i1 false}
!16 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2885, i32 1}
!17 = !{ptr @__UNIQUE_ID_file292, !18, !"__UNIQUE_ID_file292", i1 false, i1 false}
!18 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2886, i32 1}
!19 = !{ptr @__UNIQUE_ID_license293, !18, !"__UNIQUE_ID_license293", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ttys294, !21, !"__UNIQUE_ID_ttys294", i1 false, i1 false}
!21 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2888, i32 1}
!22 = !{ptr @__UNIQUE_ID_auto295, !23, !"__UNIQUE_ID_auto295", i1 false, i1 false}
!23 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2889, i32 1}
!24 = !{ptr @__UNIQUE_ID_loop296, !25, !"__UNIQUE_ID_loop296", i1 false, i1 false}
!25 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2890, i32 1}
!26 = !{ptr @fwtty_txn_cache, !27, !"fwtty_txn_cache", i1 false, i1 false}
!27 = !{!"../drivers/staging/fwserial/fwserial.c", i32 74, i32 27}
!28 = !{ptr @fwtty_driver, !29, !"fwtty_driver", i1 false, i1 false}
!29 = !{!"../drivers/staging/fwserial/fwserial.c", i32 76, i32 20}
!30 = !{ptr @fwloop_driver, !31, !"fwloop_driver", i1 false, i1 false}
!31 = !{!"../drivers/staging/fwserial/fwserial.c", i32 77, i32 27}
!32 = !{ptr @fwserial_debugfs, !33, !"fwserial_debugfs", i1 false, i1 false}
!33 = !{!"../drivers/staging/fwserial/fwserial.c", i32 79, i32 23}
!34 = !{ptr @fwserial_mgmt_addr_handler, !35, !"fwserial_mgmt_addr_handler", i1 false, i1 false}
!35 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2464, i32 34}
!36 = !{ptr @__param_str_ttys, !1, !"__param_str_ttys", i1 false, i1 false}
!37 = !{ptr @num_ttys, !38, !"num_ttys", i1 false, i1 false}
!38 = !{!"../drivers/staging/fwserial/fwserial.c", i32 31, i32 12}
!39 = !{ptr @__param_str_auto, !4, !"__param_str_auto", i1 false, i1 false}
!40 = !{ptr @auto_connect, !41, !"auto_connect", i1 false, i1 false}
!41 = !{!"../drivers/staging/fwserial/fwserial.c", i32 33, i32 13}
!42 = !{ptr @__param_str_loop, !7, !"__param_str_loop", i1 false, i1 false}
!43 = !{ptr @create_loop_dev, !44, !"create_loop_dev", i1 false, i1 false}
!44 = !{!"../drivers/staging/fwserial/fwserial.c", i32 34, i32 13}
!45 = !{ptr @.str, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2405, i32 13}
!47 = !{ptr @fwserial_driver, !48, !"fwserial_driver", i1 false, i1 false}
!48 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2402, i32 25}
!49 = !{ptr @.str.1, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/fwserial/fwserial.c", i32 53, i32 8}
!51 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fwserial_list_mutex, !50, !"fwserial_list_mutex", i1 false, i1 false}
!53 = !{ptr @fwserial_list, !54, !"fwserial_list", i1 false, i1 false}
!54 = !{!"../drivers/staging/fwserial/fwserial.c", i32 52, i32 8}
!55 = !{ptr @fwserial_create.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2168, i32 3}
!57 = !{ptr @.str.3, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fwserial_create.__key.4, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2169, i32 3}
!60 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fwserial_create.__key.6, !59, !"__key", i1 false, i1 false}
!62 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fwserial_create.__key.8, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2170, i32 3}
!65 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @fwserial_create.__key.10, !64, !"__key", i1 false, i1 false}
!67 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fwserial_create.__key.12, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2171, i32 3}
!70 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fwserial_create.__key.14, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2172, i32 3}
!73 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2199, i32 3}
!76 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @fwserial_create._entry, !75, !"_entry", i1 false, i1 false}
!81 = !{ptr @fwserial_create._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2210, i32 4}
!84 = !{ptr @fwserial_create._entry.21, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @fwserial_create._entry_ptr.23, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2228, i32 4}
!88 = !{ptr @fwserial_create._entry.24, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fwserial_create._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2240, i32 24}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2242, i32 24}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2249, i32 2}
!96 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @fwserial_create._entry.29, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @fwserial_create._entry_ptr.32, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2256, i32 2}
!101 = !{ptr @fwserial_create._entry.33, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @fwserial_create._entry_ptr.35, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @num_ports, !104, !"num_ports", i1 false, i1 false}
!104 = !{!"../drivers/staging/fwserial/fwserial.c", i32 71, i32 12}
!105 = !{ptr @fwtty_port_ops, !106, !"fwtty_port_ops", i1 false, i1 false}
!106 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1499, i32 41}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/fwserial/fwserial.c", i32 919, i32 2}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @fwtty_port_carrier_raised.__UNIQUE_ID_ddebug257, !108, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/fwserial/fwserial.c", i32 891, i32 2}
!113 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fwtty_port_dtr_rts.__UNIQUE_ID_ddebug256, !112, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../drivers/staging/fwserial/fwserial.c", i32 418, i32 9}
!117 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/fwserial/fwserial.c", i32 195, i32 3}
!124 = !{ptr @fwtty_log_tx_error._rs, !123, !"_rs", i1 false, i1 false}
!125 = !{ptr @__func__.fwtty_log_tx_error, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @fwtty_log_tx_error._entry, !123, !"_entry", i1 false, i1 false}
!128 = !{ptr @fwtty_log_tx_error._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @fwtty_log_tx_error._rs.45, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../drivers/staging/fwserial/fwserial.c", i32 198, i32 3}
!131 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fwtty_log_tx_error._entry.46, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @fwtty_log_tx_error._entry_ptr.48, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @fwtty_log_tx_error._rs.49, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../drivers/staging/fwserial/fwserial.c", i32 201, i32 3}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @fwtty_log_tx_error._entry.50, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @fwtty_log_tx_error._entry_ptr.52, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @fwtty_log_tx_error._rs.53, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../drivers/staging/fwserial/fwserial.c", i32 204, i32 3}
!141 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @fwtty_log_tx_error._entry.54, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @fwtty_log_tx_error._entry_ptr.56, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @fwtty_log_tx_error._rs.57, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../drivers/staging/fwserial/fwserial.c", i32 207, i32 3}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @fwtty_log_tx_error._entry.58, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @fwtty_log_tx_error._entry_ptr.60, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @fwtty_log_tx_error._rs.61, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/staging/fwserial/fwserial.c", i32 210, i32 3}
!151 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @fwtty_log_tx_error._entry.62, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @fwtty_log_tx_error._entry_ptr.64, !150, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!156 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../drivers/staging/fwserial/fwserial.c", i32 711, i32 9}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/fwserial/fwserial.c", i32 736, i32 3}
!161 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @fwtty_tx.__UNIQUE_ID_ddebug252, !160, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!163 = !{ptr @fwtty_tx._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/staging/fwserial/fwserial.c", i32 746, i32 5}
!165 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @fwtty_tx._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @fwtty_tx._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/staging/fwserial/fwserial.c", i32 673, i32 2}
!170 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @fwtty_tx_complete.__UNIQUE_ID_ddebug249, !169, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!172 = !{ptr @fwtty_emit_breaks.buf, !173, !"buf", i1 false, i1 false}
!173 = !{!"../drivers/staging/fwserial/fwserial.c", i32 501, i32 20}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/fwserial/fwserial.c", i32 510, i32 2}
!176 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @fwtty_emit_breaks.__UNIQUE_ID_ddebug243, !175, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!178 = !{ptr @fwtty_port_handler._rs, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../drivers/staging/fwserial/fwserial.c", i32 616, i32 3}
!180 = !{ptr @__func__.fwtty_port_handler, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @fwtty_port_handler._entry, !179, !"_entry", i1 false, i1 false}
!183 = !{ptr @fwtty_port_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1921, i32 3}
!186 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__fwserial_peer_by_node_id._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @__fwserial_peer_by_node_id._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1926, i32 2}
!191 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1887, i32 2}
!194 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/staging/fwserial/fwserial.c", i32 314, i32 2}
!196 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @fwtty_update_port_status.__UNIQUE_ID_ddebug240, !195, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/staging/fwserial/fwserial.c", i32 277, i32 2}
!200 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__fwtty_restart_tx.__UNIQUE_ID_ddebug239, !199, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/staging/fwserial/fwserial.c", i32 534, i32 2}
!204 = !{ptr @fwtty_rx.__UNIQUE_ID_ddebug246, !203, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!205 = !{ptr @fwtty_rx._rs, !206, !"_rs", i1 false, i1 false}
!206 = !{!"../drivers/staging/fwserial/fwserial.c", i32 574, i32 3}
!207 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @fwtty_rx._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @fwtty_rx._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @port_table_corrupt, !211, !"port_table_corrupt", i1 false, i1 false}
!211 = !{!"../drivers/staging/fwserial/fwserial.c", i32 64, i32 13}
!212 = !{ptr @.str.83, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/staging/fwserial/fwserial.c", i32 63, i32 8}
!214 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @port_table_lock, !213, !"port_table_lock", i1 false, i1 false}
!216 = !{ptr @port_table, !217, !"port_table", i1 false, i1 false}
!217 = !{!"../drivers/staging/fwserial/fwserial.c", i32 62, i32 27}
!218 = !{ptr @fwtty_peers_fops, !219, !"fwtty_peers_fops", i1 false, i1 false}
!219 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1497, i32 1}
!220 = !{ptr @.str.85, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1489, i32 16}
!222 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!223 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1492, i32 2}
!224 = !{ptr @.str.86, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1438, i32 16}
!226 = !{ptr @.str.87, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1439, i32 16}
!228 = !{ptr @.str.88, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1440, i32 16}
!230 = !{ptr @.str.89, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1442, i32 16}
!232 = !{ptr @.str.90, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1443, i32 16}
!234 = !{ptr @fwtty_stats_fops, !235, !"fwtty_stats_fops", i1 false, i1 false}
!235 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1481, i32 1}
!236 = !{ptr @.str.91, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1472, i32 18}
!238 = !{ptr @.str.92, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1476, i32 16}
!240 = !{ptr @.str.93, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1405, i32 16}
!242 = !{ptr @.str.94, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1407, i32 16}
!244 = !{ptr @.str.95, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1409, i32 16}
!246 = !{ptr @.str.96, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1421, i32 16}
!248 = !{ptr @.str.97, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1423, i32 16}
!250 = !{ptr @.str.98, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1426, i32 15}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../drivers/staging/fwserial/fwserial.c", i32 867, i32 3}
!254 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @fwserial_add_peer.__key, !256, !"__key", i1 false, i1 false}
!256 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2036, i32 2}
!257 = !{ptr @.str.100, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @fwserial_add_peer.__key.101, !259, !"__key", i1 false, i1 false}
!259 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2039, i32 2}
!260 = !{ptr @.str.102, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @fwserial_add_peer.__key.103, !262, !"__key", i1 false, i1 false}
!262 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2040, i32 2}
!263 = !{ptr @.str.104, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @fwserial_add_peer.__key.105, !265, !"__key", i1 false, i1 false}
!265 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2041, i32 2}
!266 = !{ptr @.str.106, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @fwserial_add_peer.__key.107, !265, !"__key", i1 false, i1 false}
!268 = !{ptr @.str.108, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.109, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2047, i32 2}
!271 = !{ptr @.str.110, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.111, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @fwserial_add_peer._entry, !270, !"_entry", i1 false, i1 false}
!274 = !{ptr @fwserial_add_peer._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.112, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1784, i32 3}
!277 = !{ptr @.str.113, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @fwserial_connect_peer._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @fwserial_connect_peer._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = distinct !{null, !281, !"pkt", i1 false, i1 false}
!281 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1553, i32 40}
!282 = !{ptr @.str.114, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1662, i32 4}
!284 = !{ptr @.str.115, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @fwserial_send_mgmt_sync.__UNIQUE_ID_ddebug270, !283, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!286 = !{ptr @.str.116, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1640, i32 2}
!288 = !{ptr @.str.117, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @fwserial_virt_plug_complete._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @fwserial_virt_plug_complete._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.118, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2111, i32 2}
!293 = !{ptr @.str.119, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @fwserial_remove_peer._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @fwserial_remove_peer._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @fwserial_id_table, !297, !"fwserial_id_table", i1 false, i1 false}
!297 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2392, i32 40}
!298 = !{ptr @fwserial_unit_directory, !299, !"fwserial_unit_directory", i1 false, i1 false}
!299 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2449, i32 29}
!300 = !{ptr @fwserial_unit_directory_data, !301, !"fwserial_unit_directory_data", i1 false, i1 false}
!301 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2434, i32 44}
!302 = !{ptr @.str.120, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2773, i32 3}
!304 = !{ptr @.str.121, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @fwserial_init._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @fwserial_init._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.122, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2786, i32 32}
!309 = !{ptr @.str.124, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2798, i32 4}
!311 = !{ptr @fwserial_init._entry.123, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @fwserial_init._entry_ptr.125, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.126, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2803, i32 38}
!315 = !{ptr @.str.128, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2824, i32 3}
!317 = !{ptr @fwserial_init._entry.127, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @fwserial_init._entry_ptr.129, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.131, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2832, i32 3}
!321 = !{ptr @fwserial_init._entry.130, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @fwserial_init._entry_ptr.132, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.134, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2838, i32 3}
!325 = !{ptr @fwserial_init._entry.133, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @fwserial_init._entry_ptr.135, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @tty_dev_name, !328, !"tty_dev_name", i1 false, i1 false}
!328 = !{!"../drivers/staging/fwserial/fwserial.h", i32 340, i32 19}
!329 = !{ptr @fwtty_ops, !330, !"fwtty_ops", i1 false, i1 false}
!330 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1506, i32 36}
!331 = !{ptr @.str.136, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1097, i32 2}
!333 = !{ptr @fwtty_write.__UNIQUE_ID_ddebug258, !332, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!334 = !{ptr @.str.137, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1124, i32 2}
!336 = !{ptr @.str.138, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @fwtty_write_room.__UNIQUE_ID_ddebug259, !335, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!338 = !{ptr @.str.139, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1138, i32 2}
!340 = !{ptr @fwtty_chars_in_buffer.__UNIQUE_ID_ddebug260, !339, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!341 = !{ptr @.str.140, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1174, i32 2}
!343 = !{ptr @.str.141, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @fwtty_unthrottle.__UNIQUE_ID_ddebug262, !342, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!345 = !{ptr @.str.142, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1314, i32 2}
!347 = !{ptr @fwtty_break_ctl.__UNIQUE_ID_ddebug263, !346, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!348 = !{ptr @.str.143, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1147, i32 2}
!350 = !{ptr @.str.144, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @fwtty_send_xchar.__UNIQUE_ID_ddebug261, !349, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!352 = !{ptr @.str.145, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/staging/fwserial/fwserial.c", i32 806, i32 2}
!354 = !{ptr @fwtty_write_xchar.__UNIQUE_ID_ddebug253, !353, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!355 = distinct !{null, !356, !"__warned", i1 false, i1 false}
!356 = !{!"../drivers/staging/fwserial/fwserial.c", i32 809, i32 9}
!357 = !{ptr @.str.146, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1351, i32 2}
!359 = !{ptr @.str.147, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @fwtty_tiocmget.__UNIQUE_ID_ddebug264, !358, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!361 = !{ptr @.str.148, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1361, i32 2}
!363 = !{ptr @.str.149, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @fwtty_tiocmset.__UNIQUE_ID_ddebug265, !362, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!365 = !{ptr @.str.150, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1452, i32 14}
!367 = !{ptr @loop_dev_name, !368, !"loop_dev_name", i1 false, i1 false}
!368 = !{!"../drivers/staging/fwserial/fwserial.h", i32 341, i32 19}
!369 = !{ptr @fwloop_ops, !370, !"fwloop_ops", i1 false, i1 false}
!370 = !{!"../drivers/staging/fwserial/fwserial.c", i32 1529, i32 36}
!371 = !{ptr @.str.151, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2722, i32 3}
!373 = !{ptr @.str.152, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @fwserial_mgmt_handler.__UNIQUE_ID_ddebug288, !372, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!375 = !{ptr @.str.153, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2626, i32 3}
!377 = !{ptr @.str.154, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @fwserial_parse_mgmt_write._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @fwserial_parse_mgmt_write._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.155, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2633, i32 2}
!382 = !{ptr @fwserial_parse_mgmt_write.__UNIQUE_ID_ddebug287, !381, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!383 = !{ptr @.str.157, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2638, i32 4}
!385 = !{ptr @fwserial_parse_mgmt_write._entry.156, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @fwserial_parse_mgmt_write._entry_ptr.158, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.160, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2653, i32 4}
!389 = !{ptr @fwserial_parse_mgmt_write._entry.159, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @fwserial_parse_mgmt_write._entry_ptr.161, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.163, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2669, i32 4}
!393 = !{ptr @fwserial_parse_mgmt_write._entry.162, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @fwserial_parse_mgmt_write._entry_ptr.164, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.166, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2682, i32 5}
!397 = !{ptr @fwserial_parse_mgmt_write._entry.165, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @fwserial_parse_mgmt_write._entry_ptr.167, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.169, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2689, i32 3}
!401 = !{ptr @fwserial_parse_mgmt_write._entry.168, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @fwserial_parse_mgmt_write._entry_ptr.170, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.171, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2498, i32 4}
!405 = !{ptr @.str.172, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @fwserial_handle_plug_req._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @fwserial_handle_plug_req._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.174, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2540, i32 4}
!410 = !{ptr @fwserial_handle_plug_req._entry.173, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @fwserial_handle_plug_req._entry_ptr.175, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.176, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2591, i32 4}
!414 = !{ptr @.str.177, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @fwserial_handle_unplug_req._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @fwserial_handle_unplug_req._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @fwserial_mgmt_addr_region, !418, !"fwserial_mgmt_addr_region", i1 false, i1 false}
!418 = !{!"../drivers/staging/fwserial/fwserial.c", i32 2459, i32 39}
!419 = !{!"sp"}
!420 = !{i32 1, !"wchar_size", i32 2}
!421 = !{i32 1, !"min_enum_size", i32 4}
!422 = !{i32 8, !"branch-target-enforcement", i32 0}
!423 = !{i32 8, !"sign-return-address", i32 0}
!424 = !{i32 8, !"sign-return-address-all", i32 0}
!425 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!426 = !{i32 7, !"uwtable", i32 1}
!427 = !{i32 7, !"frame-pointer", i32 2}
!428 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!429 = !{i8 0, i8 2}
!430 = !{i64 2149346972}
!431 = !{i64 2154542219}
!432 = !{i64 2154542375}
!433 = !{!"auto-init"}
!434 = !{i64 2154519608}
!435 = !{i64 2154519764}
!436 = !{i64 2148307459, i64 2148307464, i64 2148307477, i64 2148307521, i64 2148307555, i64 2148307576}
!437 = !{i64 2149321580}
!438 = !{i64 2149321846}
!439 = !{i64 2148583597}
!440 = !{i64 2148498061, i64 2148498093, i64 2148498122, i64 2148498156, i64 2148498187, i64 2148498210}
!441 = !{!"branch_weights", i32 2000, i32 1}
!442 = !{i64 2149629567}
!443 = !{i64 2154270309}
!444 = !{i64 2154270474}
!445 = !{i64 2154510498}
!446 = !{i64 2154361566}
!447 = !{i64 2148495596, i64 2148495628, i64 2148495657, i64 2148495691, i64 2148495722, i64 2148495745}
!448 = !{!"branch_weights", i32 1, i32 2000}
!449 = !{i64 2154416510}
!450 = !{i64 2154424051}
!451 = !{i64 2154405474}
