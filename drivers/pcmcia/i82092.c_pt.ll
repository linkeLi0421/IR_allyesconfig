; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/i82092.c_pt.bc'
source_filename = "../drivers/pcmcia/i82092.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.socket_info = type { i32, i32, i32, %struct.pcmcia_socket, ptr }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pccard_resource_ops = type opaque
%struct.pccard_io_map = type { i8, i8, i16, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus_region = type { i32, i32 }

@__UNIQUE_ID_file236 = internal constant [34 x i8] c"i82092.file=drivers/pcmcia/i82092\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [19 x i8] c"i82092.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i82092__241_676_i82092aa_module_init6 = internal global ptr @i82092aa_module_init, section ".initcall6.init", align 4
@__exitcall_i82092aa_module_exit = internal global ptr @i82092aa_module_exit, section ".exitcall.exit", align 4
@i82092aa_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @i82092aa_pci_ids, ptr @i82092aa_pci_probe, ptr @i82092aa_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i82092\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i82092aa\00", [23 x i8] zeroinitializer }, align 32
@i82092aa_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4641, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@socket_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@i82092aa_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Oops, you did something we didn't think of.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i82092aa_pci_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pcmcia/i82092.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i82092aa_pci_probe._entry_ptr = internal global ptr @i82092aa_pci_probe._entry, section ".printk_index", align 4
@i82092aa_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 105, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"configured as a %d socket device.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i82092aa_pci_probe._entry_ptr.10 = internal global ptr @i82092aa_pci_probe._entry.7, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@sockets = internal global { [4 x %struct.socket_info], [1536 x i8] } zeroinitializer, align 32
@i82092aa_pci_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slot %i is occupied\0A\00", [43 x i8] zeroinitializer }, align 32
@i82092aa_pci_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slot %i is vacant\0A\00", [45 x i8] zeroinitializer }, align 32
@i82092aa_pci_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Requesting interrupt %i\0A\00", [39 x i8] zeroinitializer }, align 32
@i82092aa_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 147, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register IRQ %d, aborting\0A\00", [59 x i8] zeroinitializer }, align 32
@i82092aa_pci_probe._entry_ptr.16 = internal global ptr @i82092aa_pci_probe._entry.14, section ".printk_index", align 4
@i82092aa_operations = internal global { %struct.pccard_operations, [40 x i8] } { %struct.pccard_operations { ptr @i82092aa_init, ptr null, ptr @i82092aa_get_status, ptr @i82092aa_set_socket, ptr @i82092aa_set_io_map, ptr @i82092aa_set_mem_map }, [40 x i8] zeroinitializer }, align 32
@pccard_nonstatic_ops = external dso_local global %struct.pccard_resource_ops, align 1
@port_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port_lock\00", [22 x i8] zeroinitializer }, align 32
@i82092aa_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013i82092aa: infinite eventloop in interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i82092aa_interrupt\00", [45 x i8] zeroinitializer }, align 32
@i82092aa_interrupt._entry_ptr = internal global ptr @i82092aa_interrupt._entry, section ".printk_index", align 4
@i82092aa_interrupt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 326, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Card detected in socket %i!\0A\00", [35 x i8] zeroinitializer }, align 32
@i82092aa_interrupt._entry_ptr.22 = internal global ptr @i82092aa_interrupt._entry.20, section ".printk_index", align 4
@__const.i82092aa_init.res = private unnamed_addr constant %struct.resource { i32 0, i32 4095, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, align 4
@__const.i82092aa_init.io = private unnamed_addr constant %struct.pccard_io_map { i8 0, i8 0, i16 0, i32 0, i32 1 }, align 4
@i82092aa_set_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 473, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Auto power\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i82092aa_set_socket\00", [44 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr = internal global ptr @i82092aa_set_socket._entry, section ".printk_index", align 4
@i82092aa_set_socket._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 477, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Power Enabled\0A\00", [17 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.27 = internal global ptr @i82092aa_set_socket._entry.25, section ".printk_index", align 4
@i82092aa_set_socket._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 487, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setting voltage to Vcc to 5V on socket %i\0A\00", [53 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.30 = internal global ptr @i82092aa_set_socket._entry.28, section ".printk_index", align 4
@i82092aa_set_socket._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.4, i32 493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s called with invalid VCC power value: %i\00", [53 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.33 = internal global ptr @i82092aa_set_socket._entry.31, section ".printk_index", align 4
@i82092aa_set_socket._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.4, i32 500, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"not setting Vpp on socket %i\0A\00", [34 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.36 = internal global ptr @i82092aa_set_socket._entry.34, section ".printk_index", align 4
@i82092aa_set_socket._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.4, i32 504, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting Vpp to 5.0 for socket %i\0A\00", [62 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.39 = internal global ptr @i82092aa_set_socket._entry.37, section ".printk_index", align 4
@i82092aa_set_socket._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.4, i32 508, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting Vpp to 12.0\0A\00", [43 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.42 = internal global ptr @i82092aa_set_socket._entry.40, section ".printk_index", align 4
@i82092aa_set_socket._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.4, i32 514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s called with invalid VPP power value: %i\00", [53 x i8] zeroinitializer }, align 32
@i82092aa_set_socket._entry_ptr.45 = internal global ptr @i82092aa_set_socket._entry.43, section ".printk_index", align 4
@i82092aa_set_mem_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"invalid mem map for socket %i: %llx to %llx with a start of %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i82092aa_set_mem_map\00", [43 x i8] zeroinitializer }, align 32
@i82092aa_set_mem_map._entry_ptr = internal global ptr @i82092aa_set_mem_map._entry, section ".printk_index", align 4
@switch.table.i82092aa_pci_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 2, i32 1, i32 2, i32 4, i32 2, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 50]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 50, i64 120]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"i82092aa_pci_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 35, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 666, i32 9 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 36, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"i82092aa_pci_ids\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 29, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"socket_count\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 70, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 99, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 104, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [8 x i8] c"sockets\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 69, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 127, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 129, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 142, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 146, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"i82092aa_operations\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 44, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"port_lock\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 185, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 302, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 325, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 473, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 477, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 485, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 491, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 499, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 503, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 508, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 512, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [27 x i8] c"../drivers/pcmcia/i82092.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 607, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [32 x i8] c"switch.table.i82092aa_pci_probe\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_i82092aa_module_exit, ptr @__initcall__kmod_i82092__241_676_i82092aa_module_init6, ptr @i82092aa_interrupt._entry, ptr @i82092aa_interrupt._entry.20, ptr @i82092aa_interrupt._entry_ptr, ptr @i82092aa_interrupt._entry_ptr.22, ptr @i82092aa_pci_probe._entry, ptr @i82092aa_pci_probe._entry.14, ptr @i82092aa_pci_probe._entry.7, ptr @i82092aa_pci_probe._entry_ptr, ptr @i82092aa_pci_probe._entry_ptr.10, ptr @i82092aa_pci_probe._entry_ptr.16, ptr @i82092aa_set_mem_map._entry, ptr @i82092aa_set_mem_map._entry_ptr, ptr @i82092aa_set_socket._entry, ptr @i82092aa_set_socket._entry.25, ptr @i82092aa_set_socket._entry.28, ptr @i82092aa_set_socket._entry.31, ptr @i82092aa_set_socket._entry.34, ptr @i82092aa_set_socket._entry.37, ptr @i82092aa_set_socket._entry.40, ptr @i82092aa_set_socket._entry.43, ptr @i82092aa_set_socket._entry_ptr, ptr @i82092aa_set_socket._entry_ptr.27, ptr @i82092aa_set_socket._entry_ptr.30, ptr @i82092aa_set_socket._entry_ptr.33, ptr @i82092aa_set_socket._entry_ptr.36, ptr @i82092aa_set_socket._entry_ptr.39, ptr @i82092aa_set_socket._entry_ptr.42, ptr @i82092aa_set_socket._entry_ptr.45, ptr @i82092aa_pci_driver, ptr @.str, ptr @.str.1, ptr @i82092aa_pci_ids, ptr @socket_count, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @sockets, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @i82092aa_operations, ptr @port_lock, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @switch.table.i82092aa_pci_probe], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sockets to i32), i32 6208, i32 7744, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_operations to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_interrupt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_socket._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i82092aa_set_mem_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i82092aa_pci_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_module_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @i82092aa_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i82092aa_module_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @i82092aa_pci_driver) #4
  %0 = load i32, ptr getelementptr inbounds ([4 x %struct.socket_info], ptr @sockets, i32 0, i32 0, i32 2), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %0, i32 noundef 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %configbyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %configbyte) #4
  %0 = ptrtoint ptr %configbyte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %configbyte, align 1, !annotation !108
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %configbyte) #4
  %1 = ptrtoint ptr %configbyte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %configbyte, align 1
  %3 = and i8 %2, 6
  %and = zext i8 %3 to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.i82092aa_pci_probe, i32 0, i32 %and
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr @socket_count, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.8, i32 noundef %switch.load) #7
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %call9 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %6, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.err_out_disable_crit_edge, label %for.cond.preheader

if.end.err_out_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out_disable

for.cond.preheader:                               ; preds = %if.end
  %7 = load i32, ptr @socket_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp198 = icmp sgt i32 %7, 0
  br i1 %cmp198, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0199 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx14 = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199
  %card_state = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 1
  %8 = ptrtoint ptr %card_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %card_state, align 4
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %io_base = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 2
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %io_base, align 8
  %dev20 = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 4
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev20, align 8
  %socket = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 3
  %features = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 3, i32 16
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %or = or i32 %14, 16384
  store i32 %or, ptr %features, align 4
  %map_size = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 3, i32 18
  %15 = ptrtoint ptr %map_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %map_size, align 4
  %irq_mask = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 3, i32 17
  %16 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %irq_mask, align 8
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %pci_irq = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 3, i32 20
  %19 = ptrtoint ptr %pci_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pci_irq, align 4
  %cb_dev = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0199, i32 3, i32 21
  %20 = ptrtoint ptr %cb_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %cb_dev, align 8
  %21 = ptrtoint ptr %socket to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %socket, align 8
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0199, ptr %arrayidx14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i = icmp eq i32 %10, 0
  br i1 %cmp2.i, label %for.body.do.body48_crit_edge, label %card_present.exit

for.body.do.body48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body48

card_present.exit:                                ; preds = %for.body
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i.i = trunc i32 %i.0199 to i8
  %23 = shl i8 %socket.tr.i.i, 6
  %conv6.i.i = or i8 %23, 1
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_base, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  call void @arm_heavy_mb() #4
  %conv12.i.i = and i32 %25, 65535
  %add13.i.i = or i32 %conv12.i.i, -18874368
  %26 = inttoptr i32 %add13.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv6.i.i) #4, !srcloc !110
  %add18.i.i = add nuw nsw i32 %conv12.i.i, -18874367
  %27 = inttoptr i32 %add18.i.i to ptr
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i.i) #4
  %29 = and i8 %28, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %29)
  %cmp5.i.not = icmp eq i8 %29, 12
  br i1 %cmp5.i.not, label %if.then35, label %card_present.exit.do.body48_crit_edge

card_present.exit.do.body48_crit_edge:            ; preds = %card_present.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body48

if.then35:                                        ; preds = %card_present.exit
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %card_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %card_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i82092aa_pci_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i82092aa_pci_probe, %if.then43)) #4
          to label %for.inc [label %if.then43], !srcloc !113

if.then43:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i82092aa_pci_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev8, ptr noundef nonnull @.str.11, i32 noundef %i.0199) #4
  br label %for.inc

do.body48:                                        ; preds = %card_present.exit.do.body48_crit_edge, %for.body.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i82092aa_pci_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i82092aa_pci_probe, %if.then60)) #4
          to label %for.inc [label %if.then60], !srcloc !113

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i82092aa_pci_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev8, ptr noundef nonnull @.str.12, i32 noundef %i.0199) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %do.body48, %if.then43, %if.then35
  %inc = add nuw nsw i32 %i.0199, 1
  %31 = load i32, ptr @socket_count, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %configbyte to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %configbyte, align 1
  %call66 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 80, i8 noundef zeroext -1) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i82092aa_pci_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i82092aa_pci_probe, %if.then79)) #4
          to label %do.end84 [label %if.then79], !srcloc !113

if.then79:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %irq81 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %33 = ptrtoint ptr %irq81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i82092aa_pci_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev8, ptr noundef nonnull @.str.13, i32 noundef %34) #4
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %for.end
  %irq85 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %35 = ptrtoint ptr %irq85 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq85, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %36, ptr noundef nonnull @i82092aa_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull @i82092aa_interrupt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool87.not = icmp eq i32 %call.i, 0
  br i1 %tobool87.not, label %for.cond95.preheader, label %do.end91

for.cond95.preheader:                             ; preds = %do.end84
  %37 = load i32, ptr @socket_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp96202 = icmp sgt i32 %37, 0
  br i1 %cmp96202, label %for.cond95.preheader.for.body98_crit_edge, label %for.cond95.preheader.cleanup_crit_edge

for.cond95.preheader.cleanup_crit_edge:           ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond95.preheader.for.body98_crit_edge:        ; preds = %for.cond95.preheader
  br label %for.body98

do.end91:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %irq85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.15, i32 noundef %39) #7
  br label %err_out_free_res

for.body98:                                       ; preds = %for.inc113.for.body98_crit_edge, %for.cond95.preheader.for.body98_crit_edge
  %i.1203 = phi i32 [ %inc114, %for.inc113.for.body98_crit_edge ], [ 0, %for.cond95.preheader.for.body98_crit_edge ]
  %socket101 = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.1203, i32 3
  %parent = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.1203, i32 3, i32 42, i32 1
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev8, ptr %parent, align 8
  %ops = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.1203, i32 3, i32 23
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @i82092aa_operations, ptr %ops, align 8
  %resource_ops = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.1203, i32 3, i32 24
  %42 = ptrtoint ptr %resource_ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pccard_nonstatic_ops, ptr %resource_ops, align 4
  %call109 = call i32 @pcmcia_register_socket(ptr noundef %socket101) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %for.inc113, label %err_out_free_sockets

for.inc113:                                       ; preds = %for.body98
  %inc114 = add nuw nsw i32 %i.1203, 1
  %43 = load i32, ptr @socket_count, align 4
  %cmp96 = icmp slt i32 %inc114, %43
  br i1 %cmp96, label %for.inc113.for.body98_crit_edge, label %for.inc113.cleanup_crit_edge

for.inc113.cleanup_crit_edge:                     ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc113.for.body98_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body98

err_out_free_sockets:                             ; preds = %for.body98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1203)
  %.not = icmp eq i32 %i.1203, 0
  br i1 %.not, label %err_out_free_sockets.if.end127_crit_edge, label %err_out_free_sockets.for.body121_crit_edge

err_out_free_sockets.for.body121_crit_edge:       ; preds = %err_out_free_sockets
  br label %for.body121

err_out_free_sockets.if.end127_crit_edge:         ; preds = %err_out_free_sockets
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %err_out_free_sockets.for.body121_crit_edge
  %i.2206.in = phi i32 [ %i.2206, %for.body121.for.body121_crit_edge ], [ %i.1203, %err_out_free_sockets.for.body121_crit_edge ]
  %i.2206 = add nsw i32 %i.2206.in, -1
  %socket123 = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.2206, i32 3
  call void @pcmcia_unregister_socket(ptr noundef %socket123) #4
  %cmp119 = icmp sgt i32 %i.2206.in, 1
  br i1 %cmp119, label %for.body121.for.body121_crit_edge, label %for.body121.if.end127_crit_edge

for.body121.if.end127_crit_edge:                  ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body121

if.end127:                                        ; preds = %for.body121.if.end127_crit_edge, %err_out_free_sockets.if.end127_crit_edge
  %44 = ptrtoint ptr %irq85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq85, align 4
  %call129 = call ptr @free_irq(i32 noundef %45, ptr noundef nonnull @i82092aa_interrupt) #4
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %if.end127, %do.end91
  %ret.0 = phi i32 [ %call.i, %do.end91 ], [ %call109, %if.end127 ]
  %46 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %resource, align 8
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %47, i32 noundef 2) #4
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_free_res, %if.end.err_out_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_out_free_res ], [ -16, %if.end.err_out_disable_crit_edge ]
  call void @pci_disable_device(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable, %for.inc113.cleanup_crit_edge, %for.cond95.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_out_disable ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond95.preheader.cleanup_crit_edge ], [ 0, %for.inc113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %configbyte) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i82092aa_pci_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef nonnull @i82092aa_interrupt) #4
  %2 = load i32, ptr @socket_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %socket = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.04, i32 3
  tail call void @pcmcia_unregister_socket(ptr noundef %socket) #4
  %inc = add nuw nsw i32 %i.04, 1
  %3 = load i32, ptr @socket_count, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %loopcount.0 = phi i32 [ 0, %entry ], [ %inc, %for.end.while.cond_crit_edge ]
  %handled.0 = phi i32 [ 0, %entry ], [ %handled.2, %for.end.while.cond_crit_edge ]
  %inc = add nuw nsw i32 %loopcount.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %loopcount.0)
  %exitcond = icmp eq i32 %loopcount.0, 20
  br i1 %exitcond, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %0 = load i32, ptr @socket_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp197 = icmp sgt i32 %0, 0
  br i1 %cmp197, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.while.end_crit_edge

for.cond.preheader.while.end_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %while.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0100 = phi i32 [ %inc49, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %active.099 = phi i32 [ %active.1, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %handled.198 = phi i32 [ %handled.2, %cleanup.for.body_crit_edge ], [ %handled.0, %for.cond.preheader.for.body_crit_edge ]
  %card_state = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0100, i32 1
  %1 = ptrtoint ptr %card_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %card_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i = trunc i32 %i.0100 to i8
  %3 = shl i8 %socket.tr.i, 6
  %io_base.i = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0100, i32 2
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i = or i8 %3, 4
  %conv12.i = and i32 %5, 65535
  %add13.i = or i32 %conv12.i, -18874368
  %6 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv11.i) #4, !srcloc !110
  %add18.i = add nuw nsw i32 %conv12.i, -18874367
  %7 = inttoptr i32 %add18.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp6 = icmp eq i8 %8, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end17_crit_edge, label %if.then10

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %dev15 = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0100, i32 4
  %9 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.21, i32 noundef %i.0100) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end9.if.end17_crit_edge
  %events.0 = phi i32 [ 128, %if.then10 ], [ 0, %if.end9.if.end17_crit_edge ]
  %call2.i83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i87 = or i8 %3, 3
  %conv12.i88 = and i32 %12, 65535
  %add13.i89 = or i32 %conv12.i88, -18874368
  %13 = inttoptr i32 %add13.i89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i87) #4, !srcloc !110
  %add18.i90 = add nuw nsw i32 %conv12.i88, -18874367
  %14 = inttoptr i32 %add18.i90 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i83) #4
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  %and23 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or26 = or i32 %events.0, 1024
  br i1 %tobool24.not, label %if.then22.if.end43_crit_edge, label %if.then22.if.then45_crit_edge

if.then22.if.then45_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

if.then22.if.end43_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.else:                                          ; preds = %if.end17
  %and28 = shl nuw nsw i32 %conv, 4
  %17 = and i32 %and28, 48
  %18 = or i32 %17, %events.0
  %and38 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or41 = or i32 %18, 64
  br i1 %tobool39.not, label %if.else.if.end43_crit_edge, label %if.else.if.then45_crit_edge

if.else.if.then45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then22.if.end43_crit_edge
  %events.3 = phi i32 [ %events.0, %if.then22.if.end43_crit_edge ], [ %18, %if.else.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.3)
  %tobool44.not = icmp eq i32 %events.3, 0
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.end43.if.then45_crit_edge

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %if.else.if.then45_crit_edge, %if.then22.if.then45_crit_edge
  %events.394 = phi i32 [ %events.3, %if.end43.if.then45_crit_edge ], [ %or41, %if.else.if.then45_crit_edge ], [ %or26, %if.then22.if.then45_crit_edge ]
  %socket = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %i.0100, i32 3
  tail call void @pcmcia_parse_events(ptr noundef %socket, i32 noundef %events.394) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %events.395 = phi i32 [ %events.394, %if.then45 ], [ 0, %if.end43.if.end47_crit_edge ]
  %or48 = or i32 %events.395, %active.099
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %handled.2 = phi i32 [ 1, %if.end47 ], [ %handled.198, %for.body.cleanup_crit_edge ], [ %handled.198, %if.end4.cleanup_crit_edge ]
  %active.1 = phi i32 [ %or48, %if.end47 ], [ %active.099, %for.body.cleanup_crit_edge ], [ %active.099, %if.end4.cleanup_crit_edge ]
  %inc49 = add nuw nsw i32 %i.0100, 1
  %19 = load i32, ptr @socket_count, align 4
  %cmp1 = icmp slt i32 %inc49, %19
  br i1 %cmp1, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup
  %cmp50 = icmp eq i32 %active.1, 0
  br i1 %cmp50, label %for.end.while.end_crit_edge, label %for.end.while.cond_crit_edge

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %do.end, %for.cond.preheader.while.end_crit_edge
  %handled.3 = phi i32 [ %handled.0, %do.end ], [ %handled.0, %for.cond.preheader.while.end_crit_edge ], [ %handled.2, %for.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.3)
  %tobool54.not = icmp ne i32 %handled.3, 0
  %cond = zext i1 %tobool54.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_parse_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_init(ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %io = alloca %struct.pccard_io_map, align 4
  %mem = alloca %struct.pccard_mem_map, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #4
  %0 = call ptr @memcpy(ptr %res, ptr @__const.i82092aa_init.res, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %io) #4
  %1 = call ptr @memcpy(ptr %io, ptr @__const.i82092aa_init.io, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mem) #4
  %2 = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 5
  %3 = call ptr @memset(ptr %mem, i32 0, i32 12)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %res, ptr %2, align 4
  %5 = ptrtoint ptr %io to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %io, align 4
  %call = call i32 @i82092aa_set_io_map(ptr noundef %sock, ptr noundef nonnull %io)
  %6 = ptrtoint ptr %io to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %io, align 4
  %call.1 = call i32 @i82092aa_set_io_map(ptr noundef %sock, ptr noundef nonnull %io)
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mem, align 4
  %call9 = call i32 @i82092aa_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mem, align 4
  %call9.1 = call i32 @i82092aa_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %mem, align 4
  %call9.2 = call i32 @i82092aa_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %mem, align 4
  %call9.3 = call i32 @i82092aa_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %mem, align 4
  %call9.4 = call i32 @i82092aa_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mem) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %io) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_get_status(ptr nocapture noundef readonly %socket, ptr nocapture noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %socket, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i = trunc i32 %1 to i8
  %2 = shl i8 %socket.tr.i, 6
  %io_base.i = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %1, i32 2
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i = or i8 %2, 1
  %conv12.i = and i32 %4, 65535
  %add13.i = or i32 %conv12.i, -18874368
  %5 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv11.i) #4, !srcloc !110
  %add18.i = add nuw nsw i32 %conv12.i, -18874367
  %6 = inttoptr i32 %add18.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #4
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp = icmp eq i32 %and, 12
  %spec.select = select i1 %cmp, i32 128, i32 0
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %value, align 4
  %call2.i51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i55 = or i8 %2, 3
  %conv12.i56 = and i32 %10, 65535
  %add13.i57 = or i32 %conv12.i56, -18874368
  %11 = inttoptr i32 %add13.i57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv11.i55) #4, !srcloc !110
  %add18.i58 = add nuw nsw i32 %conv12.i56, -18874367
  %12 = inttoptr i32 %add18.i58 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i51) #4
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %and11 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  br i1 %tobool12.not, label %if.then5.if.end21.sink.split_crit_edge, label %if.then5.if.end21_crit_edge

if.then5.if.end21_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then5.if.end21.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %or14 = or i32 %16, 16
  store i32 %or14, ptr %value, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else.if.end15_crit_edge
  %and16 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21.sink.split_crit_edge, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end15.if.end21.sink.split_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.end15.if.end21.sink.split_crit_edge, %if.then5.if.end21.sink.split_crit_edge
  %.sink59 = phi i32 [ 1024, %if.then5.if.end21.sink.split_crit_edge ], [ 32, %if.end15.if.end21.sink.split_crit_edge ]
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %or19 = or i32 %18, %.sink59
  store i32 %or19, ptr %value, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end15.if.end21_crit_edge, %if.then5.if.end21_crit_edge
  %and22 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %or25 = or i32 %20, 1
  store i32 %or25, ptr %value, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %and27 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value, align 4
  %or30 = or i32 %22, 64
  store i32 %or30, ptr %value, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %and32 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %or35 = or i32 %24, 256
  store i32 %or35, ptr %value, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_set_socket(ptr nocapture noundef readonly %socket, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %socket, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i.i = trunc i32 %1 to i8
  %2 = shl i8 %socket.tr.i.i, 6
  %io_base.i.i = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %1, i32 2
  %3 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv11.i.i = or i8 %2, 30
  %conv12.i.i = and i32 %4, 65535
  %add13.i.i = or i32 %conv12.i.i, -18874368
  %5 = inttoptr i32 %add13.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv11.i.i) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %add21.i.i = add nuw nsw i32 %conv12.i.i, -18874367
  %6 = inttoptr i32 %add21.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i.i) #4
  %call2.i3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv11.i7.i = or i8 %2, 22
  %conv12.i8.i = and i32 %8, 65535
  %add13.i9.i = or i32 %conv12.i8.i, -18874368
  %9 = inttoptr i32 %add13.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv11.i7.i) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %add21.i10.i = add nuw nsw i32 %conv12.i8.i, -18874367
  %10 = inttoptr i32 %add21.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i3.i) #4
  %call2.i11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %11 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %conv11.i15.i = or i8 %2, 3
  %conv12.i16.i = and i32 %12, 65535
  %add13.i17.i = or i32 %conv12.i16.i, -18874368
  %13 = inttoptr i32 %add13.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i15.i) #4, !srcloc !110
  %add18.i.i = add nuw nsw i32 %conv12.i16.i, -18874367
  %14 = inttoptr i32 %add18.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  %or48.i.i = or i8 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i15.i) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %or48.i.i) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i11.i) #4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 96
  %20 = xor i8 %19, 64
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i = trunc i32 %1 to i8
  %21 = shl i8 %socket.tr.i, 6
  %22 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv11.i = or i8 %21, 3
  %conv12.i = and i32 %23, 65535
  %add13.i = or i32 %conv12.i, -18874368
  %24 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv11.i) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %add21.i = add nuw nsw i32 %conv12.i, -18874367
  %25 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %20) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %and11 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %entry.if.end18_crit_edge, label %do.end

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr i8, ptr %socket, i32 1528
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.23) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %entry.if.end18_crit_edge
  %reg.2 = phi i8 [ 96, %do.end ], [ 64, %entry.if.end18_crit_edge ]
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  %and20 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end31_crit_edge, label %do.end25

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %dev26 = getelementptr i8, ptr %socket, i32 1528
  %32 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.26) #7
  %34 = or i8 %reg.2, -128
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.end18.if.end31_crit_edge
  %reg.3 = phi i8 [ %34, %do.end25 ], [ %reg.2, %if.end18.if.end31_crit_edge ]
  %Vcc = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 2
  %35 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %Vcc, align 4
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %do.end43 [
    i8 0, label %if.end31.sw.epilog_crit_edge
    i8 50, label %do.end35
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %dev36 = getelementptr i8, ptr %socket, i32 1528
  %38 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev36, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.29, i32 noundef %1) #7
  %40 = or i8 %reg.3, 16
  br label %sw.epilog

do.end43:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %conv32 = zext i8 %36 to i32
  %dev44 = getelementptr i8, ptr %socket, i32 1528
  %41 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev44, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, i32 noundef %conv32) #7
  br label %cleanup

sw.epilog:                                        ; preds = %do.end35, %if.end31.sw.epilog_crit_edge
  %reg.4 = phi i8 [ %40, %do.end35 ], [ %reg.3, %if.end31.sw.epilog_crit_edge ]
  %Vpp = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 3
  %43 = ptrtoint ptr %Vpp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %Vpp, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %44, label %do.end76 [
    i8 0, label %do.end52
    i8 50, label %do.end58
    i8 120, label %do.end67
  ]

do.end52:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %dev53 = getelementptr i8, ptr %socket, i32 1528
  %46 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev53, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.35, i32 noundef %1) #7
  br label %sw.epilog81

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %dev59 = getelementptr i8, ptr %socket, i32 1528
  %48 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev60, ptr noundef nonnull @.str.38, i32 noundef %1) #7
  %50 = or i8 %reg.4, 5
  br label %sw.epilog81

do.end67:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %dev68 = getelementptr i8, ptr %socket, i32 1528
  %51 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev68, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev69, ptr noundef nonnull @.str.41) #7
  %53 = or i8 %reg.4, 10
  br label %sw.epilog81

do.end76:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %dev77 = getelementptr i8, ptr %socket, i32 1528
  %54 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev77, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %Vcc, align 4
  %conv80 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.24, i32 noundef %conv80) #7
  br label %cleanup

sw.epilog81:                                      ; preds = %do.end67, %do.end58, %do.end52
  %reg.5 = phi i8 [ %53, %do.end67 ], [ %50, %do.end58 ], [ %reg.4, %do.end52 ]
  %call2.i182 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %58 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i186 = or i8 %21, 2
  %conv12.i187 = and i32 %59, 65535
  %add13.i188 = or i32 %conv12.i187, -18874368
  %60 = inttoptr i32 %add13.i188 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %conv11.i186) #4, !srcloc !110
  %add18.i = add nuw nsw i32 %conv12.i187, -18874367
  %61 = inttoptr i32 %add18.i to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i182) #4
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.5, i8 %62)
  %cmp.not = icmp eq i8 %reg.5, %62
  br i1 %cmp.not, label %sw.epilog81.if.end86_crit_edge, label %if.then85

sw.epilog81.if.end86_crit_edge:                   ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then85:                                        ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i189 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %63 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv12.i194 = and i32 %64, 65535
  %add13.i195 = or i32 %conv12.i194, -18874368
  %65 = inttoptr i32 %add13.i195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %conv11.i186) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %add21.i196 = add nuw nsw i32 %conv12.i194, -18874367
  %66 = inttoptr i32 %add21.i196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %reg.5) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i189) #4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %sw.epilog81.if.end86_crit_edge
  %csc_mask = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 1
  %67 = ptrtoint ptr %csc_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %csc_mask, align 4
  %69 = trunc i32 %68 to i8
  %70 = lshr i8 %69, 4
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state, align 4
  %and95 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %73 = and i8 %70, 8
  %and99 = lshr i32 %68, 10
  %74 = trunc i32 %and99 to i8
  %75 = and i8 %74, 1
  %76 = or i8 %75, %73
  %reg.9 = select i1 %tobool96.not, i8 %70, i8 %76
  %call2.i197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %77 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv11.i201 = or i8 %21, 5
  %conv12.i202 = and i32 %78, 65535
  %add13.i203 = or i32 %conv12.i202, -18874368
  %79 = inttoptr i32 %add13.i203 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv11.i201) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %add21.i204 = add nuw nsw i32 %conv12.i202, -18874367
  %80 = inttoptr i32 %add21.i204 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %reg.9) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i197) #4
  %call2.i205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %81 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i209 = or i8 %21, 4
  %conv12.i210 = and i32 %82, 65535
  %add13.i211 = or i32 %conv12.i210, -18874368
  %83 = inttoptr i32 %add13.i211 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %conv11.i209) #4, !srcloc !110
  %add18.i212 = add nuw nsw i32 %conv12.i210, -18874367
  %84 = inttoptr i32 %add18.i212 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i205) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end76, %do.end43
  %retval.0 = phi i32 [ -22, %do.end43 ], [ -22, %do.end76 ], [ 0, %if.end86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_set_io_map(ptr nocapture noundef readonly %socket, ptr nocapture noundef readonly %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %socket, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %io, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp3 = icmp ugt i32 %5, 65535
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %stop = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 4
  %6 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp5 = icmp ugt i32 %7, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp10 = icmp ult i32 %7, %5
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp10
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i = trunc i32 %1 to i16
  %8 = shl i16 %socket.tr.i, 6
  %io_base.i = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %1, i32 2
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %11 = trunc i16 %8 to i8
  %conv11.i = or i8 %11, 6
  %conv12.i = and i32 %10, 65535
  %add13.i = or i32 %conv12.i, -18874368
  %12 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv11.i) #4, !srcloc !110
  %add18.i = add nuw nsw i32 %conv12.i, -18874367
  %13 = inttoptr i32 %add18.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #4
  %conv14 = zext i8 %14 to i32
  %shl = shl i32 64, %conv
  %and = and i32 %shl, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %conv19 = trunc i32 %shl to i8
  %call2.i86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i87 = trunc i32 %1 to i8
  %15 = shl i8 %socket.tr.i87, 6
  %conv6.i88 = or i8 %15, 6
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %conv12.i90 = and i32 %17, 65535
  %add13.i91 = or i32 %conv12.i90, -18874368
  %18 = inttoptr i32 %add13.i91 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv6.i88) #4, !srcloc !110
  %add18.i92 = add nuw nsw i32 %conv12.i90, -18874367
  %19 = inttoptr i32 %add18.i92 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %neg.i = xor i8 %conv19, -1
  %and24.i = and i8 %20, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv6.i88) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %and24.i) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i86) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %shl22 = shl nuw nsw i32 %conv, 2
  %21 = trunc i32 %shl22 to i16
  %22 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start, align 4
  %call2.i93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %conv24 = add i16 %8, %21
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %26 = trunc i16 %conv24 to i8
  %conv11.i97 = add i8 %26, 8
  %conv12.i98 = and i32 %25, 65535
  %add13.i99 = or i32 %conv12.i98, -18874368
  %27 = inttoptr i32 %add13.i99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv11.i97) #4, !srcloc !110
  %conv17.i = trunc i32 %23 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %add24.i = add nuw nsw i32 %conv12.i98, -18874367
  %28 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv17.i) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %conv29.i = or i8 %conv11.i97, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv29.i) #4, !srcloc !110
  %29 = lshr i32 %23, 8
  %conv35.i = trunc i32 %29 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv35.i) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i93) #4
  %30 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stop, align 4
  %call2.i100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %conv11.i104 = add i8 %26, 10
  %conv12.i105 = and i32 %33, 65535
  %add13.i106 = or i32 %conv12.i105, -18874368
  %34 = inttoptr i32 %add13.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv11.i104) #4, !srcloc !110
  %conv17.i107 = trunc i32 %31 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %add24.i108 = add nuw nsw i32 %conv12.i105, -18874367
  %35 = inttoptr i32 %add24.i108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv17.i107) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %conv29.i109 = or i8 %conv11.i104, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv29.i109) #4, !srcloc !110
  %36 = lshr i32 %31, 8
  %conv35.i110 = trunc i32 %36 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv35.i110) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i100) #4
  %call2.i111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %conv11.i115 = or i8 %11, 7
  %conv12.i116 = and i32 %38, 65535
  %add13.i117 = or i32 %conv12.i116, -18874368
  %39 = inttoptr i32 %add13.i117 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv11.i115) #4, !srcloc !110
  %add18.i118 = add nuw nsw i32 %conv12.i116, -18874367
  %40 = inttoptr i32 %add18.i118 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i111) #4
  %shl38 = shl i32 15, %shl22
  %42 = trunc i32 %shl38 to i8
  %43 = xor i8 %42, -1
  %conv40 = and i8 %41, %43
  %flags = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 1
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags, align 1
  %46 = and i8 %45, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool43.not = icmp eq i8 %46, 0
  %shl47 = shl nuw i32 1, %shl22
  %47 = trunc i32 %shl47 to i8
  %conv49 = select i1 %tobool43.not, i8 0, i8 %47
  %ioctl.0 = or i8 %conv49, %conv40
  %call2.i119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %48 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv12.i124 = and i32 %49, 65535
  %add13.i125 = or i32 %conv12.i124, -18874368
  %50 = inttoptr i32 %add13.i125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv11.i115) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %add21.i = add nuw nsw i32 %conv12.i124, -18874367
  %51 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %ioctl.0) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i119) #4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags, align 1
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool54.not = icmp eq i8 %54, 0
  br i1 %tobool54.not, label %if.end20.cleanup_crit_edge, label %if.then55

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %conv58 = trunc i32 %shl to i8
  %call2.i126 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %55 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %conv12.i131 = and i32 %56, 65535
  %add13.i132 = or i32 %conv12.i131, -18874368
  %57 = inttoptr i32 %add13.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %conv11.i) #4, !srcloc !110
  %add18.i133 = add nuw nsw i32 %conv12.i131, -18874367
  %58 = inttoptr i32 %add18.i133 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  %or48.i = or i8 %59, %conv58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %conv11.i) #4, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %or48.i) #4, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i126) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i82092aa_set_mem_map(ptr nocapture noundef readonly %socket, ptr nocapture noundef readonly %mem) #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %socket, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #4
  %2 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %region, align 4, !annotation !108
  %3 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !108
  %dev = getelementptr i8, ptr %socket, i32 1528
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %res = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 5
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res, align 4
  call void @pcibios_resource_to_bus(ptr noundef %8, ptr noundef nonnull %region, ptr noundef %10) #4
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mem, align 4
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp = icmp ugt i8 %12, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %card_start = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 4
  %13 = ptrtoint ptr %card_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %card_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %14)
  %cmp3 = icmp ugt i32 %14, 67108863
  br i1 %cmp3, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %region, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5 = icmp ugt i32 %16, %18
  br i1 %cmp5, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false7

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %speed = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 2
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %20)
  %cmp9 = icmp ugt i16 %20, 1000
  br i1 %cmp9, label %lor.lhs.false7.do.end_crit_edge, label %if.end19

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %region, align 4
  %conv15 = zext i32 %24 to i64
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %conv17 = zext i32 %26 to i64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.46, i32 noundef %1, i64 noundef %conv15, i64 noundef %conv17, i32 noundef %14) #7
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false7
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i = trunc i32 %1 to i16
  %27 = shl i16 %socket.tr.i, 6
  %io_base.i = getelementptr [4 x %struct.socket_info], ptr @sockets, i32 0, i32 %1, i32 2
  %28 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  call void @arm_heavy_mb() #4
  %30 = trunc i16 %27 to i8
  %conv11.i = or i8 %30, 6
  %conv12.i = and i32 %29, 65535
  %add13.i = or i32 %conv12.i, -18874368
  %31 = inttoptr i32 %add13.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv11.i) #4, !srcloc !110
  %add18.i = add nuw nsw i32 %conv12.i, -18874367
  %32 = inttoptr i32 %add18.i to ptr
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #4
  %conv20 = zext i8 %33 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19.if.end26_crit_edge, label %if.then22

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %conv25 = trunc i32 %shl to i8
  %call2.i147 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %socket.tr.i148 = trunc i32 %1 to i8
  %34 = shl i8 %socket.tr.i148, 6
  %conv6.i149 = or i8 %34, 6
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  call void @arm_heavy_mb() #4
  %conv12.i151 = and i32 %36, 65535
  %add13.i152 = or i32 %conv12.i151, -18874368
  %37 = inttoptr i32 %add13.i152 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv6.i149) #4, !srcloc !110
  %add18.i153 = add nuw nsw i32 %conv12.i151, -18874367
  %38 = inttoptr i32 %add18.i153 to ptr
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %neg.i = xor i8 %conv25, -1
  %and24.i = and i8 %39, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv6.i149) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %and24.i) #4, !srcloc !110
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i147) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19.if.end26_crit_edge
  %conv.tr = zext i8 %12 to i16
  %40 = shl nuw nsw i16 %conv.tr, 3
  %conv29 = add nuw nsw i16 %40, 16
  %41 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %region, align 4
  %shr = lshr i32 %42, 12
  %43 = trunc i32 %shr to i16
  %conv32 = and i16 %43, 3840
  %flags = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 1
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags, align 1
  %46 = and i8 %45, 2
  %47 = zext i8 %46 to i16
  %48 = shl nuw i16 %47, 14
  %49 = or i16 %48, %conv32
  %50 = and i8 %45, 8
  %51 = zext i8 %50 to i16
  %52 = shl nuw nsw i16 %51, 11
  %53 = or i16 %49, %52
  %call2.i154 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %conv6.i156 = add nuw i16 %conv29, %27
  %54 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  call void @arm_heavy_mb() #4
  %conv11.i158 = trunc i16 %conv6.i156 to i8
  %conv12.i159 = and i32 %55, 65535
  %add13.i160 = or i32 %conv12.i159, -18874368
  %56 = inttoptr i32 %add13.i160 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv11.i158) #4, !srcloc !110
  %conv17.i = trunc i32 %shr to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  call void @arm_heavy_mb() #4
  %add24.i = add nuw nsw i32 %conv12.i159, -18874367
  %57 = inttoptr i32 %add24.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %conv17.i) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  call void @arm_heavy_mb() #4
  %conv29.i = or i8 %conv11.i158, 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv29.i) #4, !srcloc !110
  %58 = lshr exact i16 %53, 8
  %conv35.i = trunc i16 %58 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %conv35.i) #4, !srcloc !110
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i154) #4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %3, align 4
  %shr53 = lshr i32 %60, 12
  %61 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %speed, align 2
  %div.i191192 = udiv i16 %62, 120
  %div.i191.zext = zext i16 %div.i191192 to i32
  %conv55203 = lshr i32 %60, 20
  %63 = trunc i32 %conv55203 to i8
  %extract.t202 = and i8 %63, 15
  %64 = zext i32 %div.i191.zext to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %div.i191.zext, label %sw.default [
    i32 0, label %if.end26.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb62
  ]

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %extract.t200 = or i8 %extract.t202, 64
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %extract.t198 = or i8 %extract.t202, -128
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %extract.t196 = or i8 %extract.t202, -64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb62, %sw.bb, %if.end26.sw.epilog_crit_edge
  %i.2.off8 = phi i8 [ %extract.t196, %sw.default ], [ %extract.t198, %sw.bb62 ], [ %extract.t200, %sw.bb ], [ %extract.t202, %if.end26.sw.epilog_crit_edge ]
  %i.2.off0 = trunc i32 %shr53 to i8
  %call2.i161 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %add70 = or i16 %27, 2
  %conv6.i163 = add i16 %add70, %conv29
  %65 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %io_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  call void @arm_heavy_mb() #4
  %conv11.i165 = trunc i16 %conv6.i163 to i8
  %conv12.i166 = and i32 %66, 65535
  %add13.i167 = or i32 %conv12.i166, -18874368
  %67 = inttoptr i32 %add13.i167 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %conv11.i165) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  call void @arm_heavy_mb() #4
  %add24.i169 = add nuw nsw i32 %conv12.i166, -18874367
  %68 = inttoptr i32 %add24.i169 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %i.2.off0) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  call void @arm_heavy_mb() #4
  %conv29.i170 = or i8 %conv11.i165, 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %conv29.i170) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %i.2.off8) #4, !srcloc !110
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i161) #4
  %69 = ptrtoint ptr %card_start to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %card_start, align 4
  %71 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %region, align 4
  %sub = sub i32 %70, %72
  %shr74 = lshr i32 %sub, 12
  %73 = trunc i32 %shr74 to i16
  %conv76 = and i16 %73, 16128
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags, align 1
  %76 = and i8 %75, 16
  %77 = zext i8 %76 to i16
  %78 = shl nuw i16 %77, 11
  %79 = or i16 %78, %conv76
  %80 = and i8 %75, 32
  %81 = zext i8 %80 to i16
  %82 = shl nuw nsw i16 %81, 9
  %83 = or i16 %79, %82
  %call2.i172 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %narrow = or i16 %27, 20
  %conv6.i174 = add i16 %narrow, %40
  %84 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %io_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  call void @arm_heavy_mb() #4
  %conv11.i176 = trunc i16 %conv6.i174 to i8
  %conv12.i177 = and i32 %85, 65535
  %add13.i178 = or i32 %conv12.i177, -18874368
  %86 = inttoptr i32 %add13.i178 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %conv11.i176) #4, !srcloc !110
  %conv17.i179 = trunc i32 %shr74 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  call void @arm_heavy_mb() #4
  %add24.i180 = add nuw nsw i32 %conv12.i177, -18874367
  %87 = inttoptr i32 %add24.i180 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %conv17.i179) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  call void @arm_heavy_mb() #4
  %conv29.i181 = or i8 %conv11.i176, 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %conv29.i181) #4, !srcloc !110
  %88 = lshr exact i16 %83, 8
  %conv35.i182 = trunc i16 %88 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %conv35.i182) #4, !srcloc !110
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i172) #4
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %flags, align 1
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool101.not = icmp eq i8 %91, 0
  br i1 %tobool101.not, label %sw.epilog.cleanup_crit_edge, label %if.then102

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then102:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %conv105 = trunc i32 %shl to i8
  %call2.i183 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #4
  %92 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %io_base.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  call void @arm_heavy_mb() #4
  %conv12.i188 = and i32 %93, 65535
  %add13.i189 = or i32 %conv12.i188, -18874368
  %94 = inttoptr i32 %add13.i189 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %conv11.i) #4, !srcloc !110
  %add18.i190 = add nuw nsw i32 %conv12.i188, -18874367
  %95 = inttoptr i32 %add18.i190 to ptr
  %96 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  %or48.i = or i8 %96, %conv105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %conv11.i) #4, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %or48.i) #4, !srcloc !110
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i183) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then102 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__UNIQUE_ID_file236, !1, !"__UNIQUE_ID_file236", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/i82092.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_i82092__241_676_i82092aa_module_init6, !4, !"__initcall__kmod_i82092__241_676_i82092aa_module_init6", i1 false, i1 false}
!4 = !{!"../drivers/pcmcia/i82092.c", i32 676, i32 1}
!5 = !{ptr @__exitcall_i82092aa_module_exit, !6, !"__exitcall_i82092aa_module_exit", i1 false, i1 false}
!6 = !{!"../drivers/pcmcia/i82092.c", i32 677, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pcmcia/i82092.c", i32 666, i32 9}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pcmcia/i82092.c", i32 36, i32 11}
!11 = !{ptr @i82092aa_pci_driver, !12, !"i82092aa_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/pcmcia/i82092.c", i32 35, i32 26}
!13 = !{ptr @i82092aa_pci_ids, !14, !"i82092aa_pci_ids", i1 false, i1 false}
!14 = !{!"../drivers/pcmcia/i82092.c", i32 29, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pcmcia/i82092.c", i32 99, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @i82092aa_pci_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @i82092aa_pci_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pcmcia/i82092.c", i32 104, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @i82092aa_pci_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @i82092aa_pci_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pcmcia/i82092.c", i32 127, i32 4}
!30 = !{ptr @i82092aa_pci_probe.__UNIQUE_ID_ddebug238, !29, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pcmcia/i82092.c", i32 129, i32 4}
!33 = !{ptr @i82092aa_pci_probe.__UNIQUE_ID_ddebug239, !32, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pcmcia/i82092.c", i32 142, i32 2}
!36 = !{ptr @i82092aa_pci_probe.__UNIQUE_ID_ddebug240, !35, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pcmcia/i82092.c", i32 146, i32 3}
!39 = !{ptr @i82092aa_pci_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @i82092aa_pci_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @socket_count, !42, !"socket_count", i1 false, i1 false}
!42 = !{!"../drivers/pcmcia/i82092.c", i32 70, i32 12}
!43 = !{ptr @sockets, !44, !"sockets", i1 false, i1 false}
!44 = !{!"../drivers/pcmcia/i82092.c", i32 69, i32 27}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pcmcia/i82092.c", i32 185, i32 8}
!47 = !{ptr @port_lock, !46, !"port_lock", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pcmcia/i82092.c", i32 302, i32 4}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @i82092aa_interrupt._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @i82092aa_interrupt._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pcmcia/i82092.c", i32 325, i32 5}
!55 = !{ptr @i82092aa_interrupt._entry.20, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @i82092aa_interrupt._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @i82092aa_operations, !58, !"i82092aa_operations", i1 false, i1 false}
!58 = !{!"../drivers/pcmcia/i82092.c", i32 44, i32 33}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pcmcia/i82092.c", i32 473, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @i82092aa_set_socket._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @i82092aa_set_socket._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pcmcia/i82092.c", i32 477, i32 3}
!66 = !{ptr @i82092aa_set_socket._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @i82092aa_set_socket._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pcmcia/i82092.c", i32 485, i32 3}
!70 = !{ptr @i82092aa_set_socket._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @i82092aa_set_socket._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pcmcia/i82092.c", i32 491, i32 3}
!74 = !{ptr @i82092aa_set_socket._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @i82092aa_set_socket._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pcmcia/i82092.c", i32 499, i32 3}
!78 = !{ptr @i82092aa_set_socket._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @i82092aa_set_socket._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pcmcia/i82092.c", i32 503, i32 3}
!82 = !{ptr @i82092aa_set_socket._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @i82092aa_set_socket._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pcmcia/i82092.c", i32 508, i32 3}
!86 = !{ptr @i82092aa_set_socket._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @i82092aa_set_socket._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pcmcia/i82092.c", i32 512, i32 3}
!90 = !{ptr @i82092aa_set_socket._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @i82092aa_set_socket._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pcmcia/i82092.c", i32 607, i32 3}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @i82092aa_set_mem_map._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @i82092aa_set_mem_map._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"cycle_time", i1 false, i1 false}
!98 = !{!"../drivers/pcmcia/i82092.c", i32 278, i32 12}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2154456052}
!110 = !{i64 4993239}
!111 = !{i64 4993634}
!112 = !{i64 2154456438}
!113 = !{i64 2148705134, i64 2148705139, i64 2148705152, i64 2148705196, i64 2148705230, i64 2148705251}
!114 = !{i64 2154456995}
!115 = !{i64 2154457317}
!116 = !{i64 2154457989}
!117 = !{i64 2154458375}
!118 = !{i64 2154458580}
!119 = !{i64 2154458900}
!120 = !{i64 2154459572}
!121 = !{i64 2154459958}
!122 = !{i64 2154460163}
!123 = !{i64 2154460483}
!124 = !{i64 2154461155}
!125 = !{i64 2154461475}
!126 = !{i64 2154461795}
!127 = !{i64 2154462115}
